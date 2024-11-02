Feature: US22 Ajustes de Privacidad

    Como administrador de la plataforma, quiero que Raves tenga la capacidad de escalar And soportar un crecimiento 
    continuo en la cantidad de usuarios para garantizar una experiencia fluida And eficiente para todos los usuarios.


Scenario Outline:  Escalabilidad de la Plataforma
    Given que la plataforma ha alcanzado un numero significativo de usuarios
    When se preve un aumento en la cantidad de usuarios
    Then el sistema debe poder escalar automaticamente los recursos del servidor
    And garantizar que la experiencia del usuario permanezca sin interrupciones.



Scenario Outline: Monitoreo del Rendimiento del Sistema
    Given que la plataforma esta en funcionamiento
    When se detecta un aumento en la carga del sistema
    Then se generan alertas automaticas para el equipo de soporte
    And se implementan medidas para optimizar el rendimiento en tiempo real.


Example: Datos de Salida
    | alerta generada               |             
    | Latencia Alta en la respuesta |