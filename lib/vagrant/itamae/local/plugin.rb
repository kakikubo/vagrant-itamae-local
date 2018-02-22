module VagrantPlugins
  module Itamae
    module Local
      class Plugin < Vagrant.plugin('2')
        name 'itamae'
        provisioner(:itamae_local) do
          require_relative 'provisioner'
          Provisioner
        end

        config(:itamae_local, :provisioner) do
          require_relative 'config'
          Config
        end
      end
    end
  end
end
