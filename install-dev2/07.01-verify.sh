watch -n 10 '
echo ==== lifecycle-manager     ====;
oc get pods -n lifecycle-manager ; 
echo ==== ibm-common-services   ====;
oc get pods -n ibm-common-services ; 
echo ==== openshift-marketplace ====
oc get pods -n openshift-marketplace
' 