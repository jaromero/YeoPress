class nodejs
{
	exec
	{
		"install-curl":
			command => "apt-get -y install curl",
			timeout => 0
	}

	exec
	{
		"setup-node-repository":
			command => "curl -sL https://deb.nodesource.com/setup | sudo bash -",
			require => Exec["install-curl"],
			timeout => 0
	}

	exec
	{
		"install-node":
			command => "apt-get update && apt-get -y install nodejs",
			require => Exec["setup-node-repository"],
			timeout => 0
	}
}
