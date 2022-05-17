# Aide-mémoire

## Task 1

### code api-svc.yaml

### code frontend-pod.yaml

## Task 2

### code frontend-svc.yaml

### add img gke console

## add img kubectl describe

### problem happend

I forgot to change the context. It's work better after.

kubectl config use-context gke_gke-cluster-1-350109_europe-central2-a_gke-cluster-1

## Task 3

### copy the 3 deploy.yaml files

### problem happend

I made a mistake I wrote Deployement instead of Deployment.Therefore I wasn't able to deploy the app.
I had a problem with the update of gcloud but I don't think it was the main problem. 

### delete redis

Items in the to-do list disappears and it takes around 3 minutes to come back. The items are gone but you can add new one.

### How can you change the number of instances temporarily to 3? Hint: look for scaling in the deployment documentation

kubectl autoscale deployment frontend --min=3

### What autoscaling features are available? Which metrics are used?

**The most useful**

* cpu-percent: The target average CPU utilization
* max: max instance
* min: min intance
* TYPE/NAME: e.g deployment/api
    * -f: yaml filname (do the same job as above)

### How can you update a component? (see "Updating a Deployment" in the deployment documentation)

You can set some parameters with the command kubectl set.

Example:

    kubectl set image deployment nginx nginx=nginx:1.9.1
    kubectl set resources deployment nginx --limits cpu=200m,memory=512Mi --requests cpu=100m,memory=256Mi

## Task 4

### yaml didn't change

### add img get all

### problem happend

I got some errors because the namespace must be in low case.

    kubectl apply -f api-deploy.yaml -n l6gri
    kubectl apply -f api-svc.yaml -n l6gri

On the website https://kubernetes.iict.ch/ there are many errors due to the limit of pull from image. We can see the app but can't add item in the list.