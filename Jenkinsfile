pipeline {
    agent any

    environment {
        SECRET_FILE_CONTENT = ''
    }

    stages {
        stage('getCred') {
            steps {
                script {
                    // Define the credentials ID for the secret file
                    def secretFileCredentialId = 'disearchrd'

                    // Use the withCredentials step to access the secret file
                    withCredentials([file(credentialsId: secretFileCredentialId, variable: 'SECRET_FILE')]) {
                        env.SECRET_FILE_CONTENT = readFile("$SECRET_FILE_CONTENT")
                        echo "$env.SECRET_FILE_CONTENT"
                        
                        // You can now use the SECRET_FILE variable to refer to the secret file
                        // sh "cat \$SECRET_FILE" // Example command to read the secret file
                        
                        // sh 'terraform init -var="projectName=$secret"'
                        // sh 'terraform apply -var="projectName=$secret" -auto-approve'
                    }                    
                }
            }
        }
        
        stage('Terraform Init') {
            steps {
                echo 'Terraform Init'
                // Run terraform init with environment variables
                // sh 'terraform init -var="projectName=helloWorld"'
            }
        }

        stage('Terraform Apply') {
            steps {
                echo 'Terraform Apply'
                // sh 'terraform apply -var="projectName=helloWorld" -auto-approve'
            }
        }
    }
}
