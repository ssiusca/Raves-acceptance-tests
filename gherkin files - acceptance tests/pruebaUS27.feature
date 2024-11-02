Feature: US27 Soporte multiplataforma

    Como usuario de Raves, quieroacceder a la plataforma desde diferentes dispositivos, para poder disfrutar de mi
    musica y conectarse con otros usuarios sin importar si estoy en mi computadora, tablet o telefono movil.



Scenario Outline: Acceso desde dispositivo movil
    Given el <usuario> tiene la aplicacion de Raves instalada en su telefono movil 
    When el <usuario> abre la aplicacion e inicia sesion con sus credenciales (<correo> y <contrasena>)
    Then debe poder acceder a su <perfil>, <listas de reproduccion> y funciones de interaccion social sin 
    limitaciones.

Example: Datos de Entrada
    | usuario | correo                | contrasena  |
    | joja    | ainhoa.c.g@gmail.com  | amoraves123 |

Example: Datos de Salida
    | perfil      | listas de reproduccion |
    | "Mi Perfil" | "Biblioteca"           |


Scenario Outline: Acceso desde computadora
    Given el <usuario> prefiere utilizar su computadora para escuchar musica
    When el <usuario> accede al sitio web de Raves e inicia sesion,
    Then debe encontrar todas las funcionalidades disponibles, incluidas las opciones de personalizacion y 
    creacion de listas de reproduccion.

Example: Datos de Entrada
    | usuario |
    | joja    |


Scenario Outline: Sincronizacion de datos
    Given el <usuario> modifica alguno de sus datos, como preferencias o lista de reproduccion, en un <dispositivo>
    When el <usuario> accede a Raves desde <otro dispositivo>
    Then debe ver los cambios reflejados de inmediato, asegurando que su experiencia sea coherente en todas las 
    plataformas.


Example: Datos de Entrada
    | usuario | dispositivo | otro dispositivo |
    | joja    | celular     | computadora      |
