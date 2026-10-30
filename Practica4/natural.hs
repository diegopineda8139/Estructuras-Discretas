import Auxiliares

{-Función: a_natural
Descrepción: Toma un entero (0, 1, 2,...)
y lo lleva a su estructura de dato Natural
Uso: a_natural 0 = Cero
-}

a_natural :: Int -> Natural

-- Caso Base
a_natural 0 = Cero

-- Caso Recursivo
a_natural n = S( a_natural (n - 1))

{-Función: a_entero
Descrepción: Toma un Natural y lo pasa a entero.
Uso: a_entero Cero = 0
-}

a_entero :: Natural -> Int

-- Caso Base
a_entero Cero = 0

-- Caso Recursivo
a_entero (S n) = 1 + a_entero n

{-Función: potenciaNat
Descrepción: Eleva un número natural a
la potencia del segundo.
Uso: potenciaNat (Cero, Cero) = 1
-}

potenciaNat :: Natural -> Natural -> Natural

-- Casos Bases
potenciaNat m Cero = S Cero
potenciaNat Cero n = Cero

-- Casos Recursivos
potenciaNat m (S n) = multiplica_nat m (potenciaNat m (n))
