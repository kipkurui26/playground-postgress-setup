#!/bin/sh
# entrypoint.sh

# Wait for PostgreSQL to be available (helps prevent race conditions)
echo "Waiting for database to be ready..."
until nc -z -v -w30 db 5432
do
  echo "Waiting for database connection..."
  sleep 1
done

# Run migrations
echo "Running migrations..."
python manage.py migrate

# Start the Django development server
echo "Starting Django server..."
exec "$@"
