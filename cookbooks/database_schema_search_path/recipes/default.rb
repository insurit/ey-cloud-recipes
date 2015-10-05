#
# Cookbook Name:: database_schema_search_path
# Recipe:: default
#

# loop through applications
node[:applications].each do |app_name, _|

  # database.yml
  execute "update-database-yml-schema-search-path-for-#{app_name}" do
    db_yaml_file = "/data/#{app_name}/shared/config/database.yml"
    command "sed -i '/reconnect: true/a \\schema_search_path: \"public,extensions\"' #{db_yaml_file}"
    action :run
  end

end
