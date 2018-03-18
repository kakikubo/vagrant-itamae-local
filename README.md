# Vagrant::Itamae::Local

vagrant-itamae-local is extended [vagrant-itamae](https://github.com/chiastolite/vagrant-itamae) plugin

## Example

If you've written recipes for host machine. follows
```ruby
Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision :itamae do |config|
    config.sudo = true
    # recipes for localhost
    config.recipes = ['./local_recipes.rb']

    config.backend = 'local' # default is ssh
  end
end
```

## Installation

```ruby
vagrant plugin install vagrant-itamae-local
```

