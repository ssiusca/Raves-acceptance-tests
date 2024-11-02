Feature: US25 Seguridad del usuario

    Como usuario de Raves, quiero que mi informacion personal y mis datos de uso esten protegidos, para que pueda 
    disfrutar de la plataforma con la tranquilidad de que mi privacidad y seguridad estan garantizadas.


Scenario Outline: Autenticacion Segura
    Given el <usuario> intenta iniciar sesion en su cuenta
    When el <usuario> introduce sus credenciales (<correo> y <contrasena>)
    Then el sistema debe verificar la autenticidad mediante un proceso de autenticación segura.

Example: Datos de Entrada
    | usuario | correo                | contrasena  |
    | joja    | ainhoa.c.g@gmail.com  | amoraves123 |


Scenario Outline: Cambio de contraseña
    Given el <usuario> se encuentra en la seccion de configuracion de seguridad de su cuenta
    When el <usuario> selecciona la <opcion para cambiar su contrasena>
    Then el sistema debe solicitar al <usuario> que ingrese su <contrasena actual> y la <nueva contrasena>
    And cambiar la contraseña en base a lo ingresado por el <usuario>.

Example: Datos de Entrada
    | usuario | opcion para cambiar su contrasena | contrasena actual | nueva contrasena |
    | joja    | "Cambiar"                         | amoraves123       | amoraves1234     |
