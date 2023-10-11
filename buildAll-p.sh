podman build -t ol-flight -f Dockerfile-daily . 
podman build -t wf-flight -f Dockerfile-wf .
podman build -t pm-flight -f Dockerfile-pm .
podman build -t qu-flight -f Dockerfile-qu .
podman build -t qn-flight -f Dockerfile-qn .
podman build -t tm-flight -f Dockerfile-tm .
podman build -t hd-flight -f Dockerfile-hd .
podman build -t ol-io-flight -f Dockerfile-daily-io --cpuset-cpus="2-3" --cap-add=CHECKPOINT_RESTORE --cap-add=SYS_PTRACE --security-opt seccomp=unconfined .
