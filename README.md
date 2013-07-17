openshift-puppet-cartridge
==========================

An experimental puppet cartridge for OpenShift.  Currently this downloads
facter and puppet, installs them, and attempts to set up a working puppet
config.

== Current usage ==

* `rhc cartridge add -a _your-app-name_`
* `rhc ssh`
* `export PATH=$OPENSHIFT_PUPPET_DIR/bin:$PATH`
* `export RUBYLIB=$OPENSHIFT_PUPPET_DIR/lib`
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

