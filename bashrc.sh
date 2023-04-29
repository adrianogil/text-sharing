
function text-sharing-setup()
{
	cd ${WEB_TEXT_SHARING_SOURCE_DIR}
	npm install
	npm install nodemon --save-dev
}

function text-sharing()
{
	cd ${WEB_TEXT_SHARING_SOURCE_DIR}
	screen -S text-sharing -dm npm run watch
}