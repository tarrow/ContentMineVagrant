# ContentMineVagrant
A Vagrant file and simple provisioner for contentmine development.

To set up the evironment download and install vagrant and virtualbox.

Then run `vagrant up` form this directory. You can then connect to the VM with `vagrant ssh`.

This will automatically have downloaded the latest stable `getpapers` and `quickscrape` as well as installed OpenJDK and maven3.

You can download the latest development code from git by using `getCodeFromGit.sh` from with within the VM.

This can then be built using `buildCmineNormaAmi.sh`

