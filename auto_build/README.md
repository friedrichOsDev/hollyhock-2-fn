# Auto build (Only for Windows)
## Requirements

**Git Clone this Repo to your pc (Windows)**

**Windows**
- Install [Docker Desktop](https://www.docker.com/products/docker-desktop)
- Install the MinGW-Installer
- Select `mingw32-base-bin` (from All Packages -> MinGW -> MinGW Base System) -> right click -> 'Mark for installation'
- Select `mingw32-libz-dev` (from All Packages -> MinGW -> MinGW Libaries -> MinGW Standard Libaries) -> right click -> 'Mark for installation'
- Click on  'Installation' -> 'Apply Changes'

## Build

**Windows**
1. go to the folder where you cloned hollyhock-2-fn and then into the auto_build folder
2. build the __docker-vm__ there: run [build_run_docker.bat](build_run_docker.bat) (the first time you build the docker vm takes a __long__ time)
3. in the vm run following command: `cd auto_build && sh build.sh`
4. keep the vm running and proceed with the next step.
5. now run [build.bat](build.bat). this will create a folder (Snail2021) on your Desktop with the Snail2021.exe 
6. after that, in the vm run the follwing command: `cd ../patcher && make clean`
7. then you can close the vm. either type `exit` or close the window.
8. now you are ready to install [hollyhock-2-fn](../README.md#installation-simple) (you can skip step 2 and 3 because you build it yourself)