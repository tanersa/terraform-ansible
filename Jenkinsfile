//def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId:'sharkscreds']]

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
        stage('Terraform init'){
            steps{
            }
        }
    }   
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform1.2', type: 'terraform'
    return tfHome
}

