Feature: US08 Algoritmo de descubrimiento de artistas

    Como usuario, quiero que el algoritmo de descubrimiento de artistas me sugiera nuevos talentos y artistas que
    no he explorado a fondo, para que pueda ampliar mis horizontes musicales y descubrir música que me encante.


Scenario Outline: Descubrimiento de artistas emergentes
    Given el <usuario> se encuentra en la seccion de explorar
    When el <usuario> seleccione la <opcion de artistas>
    Then el algoritmo presenta una <lista de artistas emergentes> en su area o en generos que le gustan
    And cada sugerencia incluye un enlace al <perfil del artista>.

Example: Datos de Entrada
    | usuario | opcion de artistas |
    | joja    | "Artistas"         |

Example: Datos de Salida
    | lista de artistas emergentes | perfil del artista |
    | "Emergentes"                 | Perfil de EVER     |


Scenario Outline: Sugerencias personalizadas de artistas
    Given el <usuario> se encuentra en la seccion de explorar
    When el <usuario> seleccione la <opcion de artistas>
    Then el algoritmo sugiere al <usuario> una <lista de diferentes artistas> que tengan un estilo musical similar 
    o que estén relacionados con los artistas que ya sigue
    And cada sugerencia incluye un enlace al <perfil del artista>.

Example: Datos de Entrada
    | usuario | opcion de artistas |
    | joja    | "Artistas"         |

Example: Datos de Salida
    | lista de diferentes artistas | perfil del artista  |
    | "Recomendado solo para ti"   | Perfil de Green Day |

