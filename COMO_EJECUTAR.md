Video de ejecución del programa: 
https://drive.google.com/file/d/1-wXAXOgOF29-6ugOyz3okt3uACxFp3dL/view?usp=sharing

# Cómo ejecutar el programa

## Opción 1: Compilar y ejecutar (recomendado)

Si tienes GHC instalado, puedes compilar y ejecutar el programa así:

```powershell
# Compilar el programa
ghc Main.hs

# Ejecutar el programa compilado
.\Main.exe
```

## Opción 2: Ejecutar directamente sin compilar

Si tienes `runhaskell` o `runghc` instalado:

```powershell
runhaskell Main.hs
```

o

```powershell
runghc Main.hs
```

## Opción 3: Usar GHCi (modo interactivo)

Para probar funciones individuales:

```powershell
# Abrir GHCi
ghci

# Dentro de GHCi, cargar el módulo principal
:load Main.hs

# O cargar un ejercicio específico
:load Ejercicio1.hs

# Ejecutar funciones
ejercicio1
```

## Opción 4: Ejecutar ejercicios individuales

También puedes ejecutar cada ejercicio por separado:

```powershell
runhaskell Ejercicio1.hs
runhaskell Ejercicio2.hs
runhaskell Ejercicio3.hs
runhaskell Ejercicio4.hs
```

## Instalación de Haskell (si no lo tienes)

1. **Windows**: Descarga e instala [GHCup](https://www.haskell.org/ghcup/) o [Haskell Platform](https://www.haskell.org/platform/)
2. Asegúrate de agregar Haskell al PATH del sistema
3. Reinicia tu terminal después de la instalación

## Notas

- El programa `Main.hs` es un menú interactivo que te permite seleccionar qué ejercicio ejecutar
- Cada ejercicio también tiene su propia función `main` para ejecutarlo individualmente
- Los archivos están configurados como módulos, por lo que deben compilarse juntos cuando uses `Main.hs`

