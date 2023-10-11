CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" ol-flight)
sleep 20
curl localhost:9080/flight/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" wf-flight)
sleep 20
curl localhost:9080/flight/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" pm-flight)
sleep 20
curl localhost:9080/flight/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" tm-flight)
sleep 20
curl localhost:9080/flight/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" hd-flight)
sleep 20
curl localhost:9080/flight/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" qu-flight)
sleep 20
curl localhost:9080/flight/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" qn-flight)
sleep 20
curl localhost:9080/flight/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" --cap-add=CHECKPOINT_RESTORE --cap-add=SETPCAP --security-opt seccomp=unconfined ol-io-flight)
sleep 20
curl localhost:9080/flight/status
podman stop ${CID}
podman rm ${CID}
