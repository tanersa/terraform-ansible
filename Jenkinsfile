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
                sh "terraform init -backend-config=access_key=AKIASK4KSAW2JGSPPOV2 -backend-config=secret_key=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"
            }
        }
    }   
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform', type: 'terraform'
    return tfHome
}

