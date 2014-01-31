#
# Cookbook Name:: xhgui-cookbook
# Recipe:: default
#
# Copyright (C) 2013 Greg Palmier
# 
# All rights reserved - Redistribute
#

# Require php5-dev

# pecl install channel://pecl.php.net/xhprof-0.9.4
# Install XHProf via Pear
php_pear_channel "pecl.php.net" do
  action :update
end

php_pear "xhprof" do
  version "0.9.4"
  action :install
  preferred_state "beta"
end

#Template the xhprof.ini file for apache
template "/etc/php5/conf.d/xhprof.ini" do
  source "xhprof.ini.erb"
  mode 00644
  action :create
  variables(
    :enable_xhprof => node['xhprof']['enable_xhprof'], 
  )
end
