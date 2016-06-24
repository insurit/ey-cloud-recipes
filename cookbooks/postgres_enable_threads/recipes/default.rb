#
# Cookbook Name:: postgres_enable_threads
# Recipe:: default
#
if ['app_master', 'solo', 'util'].include? @node[:instance_role] then
  execute "Adding threads to postgresql-client" do
    command 'USE="threads" emerge --newuse dev-db/postgresql-base -g'
  end
end
