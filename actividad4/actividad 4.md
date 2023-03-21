# Systemd Service


La ruta donde debemos ir para ver todos y cada uno de los servicios es «/etc/systemd/system/», por lo tanto, si usamos el comando «cd» vamos a poder ir hasta esta ruta sin problemas

Una vez que estamos en la ruta correcta, ahora tendremos que crear un fichero que termine en «service», Toda la configuración a realizar debe estar en este fichero de configuración, en nuestro caso vamos a crear un fichero llamado «sample.service» ejecutando el comando:

.......

sudo vi sample.service
.......

El contenido del archivo, en este ejemplo, es el siguiente:

..........................................

[Unit]
Description=Hello World Service
After=systend-user-sessions.service

[Service]
Type=simple
ExecStart=/home/estergema/Documents/SOPES1/so1_actividades_201212919/actividad4/sample.sh

..........

## Inicio del servicio
Una vez que se haya creado el archivo .system en el directorio /etc/systemd/system, puede iniciar el servicio usando:

sudo systemctl start hello-world.service

## Consultar el estado del servicio

systemctl status hello-world.service
