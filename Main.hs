module Main where

import Ejercicio1
import Ejercicio2
import Ejercicio3
import Ejercicio4

main :: IO ()
main = do
  putStrLn "Selecciona el ejercicio a ejecutar:"
  putStrLn "1. Ejercicio 1 - Ordenar diccionarios"
  putStrLn "2. Ejercicio 2 - Potencias"
  putStrLn "3. Ejercicio 3 - Transpuesta"
  putStrLn "4. Ejercicio 4 - Eliminar elementos"
  putStrLn "0. Salir"
  putStr "Opción: "
  opcion <- getLine
  case opcion of
    "1" -> ejercicio1
    "2" -> ejercicio2
    "3" -> ejercicio3
    "4" -> ejercicio4
    "0" -> putStrLn "Saliendo..."
    _   -> putStrLn "Opción inválida."
