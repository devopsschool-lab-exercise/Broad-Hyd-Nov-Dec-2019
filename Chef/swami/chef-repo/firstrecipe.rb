file 'index.html' do
content "<h1>Hello Chef</h1>"
end
file 'file4.txt' do
mode 755
owner "ec2-user"
action :create
end 
package 'httpd' 
bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end
service 'httpd' do
  action               [ :enable, :start ]
end

