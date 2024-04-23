#/bin/sh

# if [ "${APP_ENV}" != "production" ]; then
#     echo "Error, \${APP_ENV} != production";
#     exit 1;
# fi

docker-compose -f docker-compose.pro.yml $*