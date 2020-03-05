/*
 * STRUMPACK -- STRUctured Matrices PACKage, Copyright (c) 2014, The
 * Regents of the University of California, through Lawrence Berkeley
 * National Laboratory (subject to receipt of any required approvals
 * from the U.S. Dept. of Energy).  All rights reserved.
 *
 * If you have questions about your rights to use or distribute this
 * software, please contact Berkeley Lab's Technology Transfer
 * Department at TTD@lbl.gov.
 *
 * NOTICE. This software is owned by the U.S. Department of Energy. As
 * such, the U.S. Government has been granted for itself and others
 * acting on its behalf a paid-up, nonexclusive, irrevocable,
 * worldwide license in the Software to reproduce, prepare derivative
 * works, and perform publicly and display publicly.  Beginning five
 * (5) years after the date permission to assert copyright is obtained
 * from the U.S. Department of Energy, and subject to any subsequent
 * five (5) year renewals, the U.S. Government is granted for itself
 * and others acting on its behalf a paid-up, nonexclusive,
 * irrevocable, worldwide license in the Software to reproduce,
 * prepare derivative works, distribute copies to the public, perform
 * publicly and display publicly, and to permit others to do so.
 *
 * Developers: Pieter Ghysels, Francois-Henry Rouet, Xiaoye S. Li.
 *             (Lawrence Berkeley National Lab, Computational Research
 *             Division).
 *
 */
#ifndef ELIMINATION_TREE_MPI_DIST_HPP
#define ELIMINATION_TREE_MPI_DIST_HPP

#include "EliminationTreeMPI.hpp"
#include "PropMapSparseMatrix.hpp"

namespace strumpack {

  // forward declarations
  template<typename scalar_t,typename integer_t> class MatrixReorderingMPI;
  template<typename scalar_t,typename integer_t> class FrontalMatrixMPI;
  template<typename scalar_t,typename integer_t> class CSRMatrixMPI;
  template<typename integer_t> class RedistSubTree;

  template<typename scalar_t,typename integer_t>
  class EliminationTreeMPIDist :
    public EliminationTreeMPI<scalar_t,integer_t> {
    using DenseM_t = DenseMatrix<scalar_t>;
    using DenseMW_t = DenseMatrixWrapper<scalar_t>;
    using F_t = FrontalMatrix<scalar_t,integer_t>;
    using FMPI_t = FrontalMatrixMPI<scalar_t,integer_t>;
    using DistM_t = DistributedMatrix<scalar_t>;
    using Opts_t = SPOptions<scalar_t>;
    using SepRange = std::pair<std::size_t,std::size_t>;
    using CSRMPI_t = CSRMatrixMPI<scalar_t,integer_t>;
    using Reord_t = MatrixReorderingMPI<scalar_t,integer_t>;

  public:
    EliminationTreeMPIDist
    (const Opts_t& opts, const CSRMPI_t& A, Reord_t& nd, const MPIComm& comm);

    void multifrontal_factorization
    (const CompressedSparseMatrix<scalar_t,integer_t>& A,
     const Opts_t& opts) override;

    void multifrontal_solve_dist
    (DenseM_t& x, const std::vector<integer_t>& dist) override;

    std::tuple<int,int,int> get_sparse_mapped_destination
    (const CSRMPI_t& A, std::size_t oi, std::size_t oj,
     std::size_t i, std::size_t j, bool duplicate_fronts) const;

    void separator_reordering(const Opts_t& opts, const CSRMPI_t& A);

  private:
    using EliminationTreeMPI<scalar_t,integer_t>::comm_;
    using EliminationTreeMPI<scalar_t,integer_t>::rank_;
    using EliminationTreeMPI<scalar_t,integer_t>::P_;
    using EliminationTreeMPI<scalar_t,integer_t>::local_range_;
    using EliminationTreeMPI<scalar_t,integer_t>::subtree_ranges_;

    Reord_t& nd_;
    PropMapSparseMatrix<scalar_t,integer_t> Aprop_;

    /**
     * vector with A.local_rows() elements, storing for each row
     * which process has the corresponding separator entry
     */
    std::vector<int> row_owner_;
    void get_all_pfronts();
    void find_row_owner(const CSRMPI_t& A);

    /**
     * vector of size _A.size(), storing for each row, to which front
     * it belongs.
     */
    std::vector<int> row_pfront_;
    void find_row_front(const CSRMPI_t& A);

    struct ParallelFront {
      ParallelFront() {}
      ParallelFront
      (std::size_t lo, std::size_t hi, int _P0, int _P, BLACSGrid* g)
        : sep_begin(lo), sep_end(hi), P0(_P0), P(_P),
          prows(g->nprows()), pcols(g->npcols()), grid(g) {}
      std::size_t dim_sep() const { return sep_end - sep_begin; }
      std::size_t sep_begin, sep_end;
      int P0, P, prows, pcols;
      const BLACSGrid* grid;
    };

    /** all parallel fronts */
    std::vector<ParallelFront> all_pfronts_;
    /** all parallel fronts on which this process is active. */
    std::vector<ParallelFront> local_pfronts_;

    void symbolic_factorization
    (std::vector<std::vector<integer_t>>& upd,
     std::vector<integer_t>& dist_upd,
     std::vector<float>& subtree_work, float& dsep_work);

    void symbolic_factorization_local
    (integer_t sep, std::vector<std::vector<integer_t>>& upd,
     std::vector<float>& subtree_work, int depth);

    std::unique_ptr<F_t> proportional_mapping
    (const Opts_t& opts, std::vector<std::vector<integer_t>>& upd,
     std::vector<integer_t>& dist_upd,
     std::vector<float>& subtree_work, std::vector<float>& dist_subtree_work,
     integer_t dsep, int P0, int P, int P0_sibling, int P_sibling,
     const MPIComm& fcomm, bool parent_compression, int level);

    std::unique_ptr<F_t> proportional_mapping_sub_graphs
    (const Opts_t& opts, RedistSubTree<integer_t>& tree,
     integer_t dsep, integer_t sep, int P0, int P, int P0_sibling,
     int P_sibling, const MPIComm& fcomm, bool parent_compression, int level);

    void communicate_distributed_separator
    (integer_t dsep, std::vector<integer_t>& dist_upd,
     integer_t& dsep_begin, integer_t& dsep_end,
     std::vector<integer_t>& dsep_upd, int P0, int P,
     int P0_sibling, int P_sibling, int owner, bool bcast_dim_sep);

    template<typename It> void merge_if_larger
    (const It u0, const It u1, std::vector<integer_t>& out, integer_t s) const;
  };

} // end namespace strumpack

#endif
