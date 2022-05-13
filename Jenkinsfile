//def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId:'sharkscreds']]

pipeline {
    agent any 
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
        }
    stages{
        stage('test AWS credentials') {
            steps {
                withAWS(credentials: 'sharkscreds', region: 'us-east-2') {
                }
            }
        }
        stage('Create S3 bucket with ansible'){
            steps{
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
    def tfHome = tool name: 'terraform', type: 'terraform'
    return tfHome
}

