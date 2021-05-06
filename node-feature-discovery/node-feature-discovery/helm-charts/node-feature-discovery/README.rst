kubernetes-sigs/node-feature-discovery
======================================

This chart is taken from the "deployment" directory of version
v0.8.1 of the node-feature-discovery package as implemented at
https://github.com/kubernetes-sigs/node-feature-discovery

I made one change from the upstream code, I set the chart version to
0.8.1 to match the git tag and chart appVersion.  This ensures that the
chart tarball is versioned appropriately.

This software enables node feature discovery for Kubernetes. It detects
hardware features available on each node in a Kubernetes cluster, and
advertises those features using node labels.

A DaemonSet spawns a pod on each node in the cluster to scan the host,
and feeds its information to a single "manager" pod running on a
controller node.

The Docker image specified is the one published by the upstream team.

