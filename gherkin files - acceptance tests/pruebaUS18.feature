Feature: US18 Configuracion de notificaciones

    Como usuario, quiero tener la opcion de configurar mis preferencias de notificacion para recibir solo la 
    informacion que me interesa.


Scenario Outline: Accesso a la configuracion de notificaciones
    Given el <usuario> accede a la seccion de ajustes
    When el <usuario> se dirija a la <seccion de configuracion de notificaciones>
    Then el <usuario> podra ver los permisos de <notificaciones generales>, de <notificaciones de mensajes>, de 
    <notificaciones por correo>, <notificaciones silenciosas>, <notificaciones de nuevos lanzamientos> y 
    <notificaciones de sugerencia diaria>.

Example: Datos de Entrada
    | usuario | seccion de configuracion de notificaciones |
    | joja    | "Notificaciones"                           |

Example: Datos de Salida
    | notificaciones generales | notificaciones de mensajes | notificaciones por correo |
    | Si                       | Si                         | Si                        |

    | notificaciones silenciosas | notificaciones de nuevos lanzamientos | notificaciones de sugerencia diaria |
    | Si                         | Si                                    | Si                                  |


Scenario Outline: Modificacion de preferencias de notificaciones
    Given el <usuario> se encuentra en la seccion de configuracion de notificaciones
    And el <usuario> quiere modificar un <permiso de notificacion especifico>
    When el <usuario> haga click en un <boton de modificacion de permiso>
    Then los <parametros de notificacion de ese aspecto> cambiaran hasta que el <usuario> restablezca los cambios.

Example: Datos de Entrada
    | usuario | permiso de notificacion especifico | boton de modificacion de permiso |
    | joja    | Si                                 | No                               |

Example: Datos de Salida
    | parametros de notificacion de ese aspecto |
    | No                                        |