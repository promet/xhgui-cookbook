xhgui-cookbook
--------------

This cookbook provides resources for using XHProf based tools.

Requirements
------------
* [vagrant](http://downloads.vagrantup.com/) >= 1.2.0
* [berkshelf](http://berkshelf.com/) >= 2.0.0
* [vagrant-berkshelf plugin](https://github.com/RiotGames/vagrant-berkshelf) >= 1.3.3

Usage
-----

In your Vagrantfile, customize these attributes:

````
default['xhgui-cookbook']['enable_xhprof']              = true
````

Attributes
----------

````
default['xhgui-cookbook']['enable_xhprof']              = true
````

Recipes
-------

default - provides the php extension.

xhgui - enables a gui front-end for the XHProf profiler. Doesn't do anything yet.

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
License: None.  Do as you wish.
Authors: gregpalmier
