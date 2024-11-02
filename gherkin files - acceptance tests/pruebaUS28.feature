Feature: US28 Exploracion fluida en el mapa

    Como usuario de Raves, quiero que el mapa interactivo funcione de manera fluida y responsiva, para poder 
    explorar facilmente las diferentes opciones musicales sin experimentar retrasos o problemas de carga.


Scenario Outline: Navegacion Suave en el Mapa
    Given el <usuario> esta interactuando con el <mapa> 
    When el <usuario> utiliza <gestos> para hacer <cambios de visualizacion>
    Then el <usuario> debe experimentar una navegación fluida sin interrupciones ni retrasos en la carga de 
    contenido.

Example: Datos de Entrada
    | usuario | gesto             | 
    | joja    | achicar pantalla  | 

Example: Datos de Salida
    | cambio de visualizacion  |
    | zoom out                 |


Scenario Outline: Tiempo de Carga Rápido
    Given el <usuario> accede a la <seccion mapa>
    When el mapa se carga inicialmente
    Then el <tiempo de carga> debe completarse en menos de 3 segundos.

Example: Datos de Entrada
    | usuario | seccion mapa |  
    | joja    | mapa         | 

Example: Datos de Salida
    | tiempo de carga  | 
    | 2.324s           | 


Scenario Outline: Respuesta Rapida a Interacciones
    Given el <usuario> ingresa al mapa musical 
    When el <usuario> interactua con alguna <ubicacion>
    Then la <informacion> relacionada a dicha ubicacion debe mostrarse de inmediato y sin retrasos.

Example: Datos de Entrada
    | usuario | ubicacion       |  
    | joja    | Lima, Peru      | 

Example: Datos de Salida
    | informacion        | 
    | tendencias locales | 


