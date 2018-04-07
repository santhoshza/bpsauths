apt_update 'update' if platform_family?('debian')

# make sure we have java installed
include_recipe 'java'


version = node['activemq']['version']
#activemq_home = "#{node['activemq']['home']}/apache-activemq-#{version}"
activemq_home = "/opt/activemq_main_queue_5_14_4"

activemq_install 'main_queue'

# arch = node['kernel']['machine'] == 'x86_64' ? 'x86-64' : 'x86-32'

# template "#{activemq_home}/conf/activemq.xml" do
  # source 'activemq.xml.erb'
  # mode '0755'
  # owner 'root'
  # group 'root'
  # notifies :restart, 'service[activemq]' if node['activemq']['enabled']
  # only_if  { node['activemq']['use_default_config'] }
# end

service 'activemq' do
  supports restart: true, status: true
  action [:enable, :start]
  only_if { node['activemq']['enabled'] }
end

# # symlink so the default wrapper.conf can find the native wrapper library
# link "#{activemq_home}/bin/linux" do
  # to "#{activemq_home}/bin/linux-#{arch}"
# end

# template "#{activemq_home}/bin/linux/wrapper.conf" do
  # source 'wrapper.conf.erb'
  # mode '0644'
  # only_if { node['activemq']['use_default_config'] }
  # notifies :restart, 'service[activemq]' if node['activemq']['enabled']
# end
