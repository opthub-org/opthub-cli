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


Problem
^^^^^^^

``Problem`` represents a problem function such as sphere and rasgrigin to evaluate a solution.

Indicator
^^^^^^^^^

``Indicator`` represents an indicator function such as hypervolume to score a set of solutions.

Competition
^^^^^^^^^^^

``Competition`` represents a competition consists of one or more matches.


Match
^^^^^

``Match`` represents a match held in a competition.


Environment
^^^^^^^^^^^

``Environment`` represents an environmental variable that configures docker containers of ``Problem`` and ``Indicator``.


Solution
^^^^^^^^

``Solution`` represents a solution submitted to a ``Match``.


Progress
^^^^^^^^

``Progress`` represents the progress of a ``Match`` for  a ``User``.


OptHub API
----------

OptHub provides GraphQL API that enables us to operate OptHub entities.


OptHub CLI
----------

OptHub CLI issues GraphQL queries and mutations in a human-friendly way.


References
----------
