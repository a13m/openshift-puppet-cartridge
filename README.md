openshift-puppet-cartridge
==========================

An experimental puppet cartridge for OpenShift.  Currently this downloads
facter and puppet, installs them, and attempts to set up a working puppet
config.

Suggested usage
-------------

* `rhc cartridge add "http://cartreflect-claytondev.rhcloud.com/reflect?github=a13m/openshift-puppet-cartridge" -a _your-app-name_`
* Create .openshift/puppet/init.pp in your app repository.  For example:

```
file {'testfile':
      path    => '/tmp/testfile',
      ensure  => present,
      mode    => 0640,
      content => "I'm a test file.",
    }
```

* In .openshift/action_hooks/deploy in your app repository, add the following line:

```
puppet apply $OPENSHIFT_REPO_DIR/.openshift/puppet/init.pp
```
