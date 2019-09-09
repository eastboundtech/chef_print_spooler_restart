#
# Cookbook:: print_spooler_restart
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

windows_task 'print_spooler_restart' do
  frequency :hourly
  command 'net stop spooler'
  puts 'stopped'
  command 'net start spooler'
  puts 'started'
end
