-- Laboratorio 12 - ejercicio1.hs
-- Programa que ordena una lista de diccionarios según una key, usando lambda.

module Ejercicio1 (ejercicio1) where

import Data.List (sortBy)
import Data.Function (on)

-- Definimos una lista de diccionarios (representados como listas de pares clave-valor)
autos :: [[(String, String)]]
autos =
  [ [("brand", "Ford"), ("model", "Mustang"), ("year", "1964")]
  , [("brand", "Toyota"), ("model", "Corolla"), ("year", "2005")]
  , [("brand", "Chevrolet"), ("model", "Malibu"), ("year", "1999")]
  , [("brand", "Tesla"), ("model", "Model 3"), ("year", "2020")]
  ]

-- Función para obtener el valor de una key específica en un diccionario
obtenerValor :: String -> [(String, String)] -> String
obtenerValor key dict = case lookup key dict of
  Just valor -> valor
  Nothing    -> ""

-- Función que ordena la lista de diccionarios con respecto a una key dada
ordenarPorKey :: String -> [[(String, String)]] -> [[(String, String)]]
ordenarPorKey key = sortBy (\a b -> compare (obtenerValor key a) (obtenerValor key b))

-- Ejemplo de ejecución en GHCi:
-- > ordenarPorKey "model" autos
-- Resultado esperado:
-- [[("brand","Chevrolet"),("model","Malibu"),("year","1999")],
--  [("brand","Toyota"),("model","Corolla"),("year","2005")],
--  [("brand","Ford"),("model","Mustang"),("year","1964")],
--  [("brand","Tesla"),("model","Model 3"),("year","2020")]]
ejercicio1 :: IO ()
ejercicio1 = do
  putStrLn "Lista original:"
  print autos
  putStrLn "\nLista ordenada por 'model':"
  print (ordenarPorKey "model" autos)

main :: IO ()
main = ejercicio1
