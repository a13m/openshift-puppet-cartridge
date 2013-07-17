openshift-puppet-cartridge
==========================

An experimental puppet cartridge for OpenShift.  Currently this downloads
facter and puppet, installs them, and attempts to set up a working puppet
config.

Current usage
-------------

* `rhc cartridge add "http://cartreflect-claytondev.rhcloud.com/reflect?github=a13m/openshift-puppet-cartridge" -a _your-app-name_`
* `rhc ssh`
* Test facter (some "Permission denied" warnings are normal):  `facter`
* Test puppet:
```
cd app-root/data/
cat <<EOF >foo.pp
file {'testfile':
      path    => '/tmp/testfile',
      ensure  => present,
      mode    => 0640,
      content => "I'm a test file.",
    }
EOF
puppet apply foo.pp
```

