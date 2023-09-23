pipeline {
    agent any

    stages {
        stage('getCred') {
            steps {
                script {
                    // Define the credentials ID for the secret file
                    def secretFileCredentialId = 'disearchrd'

                    // Use the withCredentials step to access the secret file
                    withCredentials([file(credentialsId: secretFileCredentialId, variable: 'SECRET_FILE')]) {
                        // You can now use the SECRET_FILE variable to refer to the secret file
                        // sh "cat \$SECRET_FILE" // Example command to read the secret file
                        sh "cat \$SECRET_FILE | jq -r '.project_id'" // Example command to read the secret file
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
