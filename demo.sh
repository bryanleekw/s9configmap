# Deploy the configMap
kubectl create -f configmap.yaml

kubectl replace -f configmap.yaml


################################
# Create the Pod with Env Var
################################
kubectl create -f pod-cmd.yaml

# Check the logs
kubectl log test-pod-cmd

################################
# Create the Pod with Env Var
################################
kubectl create -f pod-env.yaml

# CHeck the env vars
kubectl exec -it test-pod-env /bin/sh


# issue env command 
KUBERNETES_PORT=tcp://10.96.0.1:443
KUBERNETES_SERVICE_PORT=443
LOG_LEVEL=INFO
HOSTNAME=test-pod-env
SHLVL=1
HOME=/root
TERM=xterm
KUBERNETES_PORT_443_TCP_ADDR=10.96.0.1
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
KUBERNETES_PORT_443_TCP_PORT=443
KUBERNETES_PORT_443_TCP_PROTO=tcp
KUBERNETES_PORT_443_TCP=tcp://10.96.0.1:443
KUBERNETES_SERVICE_PORT_HTTPS=443
LOG_LOCATION=LOCAL
PWD=/
KUBERNETES_SERVICE_HOST=10.96.0.1
/ # 


################################
# Create the POd with Env Var
################################
kubectl create -f pod-vol.yaml

# Check the logs
kubectl logs test-pod-vol

# Access the shell
kubectl exec -it test-pod-vol /bin/sh

################################
# Check the files
################################
cd /etc/config
cat log.level
cat log.location

