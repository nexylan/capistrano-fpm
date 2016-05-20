namespace :fpm do
  desc 'Reload php-fpm (requires root access to php-fpm reload)'
  task :reload do
    on release_roles(fetch(:fpm_roles)) do
      execute :fpm, 'reload'
    end
  end

  desc 'Stop php-fpm (requires root access to php-fpm stop)'
  task :stop do
    on release_roles(fetch(:fpm_roles)) do
      execute :fpm, 'stop'
    end
  end

  desc 'Start php-fpm (requires root access to php-fpm start)'
  task :start do
    on release_roles(fetch(:fpm_roles)) do
      execute :fpm, 'start'
    end
  end

  desc 'Restart php-fpm (requires root access to php-fpm restart)'
  task :restart do
    on release_roles(fetch(:fpm_roles)) do
      execute :fpm, 'restart'
    end
  end

  desc 'Zap php-fpm (requires root access to php-fpm zap)'
  task :zap do
    on release_roles(fetch(:fpm_roles)) do
      execute :fpm, 'zap'
    end
  end
end

namespace :load do
  task :defaults do
    set :fpm_roles, :all
  end
end

SSHKit.config.command_map[:fpm] = 'sudo /etc/init.d/php-fpm'
