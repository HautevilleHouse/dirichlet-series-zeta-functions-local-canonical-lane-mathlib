import canonicalLaneMathlib.AdmissibleClass

/-!
# Final Theorem Closure for Dirichlet Series Zeta Functions Local
-/

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def ConstrainedDirichletLocalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dirichlet_local_endgame (A : AdmissibleClass) :
    ConstrainedDirichletLocalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirichletSeriesZetaFunctionsLocalCanonicalLaneLean
end HautevilleHouse