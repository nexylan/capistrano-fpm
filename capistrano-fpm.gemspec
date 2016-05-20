Gem::Specification.new do |s|
  s.name          = 'capistrano-fpm'
  s.version       = '0.0.0'
  s.summary       = 'Capistrano extension for PHP-FPM tasks'
  s.description   = 'Executes php-fpm service tasks like reload or restart from Capistrano'
  s.authors       = ['Sullivan Senechal']
  s.email         = ['soullivaneuh@gmail.com']
  s.homepage      = 'https://github.com/nexylan/capistrano-fpm'
  s.license       = 'MIT'

  s.files         = Dir['lib/**/*']
  s.require_paths = ['lib']

  s.add_dependency 'capistrano', '~> 3.2'

  s.add_development_dependency 'rake', '~> 10.1'
end
