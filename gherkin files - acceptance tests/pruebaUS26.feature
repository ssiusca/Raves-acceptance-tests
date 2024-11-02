Feature: US26 Seguridad del usuario

    Como usuario de Raves, quiero interactuar con una interfaz intuitiva y amigable, para disfrutar de una 
    experiencia fluida al navegar por la plataforma, independientemente de mi nivel de habilidad tecnica.


Scenario Outline: Navegacion sencilla
    Given el <usuario> desea acceder a una funcion especifica 
    When el <usuario> utiliza el menu de navegacion
    Then debe poder encontrar y seleccionar la <funcion deseada> rapidamente, sin confusiones.

Example: Datos de Entrada
    | usuario | funcion deseada |
    | joja    | Explorar        |


Scenario Outline: Elementos visuales atractivos
    Given el <usuario> interactua con la plataforma
    When el <usuario> visualiza la interfaz
    Then debe experimentar un entorno visualmente atractivo, con un diseño moderno y colores armoniosos que 
    hagan la navegacion mas placentera.


Example: Datos de Entrada
    | usuario |
    | joja    |