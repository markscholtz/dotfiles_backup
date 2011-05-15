README - dotfiles
=================

Setup
-----

Make the install file executable

  <pre>chmod 755 install.rb</pre>

Run the install script which does the following:

* 1) Symlink the dotfiles to your home (~) directory
* 2) Symlink the rvm hook files to your rvm hooks directory (~/.rvm/hooks) directory
* 3) Set up git post-commit hooks to push automatically on commit

  <pre>`./install.rb`</pre>
