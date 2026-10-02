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


{-
 Función: minutosHoras
 Descirpción: Recibe un valor de tiempo en minutos
 y devuelve cuanto es en horas.
 Uso: minutosHoras 60 = 1 hora y 0 minutos
-}

minutosHoras :: Int -> String
minutosHoras x =
  (if x `div` 60 == 1
  then show (x `div` 60) ++ " hora y "
  else show (x `div` 60) ++ " horas y ")
  ++
  (if x `mod` 60 == 1
  then show (x `mod` 60) ++ " minuto "
  else show (x `mod` 60) ++ " minutos ")


{-
 Función: esEstafa
 Descirpción: Detectar si un comerciante está siendo
 estafado al reicibir un billite de alta denominación,
 dar el cambio correspondiente pero luego recibir el pago
 exacto de la compra, devolver el primer billete pero no recibir
 el cambio que este dio al principio. Si es estafa regresa un valor
 booleano, True si es estafa, False si no.
 Uso: esEstafa 100 200 100 0 = True 
-}

esEstafa :: Float -> Float -> Float -> Float -> Bool
esEstafa costo billeteGrande billeteExacto cambio =
  if billeteGrande > costo &&
  billeteExacto == costo &&
  cambio == billeteGrande - billeteExacto
  then False
  else True


{-
 Función: esDescendente
 Descirpción: Recibe cuatro parámetros de tipo numérico x, y, z Y w.
 La función debe devolver una valor de tipo booleano de acuerdo
 a los siguientes casos: True, si fueron ingresados de manera descendente
 y False, si no.
 Uso: esDescendente 4 3 2 1 = True
-}

esDescendente :: Float -> Float -> Float -> Float -> Bool
esDescendente x y z w =
  if x > y && y > z && z > w
  then True
  else False


{-
 Función: imc
 Descirpción: La función imc debe recibir dos parámetros,
 el primero de ellos los kg, el segundo los centimetros y
 devolver tu imc de acuerdo la interpretación según la OMS:
 bajo, normal, sobrepeso, obesidad.
 Uso: imc 53.5 161 = normal
-}
