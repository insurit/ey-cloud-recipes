# Specify packages and version numbers to be installed here
#
# Search for packages on instances using: eix <package name> 
# Or go to the dashboard and edit the packages for an application to view *unmasked* packages
# Note that the dashboard view will not list masked packages
#
# Examples below:

default[:packages] = [#{:name => "app-misc/wkhtmltopdf-bin", :version => "0.12.0_beta5"},
                      {:name => "media-gfx/wkhtmltopdf-bin", :version => "0.12.2.1"},
                      {:name => "app-text/pdftk", :version => "2.02"}
                       {:name => "dev-util/lockrun", :version => "2-r1"}]
