oc delete secret docker-registry ibm-entitlement-key --namespace=alm
oc create secret docker-registry ibm-entitlement-key \
    --docker-username=cp \
    --docker-password="$(cat 00-entitlement.txt)" \
    --docker-server=cp.icr.io \
    --namespace=alm