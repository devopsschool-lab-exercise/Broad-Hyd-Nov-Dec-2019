file 'index.html' do
  content                    "<h1>Welcome to DevOpsSchool Chef Class v3<h1>"
end

package 'httpd'

bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end

include_recipe '::service'
