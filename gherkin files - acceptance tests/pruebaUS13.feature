Feature: US13 Sistema de amistades

    Como usuario, quiero poder agregar y gestionar amigos dentro de la plataforma para poder compartir musica, 
    recomendaciones y experiencias musicales de manera mas personalizada y social.


Scenario Outline: Enviar una solicitud de amistad
    Given el <usuario> se encuentra en el perfil de otro usuario
    When el <usuario> seleccione la <opcion de agregar como amigo>
    Then se envia una <solicitud de amistad> al <usuario seleccionado>
    And se muestra una <confirmacion> indicando que la solicitud ha sido enviada.

Example: Datos de Entrada
    | usuario | solicitud de amistad                             | opcion de agregar como amigo |
    | joja    | "joja te ha enviado una solicitud de amistad..." | "BeFriend"                   |

    | usuario seleccionado |
    | chinita              |

Example: Datos de Salida
    | confirmacion |
    | "Enviado"    |


Scenario Outline: Visualizacion de lista de amigos
    Given el <usuario> se encuentra en su propio perfil
    When el <usuario> hace click en el enlace de su <cantidad de friends>
    Then el sistema muestra una <lista de todos los amigos> del <usuario>.

Example: Datos de Entrada
    | usuario | cantidad de friends |
    | joja    | 25 friends          |

    | solicitud de amistad |
    | "joja te ha enviado una solicitud de amistad..." |

Example: Datos de Salida
    | lista de todos los amigos |
    | casiú, binda p, anto, ... |