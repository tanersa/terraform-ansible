pipeline {
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
        }
    stages{
        stage('Terraform init'){
            steps{
                sh "terraform init"
            }
        }
    }   
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform1.2', type: 'terraform'
    return tfHome
}