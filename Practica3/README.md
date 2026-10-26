# Mis tipos de datos y listas por compresión

* **Asignatura:** Estructuras Discretas
* **Semestre:** 2027-1
* **Alumno:** Samuel Olivares Angeles
* **Tiempo estimado/requerido:** 


## Objetivo de la práctica
Creación de tipos de datos propios en Haskell utilizando la palabra reservada `data` e implementación de funciones mediante el uso de listas por comprensión, generadores y condiciones.

### 1. ¿Cuál es la diferencia entre `Num` e `Int`?
La diferencia principal radica en que **`Num` es una clase de tipo (interfaz)** e **`Int` es un tipo de dato concreto (instancia)**:

* **`Num`:** Es una clase de tipo (*typeclass*) que define el comportamiento general de los números en Haskell. Especifica qué operaciones deben poder realizarse (como `+`, `-`, `*`), pero no es un tipo de dato por sí mismo, sino una interfaz que agrupa a varios tipos numéricos.
* **`Int`:** Es un tipo de dato primitivo y concreto que representa números enteros. `Int` es una **instancia** de la clase `Num` (al igual que `Integer`, `Float` y `Double`), lo que significa que implementa las funciones que la clase `Num` define.

**Ejemplo en `ghci`:**

![Ejercicio1](Prac3_Eje1.png)

