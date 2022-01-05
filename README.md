
# ReacApp
## Local Execution

In the project directory, you can run (Local):

### `cd react-app`

### `npm install react-scripts`

### `npm start`

http://localhost:3000/secill

* CI-CD / Azure Devops - https://dev.azure.com/secilnurr/secill
  
* Helm Deploy
  
```
helm upgrade bhelm  $(System.DefaultWorkingDirectory)/_secill/helm --reuse-values --set containers.imageName=secilns/secill:$(Build.BuildId)v
```
* docker pull secilns/secill:127v

```
gcloud container clusters create cluster-1
```



