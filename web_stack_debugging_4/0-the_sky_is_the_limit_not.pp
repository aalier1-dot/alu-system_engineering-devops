# Increase Nginx worker connections for high concurrency.
exec { 'fix--for-nginx':
  command => 'sed -i "s/worker_connections 768;/worker_connections 4096;/" /etc/nginx/nginx.conf',
  path    => '/usr/local/bin/:/bin/'
}
