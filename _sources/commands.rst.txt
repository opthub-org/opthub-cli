Opt commands
============

OptHub is a collaborative platform to run optimization competitions.


Concepts
--------
There are high-level commands and CRUD commands.

High-level commands
^^^^^^^^^^^^^^^^^^^

- organize
- status
- submit

CRUD commands
^^^^^^^^^^^^^

- create
- list
- update
- delete


Commands
--------

organize
^^^^^^^^

Organize a competition.

Usage:

.. code-block:: bash

   opt organize [OPTIONS]

Options:

============================ ====== ================== ========== ========================
Long                         Short  Type               Default    Description
============================ ====== ================== ========== ========================
``--id``                     ``-i`` text               [required] Identifier.
``--public`` / ``--private``        bool               ``False``  Visibility.
``--open-at``                ``-o`` timestamptz        [required] Open date.
``--close-at``               ``-c`` timestamptz        [required] Close date.
``--description_en``         ``-e`` text               [required] Description in English.
``--description_ja``         ``-j`` text               [required] Description in Japanese.
``--help``                                                        Show help and exit.
============================ ====== ================== ========== ========================

Type ``timestamptz`` should be in either of the following formats:

- ``%Y-%m-%d``
- ``%Y-%m-%dT%H:%M:%S``
- ``%Y-%m-%d %H:%M:%S``

Examples:

.. code-block:: bash

   $ opt organize --id eccomp2020 --public \
     --open-at 2020-10-01T18:00:00 \
     --close-at 2020-12-11T23:59:59 \
     --description_en "This is an English description." \
     --description_jp "これは日本語の解説文です．"

You can input argments interactively:

.. code-block:: bash

   $ opt organize
   Id: eccomp2020
   Public [y/N]: y
   Open at [2021-07-11 11:25:55+09:00]: 2020-10-01 18:00:00
   Close at [2021-07-12 11:25:55+09:00]: 2021-12-11 23:59:59
   Description en: This is an English description.
   Description jp: これは日本語の解説文です．


status
^^^^^^

Show status.

Usage:

.. code-block:: bash

   opt status

Options:

==================== ===== ================== ========== ========================
Long                 Short Type               Default    Description
==================== ===== ================== ========== ========================
``--help``                                               Show help and exit.
==================== ===== ================== ========== ========================


submit
^^^^^^

Submit a solution.

Usage:

.. code-block:: bash

   opt submit [OPTIONS]

Options:

========================== ====== ================== ========== ========================
Long                       Short  Type               Default    Description
========================== ====== ================== ========== ========================
``--match``                ``-m`` INTEGER RANGE      [required] Match ID.
``--wait`` / ``--no-wait``        bool               ``True``   Wait for evaluation.
``--interval``             ``-i`` INTEGER RANGE      ``2``      Polling interval to wait.
``--solution``             ``-x`` FILENAME           ``-``      File storing a solution.
``--help``                                                      Show help and exit.
========================== ====== ================== ========== ========================


create competition
^^^^^^^^^^^^^^^^^^

Create a competition entity on OptHub.

Usage:

.. code-block:: bash

   opt create competition [OPTIONS]

Options:

============================ ====== ================== ========== ========================
Long                         Short  Type               Default    Description
============================ ====== ================== ========== ========================
``--id``                     ``-i`` text               [required] Identifier.
``--public`` / ``--private``        bool               ``False``  Visibility.
``--open-at``                ``-o`` timestamptz        [required] Open date.
``--close-at``               ``-c`` timestamptz        [required] Close date.
``--description_en``         ``-e`` text               [required] Description in English.
``--description_ja``         ``-j`` text               [required] Description in Japanese.
``--help``                                                        Show help and exit.
============================ ====== ================== ========== ========================

Type ``timestamptz`` should be in either of the following formats:

- ``%Y-%m-%d``
- ``%Y-%m-%dT%H:%M:%S``
- ``%Y-%m-%d %H:%M:%S``

Examples:

.. code-block:: bash

   $ opt create competition --id eccomp2020 --public \
     --open-at 2020-10-01T18:00:00 \
     --close-at 2020-12-11T23:59:59 \
     --description_en "This is an English description." \
     --description_jp "これは日本語の解説文です．"

You can input argments interactively:

.. code-block:: bash

   $ opt create competition
   Id: eccomp2020
   Public [y/N]: y
   Open at [2021-07-11 11:25:55+09:00]: 2020-10-01 18:00:00
   Close at [2021-07-12 11:25:55+09:00]: 2021-12-11 23:59:59
   Description en: This is an English description.
   Description jp: これは日本語の解説文です．


create environment
^^^^^^^^^^^^^^^^^^

Create an environment entity on OptHub.

Usage:

.. code-block:: bash

   opt create environment [OPTIONS]

Options:

============================ ====== ================== ========== ========================
Long                         Short  Type               Default    Description
============================ ====== ================== ========== ========================
``--match``                  ``-m`` integer            [required] Match ID.
``--key``                    ``-k`` text               [required] Variable name.
``--value``                  ``-v`` jsonb              [required] Variable value.
``--public`` / ``--private``        bool               ``False``  Visibility.
``--help``                                                        Show help and exit.
============================ ====== ================== ========== ========================

Examples:

.. code-block:: bash

   $ opt create environment --match 20 --public \
     --key RNGBIAS_BIAS_ALPHA \
     --value [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

You can input argments interactively:

.. code-block:: bash

   $ opt create environment
   Id: 20
   Public [y/N]: y
   Key: RNGBIAS_BIAS_ALPHA
   Value: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]


create indicator
^^^^^^^^^^^^^^^^

Create an indicator entity on OptHub.

Usage:

.. code-block:: bash

   opt create indicator [OPTIONS]

Options:

============================ ====== ================== ========== ========================
Long                         Short  Type               Default    Description
============================ ====== ================== ========== ========================
``--id``                     ``-i`` text               [required] ID.
``--image``                  ``-t`` text               [required] Docker image tag.
``--public`` / ``--private``        bool               ``False``  Visibility.
``--description_en``         ``-e`` text               [required] Description in English.
``--description_ja``         ``-j`` text               [required] Description in Japanese.
``--help``                                                        Show help and exit.
============================ ====== ================== ========== ========================

Examples:

.. code-block:: bash

   $ opt create indicator --id hypervolume --public \
     --image opthub/hypervolume:latest \
     --description_en "This is an English description." \
     --description_jp "これは日本語の解説文です．"


You can input argments interactively:

.. code-block:: bash

   $ opt create indicator
   Id: hypervolume
   Public [y/N]: y
   Image: opthub/hypervolume:latest
   Description en: This is an English description.
   Description jp: これは日本語の解説文です．


create match
^^^^^^^^^^^^

Create a match entity on OptHub.

Usage:

.. code-block:: bash

   opt create match [OPTIONS]

Options:

============================ ====== ================== ========== ========================
Long                         Short  Type               Default    Description
============================ ====== ================== ========== ========================
``--name``                   ``-n`` text               [required] Match name.
``--competition``            ``-c`` text               [required] Competition ID.
``--problem``                ``-p`` text               [required] Problem ID.
``--indicator``              ``-i`` text               [required] Indicator ID.
``--budget``                 ``-b`` integer range      [required] Budget.
``--help``                                                        Show help and exit.
============================ ====== ================== ========== ========================

Examples:

.. code-block:: bash

   $ opt create match --name "Single-objective track" \
     --competition eccomp2019 \
     --problem wind-turbine-sop \
     --indicator best \
     --budget 10000


You can input argments interactively:

.. code-block:: bash

   $ opt create match
   Name: Single-objective track
   Competition: eccomp2019
   Problem: wind-turbine-sop
   Indicator: best
   Budget: 10000


create problem
^^^^^^^^^^^^^^

Create a problem entity on OptHub.

Usage:

.. code-block:: bash

   opt create problem [OPTIONS]

Options:

============================ ====== ================== ========== ========================
Long                         Short  Type               Default    Description
============================ ====== ================== ========== ========================
``--id``                     ``-i`` text               [required] ID.
``--image``                  ``-t`` text               [required] Docker image tag.
``--public`` / ``--private``        bool               ``False``  Visibility.
``--description_en``         ``-e`` text               [required] Description in English.
``--description_ja``         ``-j`` text               [required] Description in Japanese.
``--help``                                                        Show help and exit.
============================ ====== ================== ========== ========================

Examples:

.. code-block:: bash

   $ opt create problem --id sphere --public \
     --image opthub/sphere:latest \
     --description_en "This is an English description." \
     --description_jp "これは日本語の解説文です．"


You can input argments interactively:

.. code-block:: bash

   $ opt create indicator
   Id: sphere
   Public [y/N]: y
   Image: opthub/sphere:latest
   Description en: This is an English description.
   Description jp: これは日本語の解説文です．
