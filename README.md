## Task instructions for DevOps 

### Setup a Kubernetes cluster using kind 
1. Write a simple bash script that deploys a [kind](https://kind.sigs.k8s.io/docs/user/quick-start/)  cluster locally

![kind](https://github.com/Benn1440/Ansible/assets/67696393/8c8b2d85-4502-42c1-9e18-0031cb82d510)

2. Download the kubeconfig for the cluster and store in a safe place
    $ kind get kubeconfig --name=kubecuster > kubeconfig.yaml

    To use the generated kubeconfig file with kubectl to interact with KinD cluster, set the KUBECONFIG environment variable to point to the file 

    $ export KUBECONFIG="./kubeconfig.yaml"

    ![KK](https://github.com/Benn1440/Ansible/assets/67696393/38689954-a4e5-4fcf-ad7b-58b3d25f0237)

    $ kubecktl get nodes


### Deploy a sample Node.js app using terraform

1. When kind is up and running, dockerize a simple hello world [express](https://expressjs.com/en/starter/hello-world.html) and deploy to dockerhub
2. create a kubernetes deployment manifest to deploy to deploy the Node.js to the kind cluste but don't apply it yet
3. using the [kubectl terraform provider](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs), write a terraform code to deploy the kubectl manifest to the kind cluster 

### Bonus

1. Using the [kube-prometheus stack](https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/README.md), using [terraform helm provider](https://registry.terraform.io/providers/hashicorp/helm/latest/docs), setup monitoring and observability for the prometheus cluster.

### Submission

1. Create a repository with all your code in it

   
