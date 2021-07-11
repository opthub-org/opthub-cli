Quickstart
==========

This tutorial instructs how to play a competition on the new competition server lounched this year.
On this page, you will try to install a client tool for the competition, create your account, and solve some example problems!

Table of Contents (30 min read)

1. Installation and Registration
2. Reading problem Description
3. Solving Problems
4. Checking Your Results

1. Installation and Registration
--------------------------------

To play competitions, you need to setup the client tool and your account.

1.1. Terminal
^^^^^^^^^^^^^

Instructions in this tutorial are performed on the command line. Please use your favorite terminal software, e.g,:

- Windows
  - Power Shell
  - Command prompt
  - WSL, WSL2
  - Cygwin, MinGW
- Mac
  - Terminal
  - iTerm
- Linux
  - xterm
  - Gnome terminal

You can also play a competition on your mobile with the following terminal apps (available on the app store):

- Android
  - Termux
- iPhone (or iOS)
  - a-Shell

1.2. Installation of Python
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The client tool requires Python 3.6 or higher.
Please check your Python version as follows:

.. code-block:: bash

   python --version

If the version is shown and meets the requirements, you can skip the rest of this subsection.
Otherwise, you need to install Python on your computer.

If you use Windows with Power Shell or Command Prompt, access `Microsoft Store`_ and click the "Install" button.
If you use other OSs and terminals, install Python via package managers on your OS.
After installation, please confirm Python of the required version is available.

.. _Microsoft Store: https://www.microsoft.com/en-us/p/python-38/9mssztt1n39l?activetab=pivot:overviewtab

.. code-block:: bash

   python --version


1.3. Installation of the Client Tool
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To access the competition server, you need the client tool called "Opt".
Please install it as follows:

.. code-block:: bash

   pip install opthub-client-cli

Now, the opt command is available.
You can check the version of the client tool as follows:

.. code-block:: bash

   opt --version


