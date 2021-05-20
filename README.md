
# ReacApp
## Local Execution

In the project directory, you can run (Local):

### `cd react-app`

### `npm install react-scripts`

### `npm start`


http://localhost:3000/bcfm

C:\Users\secil\Desktop\react\reactapp\Uygulama.PNG

# CI-CD / Azure Devops

* Commit Atıldığında Pipeline tetiklenmesi aşağıdaki şekilde sağlanmıştır.
  
  C:\Users\secil\Desktop\react\reactapp\CommitContiniousIntegration.PNG
* Pipeline Sonar Qube Taramasından Geçirilmiştir.
  
  C:\Users\secil\Desktop\react\reactapp\Pipeline.PNG
* Quality Gate Check 

  C:\Users\secil\Desktop\react\reactapp\QualityGateCheck.PNG
* Helm Deploy
  
```
helm upgrade bhelm  $(System.DefaultWorkingDirectory)/_BCFM/helm --reuse-values --set containers.imageName=secilns/bcfm:$(Build.BuildId)v
```
* Auto Scale

C:\Users\secil\Desktop\react\reactapp\HpaCpuAutoscale.PNG

* http://secil.tech/bcfm




