Vagrant
=======

Vagrant is a useful tool to automate and provision virtual machines. A vagrant repository is available at `https://github.com/purduecyan/vagrant`_

.. _https://github.com/purduecyan/vagrant: https://github.com/purduecyan/vagrant

To install Vagrant on an Ubuntu machine with VirtualBox as the VM provider, use:

.. prompt:: bash $

    sudo apt update
    sudo apt install virtualbox virtualbox-guest-additions-iso vagrant


To initialize a Vagrant environment, create and navigate to a folder that will store your vagrant file and run

.. prompt:: bash $

    vagrant init

You can now edit the ``Vagrantfile`` to configure and provision your VM. To create the VM(s),

.. prompt:: bash $

    vagrant up

Once the VMs are created, you can login to a VM using ``vagrant ssh``. You can also stop all running VMs withing a project using

.. prompt:: bash $

    vagrant halt

To delete all the VMs created, run

.. prompt:: bash $

    vagrant destroy

Additional resources
--------------------
You can find more information about Vagrant at `https://www.vagrantup.com`_.

.. _https://www.vagrantup.com: https://www.vagrantup.com

