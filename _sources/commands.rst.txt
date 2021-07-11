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

==================== ===== ================== ========== ========================
long                 short type               default    description
==================== ===== ================== ========== ========================
--id                 -id   text               [required] Identifier.
--public / --private       bool               False      Visibility.
--open-at            -o    timestamptz        [required] Open date.
--close-at           -c    timestamptz        [required] Close date.
--description_en     -e    text               [required] Description in English.
--description_ja     -j    text               [required] Description in Japanese.
--help                                                   Show help and exit.
==================== ===== ================== ========== ========================

``timestamptz`` should be in either of the following formats:

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
long                 short type               default    description
==================== ===== ================== ========== ========================
--help                                                   Show help and exit.
==================== ===== ================== ========== ========================


submit
^^^^^^

Submit a solution.

Usage:

.. code-block:: bash

   opt submit [OPTIONS]

Options:

==================== ===== ================== ========== ========================
long                 short type               default    description
==================== ===== ================== ========== ========================
--match              -m    INTEGER RANGE      [required] Match ID.
--wait / --no-wait         bool               True         Wait for evaluation.
--interval           -i    INTEGER RANGE      2          Polling interval to wait.
--solution           -x    FILENAME           -          File storing a solution.
--help                                                   Show help and exit.
==================== ===== ================== ========== ========================
