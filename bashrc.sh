
function text-sharing-setup()
{
	cd ${WEB_TEXT_SHARING_SOURCE_DIR}
	npm install
	npm install nodemon --save-dev
}

function text-sharing()
{
	if [ -z "$1" ]
	then
	    text_sharing_port=8383
	else
	    text_sharing_port=$1
	fi
	echo "Staring text-sharing service in port: "${text_sharing_port}
	cd ${WEB_TEXT_SHARING_SOURCE_DIR}
	screen -S text-sharing-${text_sharing_port} -dm env TEXTSHARING_PORT=${text_sharing_port} nodemon server.js
}