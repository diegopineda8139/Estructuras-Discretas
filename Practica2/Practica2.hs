--Actvidades de la Practica 2.

{-
 Función: reconversion
 Descirpción: Recibe un parámetro numércio y realiza
 una reconversión monetaria quitándole tres ceros al valor ingresado.
 Uso: reconversión 1000 = 1
-}

reconversion :: Double -> Double 
reconversion x = x / 1000


{-
 Función: cashback
 Descirpción: Recibe un monto (parametro numércio) y realiza
 una devolución del 10% en puntos a la tarjeta de credito.
 Uso: cashback 2545 = 254.5
-}

cashback :: Float -> Float
cashback x = x / 10


{-
 Función: cashbackMonto
 Descirpción: Recibe un monto de puntos de la tarjeta de credito
 (parametro numércio) y muestra el valor de los puntos en dinero real.
 Cada punto equivale a $0.10.
 Uso: cashbackMonto 254.5 = 25.45
-}

cashbackMonto :: Float -> Float
cashbackMonto x = x * 0.10