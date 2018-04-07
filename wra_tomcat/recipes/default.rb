apt_update 'update' if platform_family?('debian')

# include_recipe 'wra_tomcat::docs_example'
include_recipe 'wra_tomcat::helloworld_example'
