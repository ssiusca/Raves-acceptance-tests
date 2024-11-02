Feature: US07 Filtrado de canciones en listas de reproduccion

    Como usuario, poder filtrar canciones en mis recomendaciones y listas de reproduccion segun diferentes 
    criterios, como genero, estado de animo o popularidad, para que la musica reproducida se alinee con lo 
    que deseo en cada momento.


Scenario Outline: Filtrado por genero musical
    Given el <usuario> tiene acceso a una <lista de reproduccion>
    When el <usuario> hace click en el <icono de filtrado>
    And el <usuario> selecciona la opcion de <filtrar por genero musical>
    Then el sistema muestra una <lista de canciones> ordenada por genero musical.

Example: Datos de Entrada
    | usuario | lista de reproduccion | icono de filtrado | filtrar por genero musical |
    | joja    | joyitas español       | "Filtrar"         | "Por genero"               |

Example: Datos de Salida
    | lista de canciones |
    | "Canciones"        |


Scenario Outline: Filtrado por popularidad
    Given el <usuario> tiene acceso a una <lista de reproduccion>
    When el <usuario> hace click en el <icono de filtrado>
    And el <usuario> selecciona la opcion de <filtrar por popularidad>
    Then el sistema muestra una <lista de canciones> ordenada por popularidad.

Example: Datos de Entrada
    | usuario | lista de reproduccion | icono de filtrado | filtrar por popularidad |
    | joja    | joyitas español       | "Filtrar"         | "Por popularidad"       |

Example: Datos de Salida
    | lista de canciones |
    | "Canciones"        |


Scenario Outline: Filtrado por artista
    Given el <usuario> tiene acceso a una <lista de reproduccion>
    When el <usuario> hace click en el <icono de filtrado>
    And el <usuario> selecciona la opcion de <filtrar por artista>
    Then el sistema muestra una <lista de canciones> ordenada por artista.

Example: Datos de Entrada
    | usuario | lista de reproduccion | icono de filtrado | filtrar por artista |
    | joja    | joyitas español       | "Filtrar"         | "Por artista"       |

Example: Datos de Salida
    | lista de canciones |
    | "Canciones"        |


Scenario Outline: Orden sin filtros aplicados
    Given el <usuario> tiene acceso a una <lista de reproduccion>
    When el <usuario> hace click en el <icono de filtrado>
    And el <usuario> selecciona la opcion de <no filtrar>
    Then el sistema muestra una <lista de canciones> con su orden original, según la fecha en que fue agregada a 
    la playlist.

Example: Datos de Entrada
    | usuario | lista de reproduccion | icono de filtrado | no filtrar    |
    | joja    | joyitas español       | "Filtrar"         | "Sin filtros" |

Example: Datos de Salida
    | lista de canciones |
    | "Canciones"        |