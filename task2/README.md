# Introduction 
- This is deployed using Azure DevOps to use it's build pipeline.
- Yaml based build pipeline is used for the k8s cluster deployment.
- k8s-config folder is used to rollout updates nad deployment.
- The repository that will be created will have the name ```app-branchname:buildid``` for multi-branch deployment.
- The connection that mentioned(azureSubscriptionEndpoint) in the pipeline needs to be provided after connection is done. 