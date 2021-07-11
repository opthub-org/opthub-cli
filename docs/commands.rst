Opt commands
============

OptHub is a collaborative platform to run optimization competitions.


Concepts
--------

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

``timestamptz`` is in the format:
- ``%Y-%m-%d``
- ``%Y-%m-%dT%H:%M:%S``
- ``%Y-%m-%d %H:%M:%S``


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
