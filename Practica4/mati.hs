data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{-Función: mayorIgual
Descripción: Recibe dos Matrioskas 
y te devuelve la Matrioska más grande
o igual.
Uso 1: mayorIgual Mati Mati = True
Uso 2: mayorIgual mayorIgual (Cont(Cont Mati))
(Cont(Cont(Cont Mati))) = False
-}

mayorIgual :: Matrioska -> Matrioska -> Bool

-- Caso Base
mayorIgual Mati Mati = True
mayorIgual Mati (Cont m1) = False
mayorIgual (Cont m2) Mati = True

-- Caso Recursivo
mayorIgual (Cont m1) (Cont m2) = mayorIgual m1 m2