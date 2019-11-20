import subprocess as sp
version = sp.check_output("apt-cache madison docker-ce", shell=True).split("|")[1].strip()
sp.check_output("sudo apt-get install docker-ce={} docker-ce-cli={} containerd.io".format(version, version), shell=True)
