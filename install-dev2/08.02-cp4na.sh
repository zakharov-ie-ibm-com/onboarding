
yq -i eval ".spec.license.accept=true" 08.02-cp4na.yaml


oc apply  -f 08.02-cp4na.yaml -n lifecycle-manager
