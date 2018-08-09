default:
	tar czf basic_apps.tar.gz init.sh servers.cnf $(shell ls -d */)
clean:
	rm -f basic_apps.tar.gz
