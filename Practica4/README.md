# Practica 4

## Objetivo:
```text
Empezar a implemetar la recursión vista en clase con el profesor. Entender de mejor manera como utilizar
los tipos de datos para plantaer casos bases y entender que hay varias formas de planetar recursión como
la suma y resta de enteros que usan o no la función mayorEnt para enteros.
```

## Tiempo requerido:
``` text
Dos días, en sesiones de 3 a 4 horas.
```

## Ejercicio favorito:
``` text
El ejercicio 3, la función potenciaNat.
```

## Actividad 8

### ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos?
```text
Una requiere de una tercera función para funcionar y de la condicional if the/else, una utilza el Cero
como caso base y otra usa Zero, esto para evitar errores a la hora de trabajar en Haskell.
```

###  ¿Como se manejan todos casos en cada implementación?
``` text
La versión del repositorio tiene fallas al momento de usar resta_ent, el unico caso que finciona de
manera correcta es la de resta_ent (Suc n) (Suc) = resta_ente n m, un caso donde no funciona es
resta_ent Zero (Neg(Suc Zero)) = Suc (Suc Zero. Esto es un error porque tendria que devolver un
Suc Zero. La suma funciona bien por que solo llama al caso recursivo de la resta que está bien definido

En la versión del Drive la mayoria de los casos pero faltan los casos de Cero con Cero por ejemplo
sumaEnt Cero Cero y restaEnt Cero Cero marcan error.
```

### ¿Por qué se tiene implementada la operación mayorEnt en el archivo enteros.hs ?
``` text
Para determinar el signo del resultado en las operaciones de suma y resta.
```

### Si pudieras quedarte con una sola implementación. ¿Cuál sería? Justifica tu respuesta.
``` text
Con la versión del repositorio, pues solo utiliza dos funciones que se llaman la una a la otra para dar
el resultado final y no depende de una tercera función que hace aún más ineficiente el trabajo que de
por sí es ineficiente. Solo basta con arreglar los casos base y las funciones trabajan correctamente.
```

## La Chivita Recursiva:

``` text

La recursión en la canción Sal de Ahí Chivita Chivita se hace presente en el momento en el que tenemos un problema, en este caso sacar a la Chiva de un lugar. Decidimos llamar a una función para resolverlo pero está se vuelve a llamar una y otra vez hasta llegar a un caso conocido (caso base), en la cación se llama al Burro para poder sacar a la Chiva, como el Burro no puede se llama al Ratón para que saque al Burro y el Burro ahora si saque a la Chiva. 

Durante la canción se hacen varios llamados a diferentes animales para sacar al último animal llamado, hasta llegar a la persona que es capza de sacar al último animal llamado (el Pato), que ya afuera saca al animal que fue llamado antes que el (el Perro), así hasta conseguir sacar a la Chiva. En la recursión ocurre igual, partiendo de un caso base se llega a un caso recursivo que nos permite llamar a la función tantas veces sea necesario hasta llegar al caso base para resolver un problema.
```