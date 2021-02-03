#/bin/sh

if ["DATABASE" = "postgres"]
then
    echo "Aguardando PostgresSQL...."

    while ! nc -z $SQL_HOST $SQL_PORT; do
        sleep 0.1
    done


    echo "PostgreeSQL iniciado!"
fi

exec "$@"