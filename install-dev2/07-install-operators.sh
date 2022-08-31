cat <<EOF | oc apply -f -
apiVersion: operators.coreos.com/v1alpha2
kind: OperatorGroup
metadata:
  name: ibm-tnc-orchestration-catalog-group
  namespace: lifecycle-manager
spec:
  targetNamespaces:
  - lifecycle-manager
EOF

cat <<EOF | oc apply -f -
apiVersion: operators.coreos.com/v1alpha1
kind: Subscription
metadata:
  name: ibm-tnc-orchestration-subscription
  namespace: lifecycle-manager
spec:
  channel: v2.4
  name: ibm-tnc-orchestration-operator
  installPlanApproval: Automatic
  source: ibm-tnc-orchestration-catalog
  sourceNamespace: openshift-marketplace
EOF