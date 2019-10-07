Dir['./app/api/v1/controllers/*.rb'].each { |file|
  require file
}

use ArticlesController
use CategoriesController
run ApplicationController
