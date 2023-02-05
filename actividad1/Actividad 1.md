# Tipos de Kernel

## Kernel monolítico. 

Un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.

## Microkernel. 

El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.

## Kernel híbrido. 

La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X.

# User vs Kernel Mode

## Modo de usuario 
 - El programa de aplicación se ejecuta y se inicia.
 - Un solo proceso falla si ocurre una interrupción.
 - Se conoce como modo sin privilegios, modo restringido o modo esclavo.
 - Se puede recuperar un bloqueo del sistema simplemente reanudando la sesión.


## Modo Kernel
 - El programa tiene acceso directo y sin restricciones a los recursos del sistema.
 - Todo el sistema operativo puede dejar de funcionar si se produce una interrupción
 - También se conoce como modo maestro, modo privilegiado o modo de sistema.
 - Un bloqueo del sistema en modo kernel es grave y complica las cosas.


References
Difference between user mode and kernel mode. (2022, January 4). GeeksforGeeks. https://www.geeksforgeeks.org/difference-between-user-mode-and-kernel-mode/

Kernel - El núcleo del sistema operativo. (n.d.). IONOS Digital Guide. Retrieved February 5, 2023, from https://www.ionos.es/digitalguide/servidores/know-how/que-es-el-kernel/
