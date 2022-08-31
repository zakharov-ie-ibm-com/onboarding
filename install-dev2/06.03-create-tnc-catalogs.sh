cloudctl case launch --case ibm-tnc-orchestration     \
    --namespace lifecycle-manager     \
    --inventory orchestrationOperatorSetup  \
    --action install-catalog     \
    --args "--registry icr.io --inputDir /root/case/outputdir" --tolerance 1