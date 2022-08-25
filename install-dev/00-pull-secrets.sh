ln -sf .dockerconfigjson $HOME
oc set data secret/pull-secret -n openshift-config --from-file=.dockerconfigjson
