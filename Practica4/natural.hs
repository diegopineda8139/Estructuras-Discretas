import Auxiliares

{-Función 1: a_natural
Descripción: Toma un entero (0, 1, 2,...)
y lo lleva a su estructura de dato Natural
Uso: a_natural 0 = Cero
-}

a_natural :: Int -> Natural

-- Caso Base
a_natural 0 = Cero

-- Caso Recursivo
a_natural n = S( a_natural (n - 1))

{-Función 2: a_entero
Descripción: Toma un Natural y lo pasa a entero.
Uso: a_entero Cero = 0
-}

a_entero :: Natural -> Int

-- Caso Base
a_entero Cero = 0

-- Caso Recursivo
a_entero (S n) = 1 + a_entero n

{-Función 3: potenciaNat
Descripción: Eleva un número natural a
la potencia del segundo.
Uso: potenciaNat Cero Cero = 1
-}

potenciaNat :: Natural -> Natural -> Natural

-- Casos Bases
potenciaNat m Cero = S Cero
potenciaNat Cero n = Cero

-- Casos Recursivos
potenciaNat m (S n) = multiplica_nat m (potenciaNat m (n))

{-Función 4: facNat
Descripción: Devuelve el factorial de
un natural dado.
Uso: facNat (S(S(S Cero))) = S ( S ( S ( S ( S ( S Cero )))))
-}

facNat :: Natural -> Natural

-- Caso Base
facNat Cero = S Cero

-- Caso Recursivo
facNat (S n) = multiplica_nat (S n) (facNat n) 
