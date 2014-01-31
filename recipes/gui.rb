#
# Cookbook Name:: xhgui-cookbook
# Recipe:: default
#
# Copyright (C) 2013 Greg Palmier
# 
# All rights reserved - Redistribute
#

# Install the required packages 
include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'php'
include_recipe 'apache2'
include_recipe 'apache2::mod_php5'

#https://github.com/preinheimer/xhgui

# Install XHProf via Pear

# Install php_mcrypt

# Install this using a web_app provider.
# Install apache settings directly to /etc/apache2/sites-enabled/
template "/etc/apache2/sites-enabled/xhgui.conf" do
 source "xhgui.conf.erb"
 owner "root"
 group 0
 mode 00644
 notifies :reload, "service[apache2]"
end
