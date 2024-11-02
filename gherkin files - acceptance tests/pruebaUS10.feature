Feature: US10 Barra de busqueda

    Como usuario, quiero utilizar una barra de búsqueda para encontrar canciones, artistas, albumes y listas de 
    reproduccion de forma rapida y precisa, para acceder de manera eficiente al contenido musical que me interesa
    sin necesidad de navegar extensamente por la plataforma.


Scenario Outline: Busqueda de canciones especificas
    Given el <usuario> interactua con la barra de busqueda
    When el <usuario> escriba el <nombre de una cancion> en la barra de busqueda
    Then el sistema debe mostrar una <lista de resultados relevantes> a lo ingresado. 

Example: Datos de Entrada
    | usuario | nombre de una cancion |
    | joja    | Disasterpiece         |

Example: Datos de Salida
    | lista de resultados relevantes           |
    | Disasterpiece, Slipknot, Duality, Custer |


Scenario Outline: Busqueda de artistas especificos
    Given el <usuario> interactua con la barra de busqueda
    When el <usuario> escriba el <nombre de un artista> en la barra de busqueda
    Then el sistema debe mostrar un enlace al <perfil del artista> y a sus <canciones mas populares>. 

Example: Datos de Entrada
    | usuario | nombre de un artista |
    | joja    | System of a Down     |

Example: Datos de Salida
    | perfil del artista | canciones mas populares      |
    | System of a Down   | Chop Suey, Toxicity, Aerials |


Scenario Outline: Busqueda de albumes especificos
    Given el <usuario> interactua con la barra de busqueda
    When el <usuario> escriba el <nombre de un album> en la barra de busqueda
    Then el sistema debe listar el <album> en cuestion y <resultados relevantes> asociados con la busqueda. 

Example: Datos de Entrada
    | usuario | nombre de un album |
    | joja    | Koi No Yokan       |

Example: Datos de Salida
    | album        | resultados relevantes        |
    | Koi No Yokan | Deftones, Rosemary, Emtombed |


Scenario Outline: Busqueda de playlists especificas
    Given el <usuario> interactua con la barra de busqueda
    When el <usuario> escriba el <nombre de una playlist> en la barra de busqueda
    Then el sistema debe istar la <playlist> en cuestion, <playlists similares> y <resultados relevantes>. 

Example: Datos de Entrada
    | usuario | nombre de una playlist |
    | joja    | chino                  |

Example: Datos de Salida
    | playlist | playlists similares | resultados relevantes                    |
    | chino    | This is Deftones    | Deftones, Change (In the House of Flies) |


Scenario Outline: Busqueda de un raver o comunidad
    Given el <usuario> interactua con la barra de busqueda
    When el <usuario> escriba el <nombre de un raver o comunidad> en especifico
    Then el sistema debe mostrar el <raver o comunidad>, así como <resultados relevantes o similares>. 

Example: Datos de Entrada
    | usuario | nombre de un raver o comunidad |
    | joja    | chinita                        |

Example: Datos de Salida
    | raver o comunidad | resultados relevantes o similares |
    | chinita           | kistoo, binda p, Kendrick Lamar   |


Scenario Outline: Busqueda erronea
    Given el <usuario> ingresa el <nombre o titulo incorrecto> en la barra de busqueda
    When el sistema no encuentra un resultado exacto debido a la busqueda erronea
    Then el sistema debe mostrar un <mensaje> indicando que no se encontraron coincidencias exactas
    And debe proporcionar <sugerencias de resultados relacionados> basados en terinos similares o cercanos. 

Example: Datos de Entrada
    | usuario | nombre o titulo incorrecto |
    | joja    | misqui                     |

Example: Datos de Salida
    | mensaje                                                                                 |
    | Lo siento, no pudimos encontrar lo que buscaste. Aquí te dejamos búsquedas similares... | 
    
    | sugerencias de resultados relacionados                         |
    | Mitski, A Pearl, Liquid Smooth, La Miski María Jesús Rodríguez |