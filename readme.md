# Sintaxis Gherkins

Negocio y developers comunicándose en el mismo lenguaje (supuestamente).

## Keywords

- `Feature`: Usado para especificar una descripción de la **Característica o función** a probar.
- `Scenario`: Usado para especificar la descripción del **escenario**.
- `Given`: Usado para especificar la **precondición** del escenario
- `When`: Usado para especificar la **acción** que hacemos.
- `Then`: Usado para especificar el **resultado** de la acción.
- `And`: Usado para especificar **información aficional** en las precondiciones y acciones.
- `But`: Usado para especificar información adicional en las precondiciones y acciones. Representan **declaraciones negativas**
- `Scenario Outline`: Usado para correr el mismo escenario múltiples veces con **diferentes combinaciones de valores (examples)**.
- `Background`: Usdo para especificar la acción que va a ser realizada **antes** de cada escenario.
- `Rule`: Usado para representar una **regla de negocio** que debe ser implementada.

## Symbols

- `"""`: Usado para pasar datos en formato **multi-linea**.
- `|`: Usado para pasar datos en formato **tabla**.
- `@`: Usado para **etiquetar** escenario y características.
- `#`: Usado para comentar

