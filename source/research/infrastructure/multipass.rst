Multipass
#########


Introduction
************

Multipass allows launching and managing lightweight virtual machines by leveraging cloud-init to customize the initial configuration of the virtual machines.

Cloud-init Configuration
------------------------

Create a cloud-init configuration file, for example, ``cloud-config.yaml``, with your desired settings. Here's an example:

.. code-block:: yaml

    # cloud-config.yaml
    # Cloud-init configuration for Multipass instance

    # Set the hostname
    hostname: my-instance

    # Add user
    users:
      - name: myuser
        sudo: ALL=(ALL) NOPASSWD:ALL
        groups: users, admin
        home: /home/myuser

    # Install packages
    packages:
      - git
      - python3

    # Run commands on instance startup
    runcmd:
      - echo "Hello from Multipass Cloud-init!"

Launching Multipass Instance
----------------------------

Launch a Multipass instance using the cloud-init configuration:

.. code-block:: bash

    multipass launch --cloud-init cloud-config.yaml my-instance

Replace ``cloud-config.yaml`` with the actual path to your cloud-init configuration file.

Verify that your Multipass instance was launched with the specified configurations using:

.. code-block:: bash

    multipass list

Alternatively, you can open a shell and monitor cloud-init progress. In a separate terminal, you can connect to the VM by running:

.. code-block:: bash

    multipass shell my-instance

and then observe cloud-init progress using

.. code-block:: bash

    tail -f /var/log/cloud-init-output.log


Conclusion
----------

You've successfully used cloud-init with Multipass to customize the configuration of your virtual machine upon launch. Feel free to explore more cloud-init options to tailor the setup according to your requirements.


Cloud-init with Options
***********************


Multipass Launch Options
------------------------

- ``--name`` *instance-name*:
  Specify the name of the instance.

- ``--cpus`` *count*:
  Set the number of CPUs for the instance.

- ``--mem`` *size*:
  Set the amount of memory for the instance.

- ``--disk`` *size*:
  Set the disk size for the instance.

- ``--cloud-init`` *file*:
  Provide a cloud-init configuration file.

- ``--timeout`` *duration*:
  Set the maximum time allowed for instance creation.

Example Command
---------------

Launch a Multipass instance named "my-instance" with 2 CPUs, 8GB of memory, 10GB disk, and using a cloud-init configuration file named "cloud-config.yaml". Set a timeout of 30 minutes:


.. code-block:: bash

    multipass launch --name my-instance --cpus 2 --mem 8G --disk 10G --cloud-init cloud-config.yaml --timeout 30m


Explanation
-----------

- ``--name my-instance`` sets the instance name to "my-instance".
- ``--cpus 2`` allocates 2 CPUs to the instance.
- ``--mem 8G`` allocates 8GB of memory to the instance.
- ``--disk 10G`` sets the disk size to 10GB.
- ``--cloud-init cloud-config.yaml`` provides the cloud-init configuration file.
- ``--timeout 30m`` sets a timeout of 30 minutes for instance creation.

Conclusion
-----------

You have successfully launched a Multipass instance with custom CPU, memory, and disk options using cloud-init, and a specified timeout.

