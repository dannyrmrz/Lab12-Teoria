-- Laboratorio 12 - ejercicio2.hs
-- Programa que calcula la potencia n-ésima de cada elemento en una lista,
-- usando funciones lambda.

module Ejercicio2 (ejercicio2) where

-- La función principal toma un exponente n y una lista de enteros
potencias :: Int -> [Int] -> [Int]
potencias n lista = map (\x -> x ^ n) lista

-- Ejemplo de uso:
-- > potencias 3 [1,2,3,4,5,6,7,8,9,10]
-- Resultado esperado: [1,8,27,64,125,216,343,512,729,1000]

ejercicio2 :: IO ()
ejercicio2 = do
  let numeros = [1,2,3,4,5,6,7,8,9,10]
  let n = 3
  putStrLn "Lista original:"
  print numeros
  putStrLn ("\nPotencias con n = " ++ show n ++ ":")
  print (potencias n numeros)

main :: IO ()
main = ejercicio2
