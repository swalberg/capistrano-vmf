class Vmf::UnicornGenerator < Rails::Generators::Base
  source_root File.expand_path("../../../../templates", __FILE__)

  def install_unicorn
    template "unicorn.rb.erb", "config/unicorn.rb"

    gem "unicorn"
  end
end
