require 'sinatra' #comment
require 'sinatra/activerecord'
require 'active_record'
require './environments'

class Element < ActiveRecord::Base
end

class Base < ActiveRecord::Base
end

class Orb < ActiveRecord::Base
end

class Orbital < ActiveRecord::Base
end

get '/' do
	"Hello, minna-san! @max_period = "
	@max_period = Element.last(1)[0].period
	puts @max_period
end