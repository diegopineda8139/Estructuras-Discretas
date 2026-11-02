module Auxiliares (Natural(..), suma_nat, multiplica_nat, Ent(..), suma_ent, resta_ent) where

--Tipos de datos:

data Natural = Cero | S Natural deriving (Eq, Show)

data Ent = Zero | Suc Ent | Neg Ent deriving (Eq, Show)

--Funciones:

{-
 Función: suma_nat
 Descripción: Calcula la suma de dos naturales
 Uso 1: suma_nat Cero (Suc Cero) = Suc Cero
 Uso 2: suma_nat (S(S(S Cero))) (S(S(S(S Cero)))) = S (S (S (S (S (S (S Cero))))))
-}

suma_nat :: Natural -> Natural -> Natural

-- Caso Base
suma_nat Cero n = n

-- Caso Recursivo
suma_nat (S m) n = suma_nat m (S n)


{-
 Función: multiplica_nat
 Descripción: Calcula el producto de dos naturales
 Uso: multiplica_nat (S(S(S(Cero)))) (S(S(S(S(Cero))))) = S (S (S (S (S (S (S (S (S (S (S (S Cero)))))))))))
-}

multiplica_nat :: Natural -> Natural -> Natural

-- Caso Base
multiplica_nat Cero n = Cero

-- Caso Recursivo
multiplica_nat (S m) n = suma_nat n (multiplica_nat n m)

{-
 Función: suma_ent
 Descripción: Calcula la suma de dos enteros
 Uso 1: suma_ent (Suc(Suc(Suc Zero))) (Neg(Suc(Suc Zero))) = Suc Zero
 Uso 2: suma_ent (Neg(Suc (Suc ( Suc Zero)))) (Neg ( Suc ( Suc Zero))) = Neg (Suc (Suc (Suc (Suc (Suc Zero)))))
-}

suma_ent :: Ent -> Ent -> Ent

-- Casos Base
suma_ent Zero m = m
suma_ent n Zero = n

-- Casos Recursivos
suma_ent (Suc n) (Suc m) = Suc (suma_ent n (Suc m))
suma_ent (Neg n) (Neg m) = Neg (suma_ent n m)
suma_ent (Suc n) (Neg m) =  resta_ent (Suc n) m
suma_ent (Neg n) (Suc m) = resta_ent (Suc m) n


{-
 Función: resta_ent
 Descripción: Calcula la resta de dos enteros.
-}

resta_ent :: Ent -> Ent -> Ent

-- Casos Base
resta_ent n Zero = n
resta_ent Zero (Suc m) = Neg (Suc m)
resta_ent Zero (Neg m) = Suc m

-- Casos Recursivos
resta_ent (Suc n) (Suc m) = resta_ent n m
resta_ent (Neg n) (Neg m) = resta_ent m n
resta_ent n (Neg m) = suma_ent n m
resta_ent (Neg n) (Suc m) = Neg (Suc (suma_ent n m))
