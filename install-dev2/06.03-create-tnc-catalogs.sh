
sudo mkdir -p /tmp/case/
sudo chmod 777 -R /tmp/

src=$HOME/bin/cloudctl
dst=/usr/local/bin/cloudctl

sudo cp $src $dst

$dst case launch --case ibm-tnc-orchestration     \
    --namespace lifecycle-manager     \
    --inventory orchestrationOperatorSetup  \
    --action install-catalog     \
    --args "--registry icr.io --inputDir $HOME/case/outputdir" --tolerance 1