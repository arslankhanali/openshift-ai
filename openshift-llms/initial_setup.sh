# https://raw.githubusercontent.com/arslankhanali/openshift-helper/main/

# See the machineset of workers that are already running and make changes as per the comments in file below before you apply it
oc apply -f https://raw.githubusercontent.com/arslankhanali/openshift-helper/main/yamls/machineset_g5.12xlarge.yaml
sleep 30


wget https://raw.githubusercontent.com/arslankhanali/openshift-helper/main/scripts/rhpds_llm_BaseRHOAIonAWS.sh
chmod +x rhpds_llm_BaseRHOAIonAWS.sh
./rhpds_llm_BaseRHOAIonAWS.sh
sleep 60
rm rhpds_llm_BaseRHOAIonAWS.sh


oc apply -f https://raw.githubusercontent.com/arslankhanali/openshift-helper/main/crds/ai_acceleratorprofile.yaml
sleep 3

oc apply -f https://raw.githubusercontent.com/arslankhanali/openshift-helper/main/crds/ai_project.yaml 