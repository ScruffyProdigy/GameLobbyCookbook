#
# Cookbook Name:: GameLobby
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "#{node[:nginx][:dir]}/sites-available/game-lobby" do
  source 'pronged-site.erb'
  owner 'root'
  group 'root'
  mode 0644
  variables(
    :pieces => node[:gamelobby][:pieces]
  )
end

nginx_site 'game-lobby'