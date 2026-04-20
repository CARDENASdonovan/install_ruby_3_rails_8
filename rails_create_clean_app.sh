# -e: exit immediately if a command exits with an error
# -u: treat unset variables as an error and exit immediately
# -o pipefail: the return value of a pipeline is the status of the last command
set -euo pipefail

APP_NAME=${1:-""}
DB_INPUT=${2:-""}

echo "Enter the name for your rails app:"
# -r do not transform user input
# -p allows to show a message before reading the user input
read -r -p "App name (default: my-app): " APP_NAME

# -z checks if the variable is "" or null
if [[ -z "$APP_NAME" ]]; then
    APP_NAME="my-app"
fi

if [[ -z "$DB_INPUT" ]]; then
	echo "Select database for the new Rails app:"
	echo "1) SQLite"
	echo "2) PostgreSQL"
	read -r -p "Write 1 or 2 (default: 1): " DB_INPUT
fi

if [[ -z "$DB_INPUT" ]]; then
	echo "Select database for the new Rails app:"
	echo "1) SQLite"
	echo "2) PostgreSQL"
	read -r -p "Write 1 or 2 (default: 1): " DB_INPUT
fi

# DB_INPUT,, == lowercase
DB_INPUT="${DB_INPUT,,}"
case "$DB_INPUT" in
    # case "" or 1
	""|1)
		DB_ADAPTER="sqlite3"
		;;
    # case 2
	2)
		DB_ADAPTER="postgresql"
		;;
    # default
	*)
		echo "Invalid option."
		exit 1
		;;
esac

rails new "$APP_NAME" -d "$DB_ADAPTER"
cd "$APP_NAME"
bin/rails db:create
bin/rails server