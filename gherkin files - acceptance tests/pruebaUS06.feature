Feature: US06 Algoritmo de recomendacion de canciones

    Como usuario, quiero recibir recomendaciones personalizadas de canciones basadas en mis preferencias y hábitos 
    de escucha, para poder descubrir nueva música que se alinee con mis gustos.


Scenario Outline: Recomendaciones en la pantalla principal
    Given el <usuario> se ha registrado en Raves
    And el <usuario> ha escuchado variedad de canciones
    When el <usuario> ingrese a la aplicacion
    Then el algoritmo debe generar una <lista de canciones> sugeridas basadas en sus preferencias
    And estas se deben mostrar al usuario en la <pantalla principal>.

Example: Datos de Entrada
    | usuario |
    | joja    |

Example: Datos de Salida
    | lista de canciones | pantalla principal |
    | "Canciones"        | "Para Ti"          |


Scenario Outline: Recomendaciones de canciones populares entre amigos
    Given el <usuario> tiene un sistema de amigos activo en la plataforma
    When el <usuario> ingrese a la <seccion de explorar>
    Then el algoritmo debe mostrar una <lista de canciones> que sus amigos han escuchado y calificado positivamente.

Example: Datos de Entrada
    | usuario | seccion de explorar |
    | joja    | "Explorar"          |

Example: Datos de Salida
    | lista de canciones    |
    | "Tus amigos escuchan" |


Scenario Outline: Recomendaciones de canciones populares entre amigos
    Given el <usuario> se encuentra en la pantalla principal de Raves
    When el <usuario> ingrese a la <seccion de explorar>
    Then el algoritmo debe mostrar una <lista de canciones> emergentes que se alineen con sus preferencias.


Example: Datos de Entrada
    | usuario | seccion de explorar |
    | joja    | "Explorar"          |

Example: Datos de Salida
    | lista de canciones    |
    | "Emergentes" |