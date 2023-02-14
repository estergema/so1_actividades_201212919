
GITHUB_USER=estergema

echo $GITHUB_USER

pagina=https://api.github.com/users/$GITHUB_USER

echo $pagina

resultado=$(curl https://api.github.com/users/$GITHUB_USER)
echo $resultado


if [[ "$resultado" != '' ]]; then   
	echo 'Hola'
	echo $resultado | jq '.login'
	echo 'User ID'
	echo $resultado | jq '.id'
	echo 'Cuenta fue creada el:' 
	echo $resultado | jq '.created_at'	
else   	
	#sudo apt  install jq
	echo "No fue posible consultar, consulte logs"; 	
fi

timestamp=$(date +%s)
cd /tmp/
mkdir $timestamp
cd /$timestamp
sudo vi saludos.log

