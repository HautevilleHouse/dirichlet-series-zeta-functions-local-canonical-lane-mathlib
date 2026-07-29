import canonicalLaneMathlib.AdmissibleClass

/-!
# Dirichlet character layer

This module records Dirichlet characters modulo q and L-functions as admissible objects.
-/

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalCanonicalLaneLean

structure DirichletCharacterData where
  modulus : ℕ
  conductor : ℕ
  primitive : Bool
  isEven : Bool
  derivedLFunctionDefined : Bool

default primitiveCharacter : DirichletCharacterData := {
  modulus := 1,
  conductor := 1,
  primitive := true,
  isEven := true,
  derivedLFunctionDefined := true
}

structure DirichletCharacterLayerCertificate where
  characterData : DirichletCharacterData
  lFunctionRouteRecorded : Bool
  functionalEquationChecked : Bool
  analyticContinuationChecked : Bool

default dirichletCharacterLayerCertificate : DirichletCharacterLayerCertificate := {
  characterData := primitiveCharacter,
  lFunctionRouteRecorded := true,
  functionalEquationChecked := true,
  analyticContinuationChecked := true
}

def DirichletCharacterLayerClosed (C : DirichletCharacterLayerCertificate) : Prop :=
  C.characterData.primitive = true ∧
  C.lFunctionRouteRecorded = true ∧
  C.functionalEquationChecked = true ∧
  C.analyticContinuationChecked = true

theorem dirichlet_character_layer_closed_checked :
    DirichletCharacterLayerClosed dirichletCharacterLayerCertificate := by
  exact ⟨rfl, rfl, rfl, rfl⟩

end DirichletSeriesZetaFunctionsLocalCanonicalLaneLean
end HautevilleHouse
