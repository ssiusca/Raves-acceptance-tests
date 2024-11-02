Feature: US20 Creacion y Personalizacion de perfil

    Como usuario, quiero crear y personalizar mi perfil, ajustando mis preferencias musicales y seleccionando 
    generos favoritos, para tener una experiencia más adaptada a mí y reflejar mi identidad musical de manera 
    autentica.


Scenario Outline: Creacion del perfil
    Given el <usuario> se registra en la plataforma por primera vez
    When el <usuario> completa el <formulario de registro> con su <nombre>, <nombre de usuario>, <correo electronico>
    y <contrasena>
    Then el sistema guarda la información del <usuario> y crea su <perfil>.

Example: Datos de Entrada
    | usuario | formulario de registro | nombre          | nombre de usuario | correo electronico   |
    | joja    | "Registrate"           | Ainhoa Castillo | jojaa             | ainhoa.c.g@gmail.com |

    | contrasena  |
    | amoraves123 |

Example: Datos de Salida
    | perfil      |
    | "Mi Perfil" |


Scenario Outline: Seleccion de foto de perfil
    Given el <usuario> se encuentra en la seccion de su perfil
    When el <usuario> haga click sobre su <icono de editar>
    Then el <usuario> podra cambiar su <foto o username> 
    And el sistema guardara este <cambio>.


Example: Datos de Entrada
    | usuario | icono de editar | foto o usernamme |
    | jojaa   | "Editar"        | joja             |

Example: Datos de Salida
    | cambio      |
    | joja        |