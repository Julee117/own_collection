require_relative './config/environment'
require 'dotenv'
Dotenv.load

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use ReviewsController
use ItemsController
use BoardsController
use UsersController
run ApplicationController
