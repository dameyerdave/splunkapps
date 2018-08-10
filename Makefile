default:
	tar czf deploy_apps.tar.gz init.sh servers.cnf $(shell ls -d */)
master:
	tar czf master_apps.tar.gz init.sh servers.cnf secure_management_traffic secure_input_traffic license_client disable_web baseline_IDX
clean:
	rm -f *.tar.gz
