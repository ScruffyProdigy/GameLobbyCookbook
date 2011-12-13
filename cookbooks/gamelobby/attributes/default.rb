

default[:gamelobby][:root] = '/srv/gamelobby/current'
default[:gamelobby][:pieces] = {
  :gamelobby=>{
    :root=> '/',
    :streaming => false,
    :socket =>  default[:gamelobby][:root]+'/tmp/sockets/unicorn.sock'
  },
  :events => {
    :root=> '/events/',
    :streaming => true,
    :port => 3001
  }
}

set[:unicorn][:before_fork] = 'defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!'
set[:unicorn][:after_fork] = 'defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection'
set[:unicorn][:port] = "'#{default[:gamelobby][:root]}/tmp/sockets/unicorn.sock'"
set[:unicorn][:preload_app] = true
set[:unicorn][:worker_processes] = 2