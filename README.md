# naroga/multiblog

A blogging engine for multiblogs.

## Installation

Install this project through composer:

    $ composer create-project naroga/multiblog
    
Then, configure your virtual host to point to the `web` directory. You can find
examples [here](http://symfony.com/doc/current/cookbook/configuration/web_server_configuration.html).

## Requisites

To run this project in `dev` mode, you'll need [Vagrant](https://www.vagrantup.com), with the `hostmanager` plugin:

    $ vagrant plugin install vagrant-hostmanager
    
To run it in `production` mode, check out [Symfony's requirements](http://symfony.com/doc/current/reference/requirements.html) and how to
[create a virtualhost for a Symfony project](http://symfony.com/doc/current/cookbook/configuration/web_server_configuration.html).
    
## Running the project with Vagrant

To run the project, start vagrant:

    $ vagrant up
    
Now, just open `http://multiblog.local/app_dev.php`.
 
## License

This project is released under the MIT license. For more information,
see the [LICENSE](LICENSE.md) file.

## Contribution

To contribute to this project, please read the [contribution guide](CONTRIBUTING.md).