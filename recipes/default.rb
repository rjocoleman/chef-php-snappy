remote_file "#{Chef::Config[:file_cache_path]}/php-ext-snappy.tar.gz" do
  source "#{node['php_snappy']['url']}"
  not_if 'php -m | grep snappy'
end

bash 'make & install php-ext-snappy' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
  tar zxf php-ext-snappy.tar.gz
  cd php-ext-snappy-master
  phpize
  ./configure
  make && make install
  EOF
  not_if 'php -m | grep snappy'
end

file "#{node['php']['ext_conf_dir']}/snappy.ini" do
  owner 'root'
  group 'root'
  mode '0644'
  content 'extension=snappy.so'
  not_if 'php -m | grep snappy'
end
