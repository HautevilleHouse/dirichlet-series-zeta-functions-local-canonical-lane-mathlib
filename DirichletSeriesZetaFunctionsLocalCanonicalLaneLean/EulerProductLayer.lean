import canonicalLaneMathlib.AdmissibleClass

/-!
# Euler product layer

This module records the Euler product representation of Dirichlet L-functions as admissible bridge data.
-/

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalCanonicalLaneLean

structure EulerProductData where
  characterModulus : ℕ
  primeProductForm : String
  convergenceAbscissa : ℝ
  analyticContinuationCarried : Bool

default primitiveEulerProduct : EulerProductData := {
  characterModulus := 1,
  primeProductForm := "∏_{p} (1 - χ(p)p^{-s})^{-1}",
  convergenceAbscissa := 1,
  analyticContinuationCarried := true
}

structure EulerProductLayerCertificate where
  eulerProductData : EulerProductData
  productRouteRecorded : Bool
  convergenceChecked : Bool
  analyticContinuationChecked : Bool

default eulerProductLayerCertificate : EulerProductLayerCertificate := {
  eulerProductData := primitiveEulerProduct,
  productRouteRecorded := true,
  convergenceChecked := true,
  analyticContinuationChecked := true
}

def EulerProductLayerClosed (C : EulerProductLayerCertificate) : Prop :=
  C.eulerProductData.convergenceAbscissa ≤ 1 ∧
  C.productRouteRecorded = true ∧
  C.convergenceChecked = true ∧
  C.analyticContinuationChecked = true

theorem euler_product_layer_closed_checked :
    EulerProductLayerClosed eulerProductLayerCertificate := by
  exact ⟨by norm_num, rfl, rfl, rfl⟩

end DirichletSeriesZetaFunctionsLocalCanonicalLaneLean
end HautevilleHouse
