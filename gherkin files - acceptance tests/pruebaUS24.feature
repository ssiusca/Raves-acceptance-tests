Feature: US24 Tiempo de Respuesta Rapido

    Como usuario de Raves, quiero tener acceso a la plataforma en cualquier momento del dia, para que pueda 
    disfrutar de la musica y la interaccion social sin limitaciones de horario.


Scenario Outline: Acceso a la plataforma
    Given el <usuario> intenta acceder a la plataforma en cualuqier momento del dia
    When el <usuario> inicia sesion en la plataforma
    Then el sistema debe permitirle acceder sin restricciones
    And debe mostrar una confirmacion.

Example: Datos de Entrada
    | usuario |
    | joja    | 

Example: Dato de Salida
    | confirmacion               |
    | Inicio de Sesion correcto! |


Scenario Outline: Soporte tecnico
    Given el <usuario> tiene una consulta sobre el funcionamiento de la plataforma
    When el <usuario> contacta al soporte tecnico a traves de uno de los meidos disponibles como correo, mensaje
    o llamada telefonica
    Then el soporte tecnico debe responder por aunque sea uno de los medios mencionados.

Example: Datos de Entrada
    | usuario |
    | joja    |
