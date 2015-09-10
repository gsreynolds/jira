name 'chef_jira'
maintainer 'KLM Royal Dutch Airlines'
maintainer_email 'martijn.vanderkleijn@klm.com'
license 'Apache 2.0'
description 'Installs/Configures Atlassian JIRA.'
version '2.1.2'
recipe 'chef_jira', 'Installs/configures Atlassian JIRA'
recipe 'chef_jira::apache2', 'Installs/configures Apache 2 as proxy (ports 80/443)'
recipe 'chef_jira::container_server_configuration', 'Configures container server for JIRA deployment'
recipe 'chef_jira::database', 'Installs/configures MySQL/Postgres server, database, and user for JIRA'
recipe 'chef_jira::installer', 'Installs/configures JIRA via installer'
recipe 'chef_jira::standalone', 'Installs/configures JIRA via standalone archive'
recipe 'chef_jira::sysv', 'Installs/configures JIRA SysV init service'

depends 'apache2'
depends 'ark'
depends 'database'
depends 'java'
depends 'mysql'
depends 'mysql_connector'
depends 'postgresql', '>= 3.4.20'
depends 'openssl', '>= 4.0.0'
suggests 'tomcat'

supports 'centos', '>= 6.0'
supports 'redhat', '>= 6.0'
supports 'ubuntu', '>= 12.04'
