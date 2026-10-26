# Mis tipos de datos y listas por compresión

* **Asignatura:** Estructuras Discretas
* **Semestre:** 2027-1
* **Alumno:** Samuel Olivares Angeles
* **Tiempo estimado/requerido:** 3 o 4 horas


## Objetivo de la práctica
Creación de tipos de datos propios en Haskell utilizando la palabra reservada `data` e implementación de funciones mediante el uso de listas por comprensión, generadores y condiciones.

### 1. ¿Cuál es la diferencia entre `Num` e `Int`?
La diferencia principal radica en que **`Num` es una clase de tipo (interfaz)** e **`Int` es un tipo de dato concreto (instancia)**:

* **`Num`:** Es una clase de tipo (*typeclass*) que define el comportamiento general de los números en Haskell. Especifica qué operaciones deben poder realizarse (como `+`, `-`, `*`), pero no es un tipo de dato por sí mismo, sino una interfaz que agrupa a varios tipos numéricos.
* **`Int`:** Es un tipo de dato primitivo y concreto que representa números enteros. `Int` es una **instancia** de la clase `Num` (al igual que `Integer`, `Float` y `Double`), lo que significa que implementa las funciones que la clase `Num` define.

**Ejemplo en `ghci`:**

![Ejercicio1](Prac3_Eje1.png)

**Chivita Recursiva**
La canción de la chivita es básicamente una función recursiva porque todo empieza con un problema sencillo: sacar a la chiva de ahí. Como la chiva no se quiere salir, mandas a llamar al lobo, pero como el lobo tampoco hace caso, llamas al palo para que le pegue, luego al fuego, luego al agua y así te sigues.

En código esto es igual a cuando una función se llama a sí misma una y otra vez dejando tareas pendientes en espera (porque el lobo no puede sacar a la chiva hasta que el palo le pegue, y el palo no le pega hasta que llegue el fuego). Nuestro caso base sería cuando por fin alguien sí acepta hacer su parte sin necesitar que llamen a nadie más; si no existiera ese tope, la canción sería un bucle infinito. Una vez que el último sí hace caso, todo se resuelve en reversa de golpe hasta que por fin sacan a la chiva.


