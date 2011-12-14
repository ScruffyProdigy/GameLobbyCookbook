current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "hairymezican"
client_key               "#{current_dir}/hairymezican.pem"
validation_client_name   "fastclash-validator"
validation_key           "#{current_dir}/fastclash-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/fastclash"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
