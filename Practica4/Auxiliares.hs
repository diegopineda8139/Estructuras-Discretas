module Auxiliares (Natural(..), suma_nat, multiplica_nat) where

data Natural = Cero | S Natural deriving (Eq, Show)

{-
 Función: suma_nat
 Descripción: Calcula la suma de dos naturales
 Uso 1: suma_nat Cero (Suc Cero) = Suc Cero
 Uso: suma_nat (Suc(Suc(Suc(Cero)))) (Suc(Suc(Suc(Suc(Cero))))) = Suc (Suc (Suc (Suc (Suc (Suc (Suc Cero))))))
-}

suma_nat :: Natural -> Natural -> Natural
suma_nat Cero n = n
suma_nat (S m) n = suma_nat m (S n)


{-
 Función: multiplica_nat
 Descripción: Calcula el producto de dos naturales
 Uso: multiplica_nat (Suc(Suc(Suc(Cero)))) (Suc(Suc(Suc(Suc(Cero))))) = Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc Cero)))))))))))
-}

multiplica_nat :: Natural -> Natural -> Natural
multiplica_nat Cero n = Cero
multiplica_nat (S m) n = suma_nat n (multiplica_nat n m)