Feature: US30 Registro e Inicio de Sesion

    Como usuario nuevo de Raves, quiero registrarme en la aplicacion e iniciar sesion con mis credenciales para 
    acceder a eventos musicales personalizados y gestionar mis preferencia.


Scenario Outline: Reproduccion de canciones
    Given el <usuario> abre la aplicacion y selecciona la opcion de <Crear Cuenta>
    When completa los campos de registro (<nombre completo>, <nombre de usuario>, <correo electronico> y 
    <contrasena>) y crea la cuenta
    Then el sistema debe crear una cuenta nueva y mostrar un <mensaje de registro exitoso>.

Example: Datos de Entrada
    | usuario | Crear Cuenta | nombre completo             | nombre de usuario |
    | joja    | "Presionar"  | Ainhoa Lucia Castillo Garay | joja              |
    
    | campos de registro   | contrasena   |
    | ainhoa.c.g@gmail.com | amoraves1234 |

Example: Datos de Salida
    | mensaje de registro exitoso    |
    | Bievenido! Nueva cuenta creada |


Scenario Outline: Inicio de sesion de usuario existente
    Given el <usuario> ya tiene una <cuenta> registrada en la aplicacion
    When ingresa su <correo electronico> y <contrasena> en la pantalla de inicio de sesion
    Then el sistema debe permitirle acceder a su cuenta y mostrar la <pagina de inicio> de la aplicacion.

Example: Datos de Entrada
    | usuario | correo electronico   | contrasena   |
    | joja    | ainhoa.c.g@gmail.com | amoraves1234 |

Example: Datos de Salida
    | pagina de inicio |
    | "Para Ti"        |


