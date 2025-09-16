import System.OsPath (OsString)
funcion :: Int -> Int
funcion num = num+1
       
patMat :: Int->Int->Int
patMat y 1 = 4
patMat 1 y = 4
patMat x y = 5

juntarNombres ::String->String->String
juntarNombres nombre apellido = nombre ++ " " ++ apellido