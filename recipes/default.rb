#
# Cookbook:: print_spooler_restart
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

windows_task 'print_spooler_PS' do
  frequency :hourly
  run_level :highest
  command 'powershell Restart-Service -name "Spooler"''
end
