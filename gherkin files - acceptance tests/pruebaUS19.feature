Feature: US19 Gestion de Comunidades

    Como usuario, quiero poder crear y unirme a comunidades musicales, asi como recibir recomendaciones y enviar 
    invitaciones, para fomentar la interaccion y conexion con otros amantes de la musica que compartan mis intereses.


Scenario Outline: Crear una comunidad
    Given el <usuario> esta en la seccion de comunidades
    When el <usuario> selecciona la <opcion de crear comunidad>
    And el <usuario> completa el <formulario> con el <nombre> y <descripcion> de la comunidad
    Then la <comunidad> se crea y se muestra en la <lista de comunidades disponibles>.

Example: Datos de Entrada
    | usuario | opcion de crear comunidad | nombre    |
    | joja    | "Crear"                   | the world |

    | descripcion                                       |
    | principalmente los openings y endings de jojos !! |

Example: Datos de Salida
    | comunidad | lista de comunidades disponibles    |
    | the world | the world, arctic monkyes fans, ... |


Scenario Outline: Unirse a una comunidad
    Given el <usuario> esta navegando por la lista de comunidades
    When el <usuario> ingrese a una <comunidad>
    And el <usuario> selecciona la <opcion de union>
    Then el <usuario> se convierte en miembro de esa <comunidad>
    And le aparece una <confirmacion> de su union.

Example: Datos de Entrada
    | usuario | comunidad | opcion de union | 
    | joja    | defontes  | "Unir"          |

Example: Datos de Salida
    | confirmacion |
    | "Unido"      |


Scenario Outline: Recomendacion de comunidades
    Given el <usuario> esta en la seccion de comunidades
    When el <usuario> selecciona la <opcion de unirse a una comunidad>
    Then el sistema sugiere <comunidades> basadas en sus gustos musicales, ubicacion y amigos en comun.

Example: Datos de Entrada
    | usuario | opcion de unirse a una comunidad | 
    | joja    | "Unirme"                         |

Example: Datos de Salida
    | comunidades                                               |
    | defontes, arctic monkyes fans, bruno mars ven a peru, ... |


Scenario Outline: Invitar a una comunidad
    Given el <usuario> es miembro de una <comunidad>
    And el <usuario> se encuentra en la pagina de la misma
    When el <usuario> selecciona la <opcion de invitar amigos>
    And el <usuario> elige a cuale <amigos> invitar
    Then se envian <invitaciones> a esos <amigos> para unirse a la <comunidad>.

Example: Datos de Entrada
    | usuario | opcion de union  | amigos              | comunidad |
    | joja    | "Invitar Amigos" | casiu, mich, lululu | defontes  |

Example: Datos de Salida
    | invitaciones                                       |
    | joja te ha invitado a una comunidad! Haz click ... |