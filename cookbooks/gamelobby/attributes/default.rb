default[:gamelobby][:pieces] = [
  {
    :root=> '/',
    :streaming => false,
    :port => 3000
  },{
    :root=> '/events/',
    :streaming => true,
    :port => 3001
  }
]