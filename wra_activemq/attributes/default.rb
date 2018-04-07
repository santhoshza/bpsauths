#
# Cookbook:: activemq
# Attributes:: default
#
# Copyright:: 2009-2017, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# default['activemq']['mirror']  = 'https://repository.apache.org/content/repositories/releases/org/apache'
# default['activemq']['version'] = '5.14.4'
# default['activemq']['home'] = '/opt'
# default['activemq']['wrapper']['max_memory'] = '1024'
# default['activemq']['wrapper']['useDedicatedTaskRunner'] = 'true'
# default['activemq']['wrapper']['keystore_password'] = 'password'
# default['activemq']['wrapper']['truststore_password'] = 'password'
# default['activemq']['wrapper']['keystore_path'] = '%ACTIVEMQ_CONF%/broker.ks'
# default['activemq']['wrapper']['truststore_path'] = '%ACTIVEMQ_CONF%/broker.ts'

# default['activemq']['enabled'] = true
# default['activemq']['enable_stomp'] = true
# default['activemq']['use_default_config'] = false
# default['activemq']['install_java'] = true
# # set to 'TLSv1,TLSv1.1,TLSv1.2'
# # to disable sslv3 and protect against poodle
# default['activemq']['transport_protocols'] = nil


# make sure we get the correct version of java installed
default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = '8'
default['java']['set_etc_environment'] = true
default['java']['oracle']['accept_oracle_download_terms'] = true
