pipeline {
    agent any 
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
        }
    stages{
        stage('AWS credentials'){
            steps{
                 withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'AWS_SECRET_ACCESS_KEY')]) {
   
                 }
            }
        }
        stage('Terraform init'){
            steps{
                sh "terraform init"
            }
        }
    }   
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform', type: 'terraform'
    return tfHome
}