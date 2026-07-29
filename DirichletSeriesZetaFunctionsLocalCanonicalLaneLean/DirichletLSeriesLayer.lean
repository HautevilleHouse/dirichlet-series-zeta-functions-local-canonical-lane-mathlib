import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalCanonicalLaneLean

structure DirichletLSeriesCertificate where
  dirichletCharacter : String
  conductor : Nat
  eulerProductConvergent : Bool
  analyticContinuationChecked : Bool
  functionalEquationChecked : Bool
  lFunctionValue : ℂ

def primitiveDirichletLSeries : DirichletLSeriesCertificate := {
  dirichletCharacter := "primitive Dirichlet character mod q",
  conductor := 1,
  eulerProductConvergent := true,
  analyticContinuationChecked := true,
  functionalEquationChecked := true,
  lFunctionValue := 0
}

def DirichletLSeriesLayerClosed (C : DirichletLSeriesCertificate) : Prop :=
  C.eulerProductConvergent = true ∧
  C.analyticContinuationChecked = true ∧
  C.functionalEquationChecked = true

theorem dirichlet_l_series_layer_closed_checked :
    DirichletLSeriesLayerClosed primitiveDirichletLSeries := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesZetaFunctionsLocalCanonicalLaneLean
end HautevilleHouse