-- Laboratorio 12 - ejercicio4.hs
-- Programa que elimina los elementos indicados de una lista, usando funciones lambda.

module Ejercicio4 (ejercicio4) where

-- La función 'filter' mantiene solo los elementos que cumplan una condición.
-- En este caso, usamos una lambda para excluir los elementos que estén en la lista de eliminación.

eliminarElementos :: Eq a => [a] -> [a] -> [a]
eliminarElementos listaAEliminar listaOriginal =
  filter (\x -> not (x `elem` listaAEliminar)) listaOriginal

-- Ejemplo de uso:
-- > eliminarElementos ["amarillo", "café", "blanco"]
--                     ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]
-- Resultado esperado:
-- ["rojo","verde","azul","gris","negro"]

ejercicio4 :: IO ()
ejercicio4 = do
  let listaOriginal = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]
  let listaAEliminar = ["amarillo", "café", "blanco"]
  putStrLn "Lista original:"
  print listaOriginal
  putStrLn "\nElementos a eliminar:"
  print listaAEliminar
  putStrLn "\nLista resultante:"
  print (eliminarElementos listaAEliminar listaOriginal)

main :: IO ()
main = ejercicio4
