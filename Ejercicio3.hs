-- Laboratorio 12 - ejercicio3.hs
-- Programa que calcula la matriz transpuesta (X^T) usando funciones lambda.

module Ejercicio3 (ejercicio3) where

-- La función zipWith combina las listas de forma paralela.
-- map aplica una función lambda sobre cada fila.

transpuesta :: [[a]] -> [[a]]
transpuesta matriz = foldr (zipWith (\x acc -> acc ++ [x])) (replicate (length (head matriz)) []) matriz

-- Otra forma más elegante (y común) usando solo funciones de orden superior:
-- transpuesta matriz = foldr (zipWith (:)) (replicate (length (head matriz)) []) matriz

-- Ejemplo de uso:
-- > transpuesta [[1,2,3],[4,5,6],[7,8,9]]
-- Resultado esperado:
-- [[1,4,7],
--  [2,5,8],
--  [3,6,9]]

ejercicio3 :: IO ()
ejercicio3 = do
  let matriz = [[1,2,3],[4,5,6],[7,8,9]]
  putStrLn "Matriz original:"
  mapM_ print matriz
  putStrLn "\nMatriz transpuesta:"
  mapM_ print (transpuesta matriz)

main :: IO ()
main = ejercicio3
