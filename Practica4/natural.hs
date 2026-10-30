data Natural = Cero | S Natural deriving (Eq, Show)

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