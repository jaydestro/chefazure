# frozen_string_literal: true
# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

include_recipe "nginx"


directory '/www/prod' do
  mode '0755'
  action :create
  recursive true
end

git "/www/prod" do
  repository "https://github.com/cefjoeii/mern-crud.git"
  reference "master"
  action :sync
end

cookbook_file "/www/prod/config/db.js" do
  source "db.js"
  mode "0644"
end

execute 'install' do
  command 'cd /www/prod && npm install &'
  action :run
end

execute 'kill' do
  command 'killall -9 node'
  action :run
  ignore_failure true
end

execute 'start' do
  command 'cd /www/prod && npm start &'
  action :run
end

cookbook_file "/etc/nginx/conf.d/default.conf" do
   source "default"
   action :create
end

service "nginx" do
   action :restart
end
