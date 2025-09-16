import System.Posix (OpenFileFlags(trunc), raiseSignal)
funcion :: Int -> Int
funcion num = num+1
       
patMat :: Int->Int->Int
patMat y 1 = 4
patMat 1 y = 4
patMat x y = 5

juntarNombres ::String->String->String
juntarNombres nombre apellido = nombre ++ " " ++ apellido

posPrimerPar :: (Int, Int, Int) -> Int
posPrimerPar (a,b,c)
  | esPar a = 1
  | esPar b= 2
  | esPar c = 3
  | otherwise = 4

trc :: (Int, Int, Int) -> Int
trc (x, y, z) = z

esPar :: Int->Bool
esPar num = mod num 2 == 0

esImpar :: Int->Bool
esImpar num = not (esPar num)

calculoFactorial :: Integer->Integer
calculoFactorial 0 = 1 
calculoFactorial n = n * calculoFactorial(n-1)

sumatoria :: Int->Int->Int
sumatoria a b= -sumatoriaHastaNum(a) + sumatoriaHastaNum(b)

sumatoriaHastaNum:: Int->Int
sumatoriaHastaNum 0 = 0
sumatoriaHastaNum n= n + sumatoriaHastaNum(n-1)

fibonacci :: Int->Int
fibonacci 1 = 0
fibonacci 2 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

parteEntera :: Float->Int
parteEntera n   | n<1 = 0
                | otherwise = 1 + parteEntera (n-1)


cantidadDigitos :: Integer -> Integer
cantidadDigitos n
                    | n < 10 = 1
                    | otherwise = 1 + cantidadDigitos (div n 10)

iEnesimoDigito :: Int->Int->Int
iEnesimoDigito n | n==cantidadDigitos n = 