podman build -t ol-flight -f Dockerfile-ol . 
podman build -t wl-flight -f Dockerfile-wl .
podman build -t wf-flight -f Dockerfile-wf .
podman build -t pm-flight -f Dockerfile-pm .
podman build -t qu-flight -f Dockerfile-qu .
podman build -t qn-flight -f Dockerfile-qn .
podman build -t tm-flight -f Dockerfile-tm .
podman build -t hd-flight -f Dockerfile-hd .
podman build -t hdi4-flight -f Dockerfile-hd4 .
podman build -t ol-io-flight -f Dockerfile-io --cpu-quota=200000 -m 1g --cap-add=CHECKPOINT_RESTORE --cap-add=SYS_PTRACE --security-opt seccomp=unconfined .

sed -i "s@<feature>microProfile-7.0</feature>@<feature>microProfile-6.1</feature>@" src/main/liberty/config/server.xml
podman build -t old-flight -f Dockerfile-old
sed -i "s@<feature>microProfile-6.1</feature>@<feature>microProfile-7.0</feature>@" src/main/liberty/config/server.xml
