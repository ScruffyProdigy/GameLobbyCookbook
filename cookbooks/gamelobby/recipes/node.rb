execute "curl http://npmjs.org/install.sh | sh"  #install npm

node_packages = {
  'express'=>[],
  'redis'=>[],
  'forever'=>['g']
}

node_packages.each do |package,options|
  execute "npm install #{package} #{options.collect{|option| option.length == 1 ? "-#{option}" : "--#{option}"}.join(' ')}"
end

execute "forever start #{node[:gamelobby][:root]}/events.js"