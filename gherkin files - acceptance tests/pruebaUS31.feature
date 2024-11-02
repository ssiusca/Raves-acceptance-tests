Feature: US31 Cierre de sesion

    Como usuario de Raves, quiero poder cerrar sesion de mi cuenta para asegurar la privacidad de mis datos 
    cuando termine de usar la aplicacion.

Scenario Outline: Cierre de sesion exitoso
    Given el <usuario> se encuentra en la seccion de configuracion de la aplicacion
    When el <usuario> presiona la <opcion de salir>
    Then el sistema debe cerrar su sesion actual y redirigirlo a la <pantalla de inicio de sesion>.

Example: Datos de Entrada
    | usuario | opcion de salir |
    | joja    | "Salir"         |

Example: Datos de Salida
    | pantalla de inicio de sesion |
    | "Ingresa"                    |


