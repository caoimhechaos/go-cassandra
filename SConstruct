opts = Variables( 'options.conf', ARGUMENTS )
opts.Add("DESTDIR", 'Set the root directory to install into ( /path/to/DESTDIR )', "")

env = Environment(ENV = {'GOROOT': '/usr/lib/go'}, TOOLS=['default', 'go'],
		  options = opts)

cassandra = env.Go('Cassandra', ["Cassandra.go", "ttypes.go"])
pack = env.GoPack('Cassandra', cassandra)

env.Install(env['DESTDIR'] + env['GO_PKGROOT'] +
	    '/thriftlib', pack)
env.Alias('install', [env['DESTDIR'] + env['GO_PKGROOT'] +
	  '/thriftlib'])

opts.Save('options.conf', env)
