#configure :development do
#	db = URI.parse(ENV['DATABASE_URL'] || 'postgres://jemonat@localhost/elements')
#end

#configure :production do
	db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/elements')
#end

ActiveRecord::Base.establish_connection(
	:adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
	:host     => db.host,
	:username => db.user,
	:password => db.password,
	:database => db.path[1..-1],
	:encoding => 'utf8'
)
