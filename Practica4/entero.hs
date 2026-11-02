import Auxiliares

{-Función 5: multi_Ent
Descripción: Toma dos enteros y regresa su producto.
Uso: multi_Ent (Neg(Suc(Suc(Suc(Suc Zero))))) (Suc(Suc Zero)) = Neg ( Suc ( Suc ( Suc ( Suc ( Suc ( Suc ( Suc ( Suc Zero))))))))
-}

multi_Ent :: Ent -> Ent -> Ent

-- Caso Base
multi_Ent Zero n = Zero
multi_Ent n Zero = Zero

-- Casos Recursivos
multi_Ent n (Suc m) = suma_ent n (multi_Ent n m)
multi_Ent (Suc n) (Neg m) = Neg (multi_Ent (Suc n) m)
multi_Ent (Neg n) (Neg m) = multi_Ent n m



