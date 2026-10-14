{-Función: cetes
Descripción: ingresas el valor inicial, el plazo
en Meses o Días y devuelve el monto final disponible
al concluir el plazo seleccionado.
Uso: cetes 100 (Días 28) = 100.4
-}



{-Función: mensajeCetes
Descripción: 
Uso: mensajeCetes 
-}



{-Función: negativos
Descripción: Cuenta los números negativos
de una lista
Uso: negativos [-1, 2, 4, 6, -4] = 2
-}

negativos :: [Int] -> Int
negativos list = length [list | x <- list, x < 0]