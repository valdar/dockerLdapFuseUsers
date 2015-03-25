# valdar/ldapusersfuse

A docker image to run OpenLDAP with some preloaded fuse user's data.
> [www.openldap.org](http://www.openldap.org/)
> [www.jboss.org/products/fuse](http://www.jboss.org/products/fuse)

Based on osixia's docker-openldap :
https://github.com/osixia/docker-openldap

Add some initial users and group data to demo ldap autentication capabilites of Jboss Fuse.

## Quick start
Run OpenLDAP docker image :

	docker run -d valdar/ldapusersfuse
  
This start a new container with a OpenLDAP server running inside and with some preloaded data:
- an user: fuseldap password: fuseldap which is part of the admin group
- and another user: notfuseldap password: notfuseldap which is not


## Tests

We use **Bats** (Bash Automated Testing System) to test this image:

> [https://github.com/sstephenson/bats](https://github.com/sstephenson/bats)

Install Bats, and in this project's test directory run :

	export NAME=ldapusersfuse
	export VERSION=1.0.0
	bats test.bats


	

