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

.. code-block:: bash

   opt organize --id competition

Options:
==================== ===== ================== ========== ===========
long                 short type               default    description
==================== ===== ================== ========== ===========
--id                 -id   text               [required] Identifier.
--public / --private       bool               False      Visibility.
--open-at            -o    timestamptz        now()      Open date.
                           [%Y-%m-%d|
                           %Y-%m-%dT%H:%M:%S|
                           %Y-%m-%d %H:%M:%S]

  -c, --close-at [%Y-%m-%d|%Y-%m-%dT%H:%M:%S|%Y-%m-%d %H:%M:%S]
                                  Close date.  [required]
  -e, --description_en TEXT       Description in English.  [required]
  -j, --description_ja TEXT       Description in Japanese.  [required]
  --help                          Show this message and exit.

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
