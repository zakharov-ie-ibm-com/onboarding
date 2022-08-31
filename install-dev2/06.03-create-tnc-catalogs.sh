
sudo mkdir -p /tmp/case/
sudo chmod 777 -R /tmp/

src=$HOME/bin/cloudctl
cloudctl=/usr/local/bin/cloudctl

sudo cp $src $dst

sudo $cloudctl case launch --case ibm-tnc-orchestration     \
    --namespace lifecycle-manager     \
    --inventory orchestrationOperatorSetup  \
    --action install-catalog     \
    --args "--registry icr.io --inputDir /root/case/outputdir" --tolerance 1