require 'itamae'
require 'vagrant-itamae'
module VagrantPlugins
  module Itamae
    module Local
      class Plugin < Vagrant.plugin('2')
        name 'itamae'
        provisioner(:itamae) do
          require_relative 'provisioner'
          puts 'provisioner loaded'
          Provisioner
        end

        config(:itamae, :provisioner) do
          require_relative 'config'
          puts 'config loaded'
          Config
        end
      end
    end
  end
end

module VagrantPlugins
  module Itamae
    class Plugin
      prepend Itamae::Local
    end
  end
end
