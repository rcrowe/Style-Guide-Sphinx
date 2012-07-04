##########
Namespaces
##########

`Namespaces <http://www.php.net/manual/en/language.namespaces.rationale.php/>`_ allow for your code to be encapsulated, allowing all our classes to work
without collision. ::

    Going forward it is STRONGLY recommended that all PHP classes are namespaced.

This example clearly shows the need for namespacing::

    include '/model/user.php';
    include '/lib/user.php';

    // How do you expect this to work?
    $user_model = new User;
    $user_lib   = new User;


    // To get around this we have had to give
    // our classes horrible names
    include '/model/user_model.php';
    include '/lib/user_lib.php';

    // But this could still clash
    // and names can start to get really messy `orgSubIvcInv` :S
    $user_model = new User_Model;
    $user_lib   = new User_Lig;


Namespaces allow us to name classes sensibly, work with 3rd party code that might have a user class and create reusable classes withour fear of collision. ::

    // model/user.php
    namespace Vocab/Model;

    class User { ... }

    // lib/user.php
    namespace Vocab/Lib;

    class User { ... }


    // test.php
    include '/model/user.php';
    include '/lib/user.php';

    // 3rd party code
    include '/analytics/user.php';

    $user_model = new Vocab/Model/User;
    $user_lib   = new Vocab/Lib/User;
    $analytics  = new Analytics/User;


Core Namespace
==============

The core namespace is what all Vocab Express PHP classes should come under. This is still to be decided, but for now use **Vocab**. This translates to::

    namespace Vocab/...;


Autoloading
===========

By namespacing our classes correctly it enables us to the follow the `PSR-0 <https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-0.md/>`_
standard and autoload our code automatically. How much nicer is it writing code like::

    // Autoloaded
    $user = new Vocab/Model/User;

    // Horrible
    include __DIR__.'/../vocab/model/user.php';

    $user = new User;

This is possible because the namespace of a class follows the directory structure in which the class is stored. ::

    // vocab/lib/sso.php
    namespace Vocab/Lib;

    class Sso { ... }

    // vocab/lib/sso/driver.php
    namespace Vocab/Lib/SSO;

    class Driver { ... }

    // vocab/lib/sso/kerboodle.php
    namespace Vocab/Lib/SSO;

    class Kerboodle extends Driver { ... }


    // When a new instance of Kerboodle is instantiated
    // the autoloader knows to look in /vocab/lib/sso for a class
    // called kerboodle.php
    $sso = new Vocab/Lib/SSO/Kerboodle;

