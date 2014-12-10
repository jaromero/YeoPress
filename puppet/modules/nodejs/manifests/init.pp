class nodejs
{
	exec
	{
		"add-ppa":
			command => "apt-get -y install python-software-properties",
			timeout => 0
	}

	exec
	{
		"ppa-node":
			command => "add-apt-repository ppa:chris-lea/node.js",
			require => Exec["add-ppa"],
			timeout => 0
	}

	exec
	{
		"install-node":
			command => "apt-get update && apt-get -y install nodejs",
			require => Exec["ppa-node"],
			timeout => 0
	}
}
