Dir['./app/controllers/api/**/*.rb'].each { |file|
  require file
}

use ArticlesController
use CategoriesController
run ApplicationController
