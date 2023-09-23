pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform code from your version control system (e.g., Git)
                checkout scm
            }
        }

        stage('getCred'){
            steps {
                script {
                    // Define the credentials ID for the secret file
                    def secretFileCredentialId = 'disearchrd'
                    // Use the withCredentials step to access the secret file
                    withCredentials([file(credentialsId: secretFileCredentialId, variable: 'disearchrdFile')]) {
                        // You can now use the SECRET_FILE variable to refer to the secret file
                        sh "cat \$disearchrdFile.type" // Example command to read the secret file
                    }
                }
            }
        }

        stage('Terraform Init') {
            steps {
                // Run terraform init with environment variables
                sh 'terraform init -var="projectName=helloWorld"'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -var="projectName=helloWorld" -auto-approve'
            }
        }
    }
}
