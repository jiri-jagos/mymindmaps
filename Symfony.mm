<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1356894757430" ID="ID_917285060" MODIFIED="1359566235087" TEXT="Symfony 2">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      written for version 2.1
    </p>
    <p>
      
    </p>
    <p>
      see
    </p>
  </body>
</html></richcontent>
<node CREATED="1356895415874" ID="ID_1951247381" MODIFIED="1356895548699" POSITION="left" TEXT="Dependency Injection / Services">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      see http://symfony.com/doc/current/book/service_container.html
    </p>
  </body>
</html></richcontent>
<node CREATED="1356894775924" HGAP="48" ID="ID_1028837878" MODIFIED="1356895487305" TEXT="Service Container" VSHIFT="-27">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Service Container (or dependency injection container) is PHP object that manages the instantiation of services (objects).
    </p>
    <p>
      
    </p>
    <p>
      Standardizes and centralizes the way objects are constructed in the application.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node CREATED="1356895557570" ID="ID_1831811105" MODIFIED="1356898035210" TEXT="Creating / Configuring Services in the Container">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      YAML configuration:
    </p>
    <p>
      
    </p>
    <pre># app/config/config.yml
services:
    my_mailer:
        class:        Acme\HelloBundle\Mailer
&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;arguments:&#160;&#160;&#160;&#160;[sendmail]</pre>
    <p>
      During initialization Symfony2 builds the DIC using the application configuration (default <b>app/config/config.yml</b>), the exact file to be loaded is dictated by <b>AppKernel::registerContainerConfiguration()</b>&#160; method which loads environment specific configuration file ( config_dev.yml, config_prod.yml, ...)
    </p>
    <p>
      After initialization we can get any service by it's key
    </p>
    <ul>
      <li>
        in controller using <b>get</b>&#160;method:

        <pre>class HelloController extends Controller
{
    // ...

    public function sendEmailAction()
    {
        // ...
        $mailer = $this-&gt;get('my_mailer');
        $mailer-&gt;send('ryan@foobar.net', ...);
    }
}	</pre>
      </li>
    </ul>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1356896989179" ID="ID_1907101698" MODIFIED="1356897332776" TEXT="Service Parameters">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Parameters make defining services more organized and flexible:
    </p>
    <pre># app/config/config.yml
parameters:
    my_mailer.class:      Acme\HelloBundle\Mailer
    my_mailer.transport:  sendmail

services:
    my_mailer:
        class:        &quot;%my_mailer.class%&quot;
        arguments:    [%my_mailer.transport%]</pre>
    <p>
      Parameters advantages:
    </p>
    <ul>
      <li>
        separation and organization of all service &quot;options&quot; under a single <b><i>parameters</i></b>&#160;key
      </li>
      <li>
        parameter values can be used in multiple service definitions
      </li>
      <li>
        when creating service in a bundle, using parameters allows the service to be easily customized in the application
      </li>
    </ul>
    <p>
      High-quality third-party bundles will always use parameters as they make the service stored in the container more configurable.
    </p>
  </body>
</html></richcontent>
<node CREATED="1356897336675" ID="ID_1872600667" MODIFIED="1356897404046" TEXT="Array Parameters">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <pre># app/config/config.yml
parameters:
    my_mailer.gateways:
        - mail1
        - mail2
        - mail3
    my_multilang.language_fallback:
        en:
            - en
            - fr
        fr:
            - fr
            - en</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1356897407499" ID="ID_295587067" MODIFIED="1356898025735" TEXT="Importing other Container Configuration Resources">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Configuration could be loaded from anywhere (file, database, external web service, ...).
    </p>
    <p>
      By default the DIC is built by the <b>app/config/config.yml</b>&#160;file.
    </p>
    <p>
      Other service configuration (including core Symfony and 3rd party bundle configuration) must be imported from inside this file in some way.
    </p>
  </body>
</html></richcontent>
<node CREATED="1356898047955" ID="ID_1156381617" MODIFIED="1356898762224" TEXT="Importing with imports">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <pre># app/config/config.yml
imports:
    - { resource: @AcmeHelloBundle/Resources/config/services.yml }</pre>
    The imports directive allows the application to include DIC configuration from any other location (mostly from bundles). resource location (for files) is the absolute path to the resource file (special @AcmeHello.... syntax resolves directory path of the AcmeHelloBundle which helps to specify the resource path without worrying later if e.g. AcmeHelloBundle is moved to another directory)
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1356898763899" ID="ID_1910591972" MODIFIED="1356913181317" TEXT="Importing via Container Extensions">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Each bundle defines its services (using imports directive ...).
    </p>
    <p>
      Instead of importing each bundle resources directly using &quot;imports&quot; we can invoke bundle's <i>service container extension </i>
    </p>
    <p>
      Service container extension accomplishes 2 things:
    </p>
    <ul>
      <li>
        import all service container resources needed to configure the services for the bundle;
      </li>
      <li>
        provide semantic, straightforward configuration so that the bundle can be configured without interacting with the flat parameters of the bundle's service container configuration.
      </li>
    </ul>
    <p>
      Presence of following code in the application configuration file invokes service container extension inside the FrameworkBundle:
    </p>
    <pre># app/config/config.yml
framework:
    secret:          xxxxxxxxxx
    form:            true
    csrf_protection: true
    router:        { resource: &quot;%kernel.root_dir%/config/routing.yml&quot; }
    # ...</pre>
    <p>
      When the configuration is parsed, container looks for an extension that can handle the <b>framework</b>&#160;configuration directive. Found extension is invoked and configuration for corresponding bundle is loaded.
    </p>
    <p>
      Native DIC only recognizes <b>parameter</b>, <b>services</b>&#160;and <b>imports</b>&#160; directives. The rest is handled by service container extensions. (For implementation of user friendly configuration in a bundle see http://symfony.com/doc/current/cookbook/bundles/extension.html )
    </p>
    <p>
      When installing or configuring bundle see its documentation for how the services should be installed and configured. For core bundles the documentation can be found here: http://symfony.com/doc/current/reference/index.html
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1356913182782" ID="ID_1055684293" MODIFIED="1356913869047" TEXT="Referencing / Injecting Services">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Constructor injection, where class would look like this:
    </p>
    <p>
      
    </p>
    <pre>// src/Acme/HelloBundle/Newsletter/NewsletterManager.php
namespace Acme\HelloBundle\Newsletter;

use Acme\HelloBundle\Mailer;

class NewsletterManager
{
    protected $mailer;

    public function __construct(Mailer $mailer)
    {
        $this-&gt;mailer = $mailer;
    }

    // ...
}</pre>
    <p>
      Service configuration would look like:
    </p>
    <p>
      
    </p>
    <pre># src/Acme/HelloBundle/Resources/config/services.yml
parameters:
    # ...
    newsletter_manager.class: Acme\HelloBundle\Newsletter\NewsletterManager

services:
    my_mailer:
        # ...
    newsletter_manager:
        class:     &quot;%newsletter_manager.class%&quot;
        arguments: [@my_mailer]</pre>
    <p>
      
    </p>
    <p>
      In YAML, the special @my_mailer syntax tells the container to look for a service named my_mailer and to pass that object into the constructor of NewsletterManager. In this case, however, the specified service my_mailer must exist. If it does not, an exception will be thrown
    </p>
  </body>
</html></richcontent>
<node CREATED="1356913438886" ID="ID_1594061416" MODIFIED="1356913672954" TEXT="Optional Dependencies: Setter Injection">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      For optional dependencies of a class &quot;setter injection&quot;can be better alternative. It means injecting the dependency using a method call rather than through the constructor.
    </p>
    <p>
      The class would look like:
    </p>
    <p>
      
    </p>
    <pre>namespace Acme\HelloBundle\Newsletter;

use Acme\HelloBundle\Mailer;

class NewsletterManager
{
    protected $mailer;

    public function setMailer(Mailer $mailer)
    {
        $this-&gt;mailer = $mailer;
    }

    // ...
}</pre>
    <p>
      Injecting the dependency would look like:
    </p>
    <p>
      
    </p>
    <pre># src/Acme/HelloBundle/Resources/config/services.yml
parameters:
    # ...
    newsletter_manager.class: Acme\HelloBundle\Newsletter\NewsletterManager

services:
    my_mailer:
        # ...
    newsletter_manager:
        class:     &quot;%newsletter_manager.class%&quot;
        calls:
            - [ setMailer, [ @my_mailer ] ]</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1356913925366" ID="ID_1442648813" MODIFIED="1356914099196" TEXT="Making References Optional">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <pre># src/Acme/HelloBundle/Resources/config/services.yml
parameters:
    # ...

services:
    newsletter_manager:
        class:     &quot;%newsletter_manager.class%&quot;
        arguments: [@?my_mailer]</pre>
    <p>
      the special @? syntax marks the dependency as optional
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1356914220446" ID="ID_1215910896" MODIFIED="1356915495613" TEXT="Core Symfony and Third-Party Bundle Services">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Symfony2 injects the entire service container into your controller.
    </p>
    <p>
      In Symfony2, you'll constantly use services provided by the Symfony core or other third-party bundles to perform tasks such as rendering templates (templating), sending emails (mailer), or accessing information on the request (request).
    </p>
    <p>
      Using these services inside services that you've created for your application:
    </p>
    <pre>services:
    newsletter_manager:
        class:     &quot;%newsletter_manager.class%&quot;
        arguments: [@mailer, @templating]</pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1356915517670" ID="ID_575861044" MODIFIED="1356915739142" TEXT="Tags">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In the service container, a tag implies that the service is meant to be used for a specific purpose.
    </p>
    <p>
      Tags are a way to tell Symfony2 or other third-party bundles that your service should be registered or used in some special way by the bundle.
    </p>
    <pre>services:
    foo.twig.extension:
        class: Acme\HelloBundle\Extension\FooExtension
        tags:
&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;-&#160;&#160;{ name: twig.extension }</pre>
    <p>
      The twig.extension tag is a special tag that the TwigBundle uses during configuration.
    </p>
    <p>
      By giving the service this twig.extension tag, the bundle knows that the foo.twig.extension service should be registered as a Twig extension with Twig.
    </p>
    <p>
      In other words, Twig finds all services tagged with twig.extension and automatically registers them as extensions.
    </p>
    <p>
      List of tags available in the core symfony can be fouind here: http://symfony.com/doc/current/reference/dic_tags.html
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1356915740438" ID="ID_1032843648" MODIFIED="1356915808362" TEXT="Debugging Services">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      To show all services and the class for each service, run:
    </p>
    <pre>      $ php app/console container:debug
      $ php app/console container:debug --show-private
      $ php app/console container:debug my_mailer
    </pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1356915851086" ID="ID_1733826602" MODIFIED="1356915854440" TEXT="Cookbook">
<node CREATED="1356915858486" ID="ID_1567143527" MODIFIED="1356916247786" TEXT="Compiling the Container">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      see http://symfony.com/doc/current/components/dependency_injection/compilation.html
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1356894786234" HGAP="89" ID="ID_393047144" MODIFIED="1356895555929" TEXT="Service" VSHIFT="5">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Any PHP object is service when it performs some sort of &quot;global&quot; task or is used globally in the application (delivering email, persisting objects to database, ...): so Mailer object used whenever it's necessary to send an email is a service but the Messages objects the Mailer delivers are not services. Similarly, a Product object is not a service, but an object that persists it to a database is a service.
    </p>
    <p>
      
    </p>
    <p>
      To make a service simply write a PHP class with code that accomplishes a specific task.
    </p>
    <p>
      
    </p>
    <p>
      The advantage is in separating each piece of functionality in the application into a series of services. (see http://wikipedia.org/wiki/Service-oriented_architecture )
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1359566236727" ID="ID_1016543519" MODIFIED="1359566250064" POSITION="right" TEXT="Configuration">
<node CREATED="1359566251171" ID="ID_542448483" MODIFIED="1359566375487" TEXT="Master and Create new Environments">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      - idea of &quot;environments&quot; is the idea that the same codebase can be run using multiple different configurations
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1359566606380" ID="ID_521117494" MODIFIED="1360187649025" TEXT="Environments and the Cache Directory&#xb6;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Sometimes, when debugging, it may be helpful to inspect a cached file to understand how something is working. When doing so, remember to look in the directory of the environment you're using (most commonly dev while developing and debugging). While it can vary, the app/cache/dev directory includes the following:
    </p>
    <ul>
      <li>
        <b>appDevDebugProjectContainer.php</b>&#160;- the cached &quot;service container&quot; that represents the cached application configuration;
      </li>
      <li>
        <b>appdevUrlGenerator.php</b>&#160;- the PHP class generated from the routing configuration and used when generating URLs;
      </li>
      <li>
        <b>appdevUrlMatcher.php</b>&#160;- the PHP class used for route matching - look here to see the compiled regular expression logic used to match incoming URLs to different routes;
      </li>
      <li>
        <b>twig/</b>&#160;- this directory contains all the cached Twig templates.
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</map>
