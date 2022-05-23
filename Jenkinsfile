pipeline {
    agent any 
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
        }
    stages{
        stage('Create S3 Bucket with Ansible') {
            steps {
              sh "ansible-playbook s3backend.yml"            
            }
        }
        stage('Terraform init and deploy to dev'){
            steps{
              sh label: '', returnStatus: true, script: 'terraform workspace new dev'
              sh "terraform init -reconfigure"
              sh "terraform apply --auto-approve -var-file dev.tfvars"
            }
        } 
        stage('Terraform init and deploy to prod'){
            steps{
              sh label: '', returnStatus: true, script: 'terraform workspace new prod'
              sh "terraform init -reconfigure"
              sh "terraform apply --auto-approve -var-file prod.tfvars"
            }
        }    
    }   
}
def getTerraformPath(){
    def tfHome = tool name: 'terraform', type: 'terraform'
    return tfHome
}