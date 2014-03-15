class Vmf::NewrelicGenerator < Rails::Generators::Base
  source_root File.expand_path("../../../../templates", __FILE__)

  def install_newrelic
    print "Please enter your NewRelic license key: "
    @license_key = STDIN.gets.chomp
    template "newrelic.yml.erb", "config/newrelic.yml"

    gem "newrelic_rpm"
  end
end
