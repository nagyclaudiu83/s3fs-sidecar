Sidecar container to mount an s3 bucket and share it with another container in
the same pod.

Create secret with:

`kubectl create secret generic awssecret --from-literal=AWSACCESSKEYID='MYACCESSKEYIDXXXXX' --from-literal=AWSSECRETACCESSKEY='mySecretKeyDontTellAnyone'`


Example pod config:

```
  Check test.yaml  

```

Build

podman build -t docker.io/nagyclaudiu83/s3fs-sidecar:tag --net=host .

podman push docker.io/nagyclaudiu83/s3fs-sidecar:tag
