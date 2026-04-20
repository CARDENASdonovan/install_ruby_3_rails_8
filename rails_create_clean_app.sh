APP_NAME=${1:-"my-app"}
rails new $APP_NAME
cd $APP_NAME
bin/rails db:create
bin/rails server
