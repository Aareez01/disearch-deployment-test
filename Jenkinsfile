pipeline {
    agent any
    environment {
        EXAMPLE_CREDS = credentials('disearchrd')
    }

    stages {
        stage('getCred') {
            steps {
                script {
                    // Define the credentials ID for the secret file
                    def secretFileCredentialId = 'disearchrd'
                    
                    // Extract the 'project_id' value from the JSON
                    // def projectId = jsonContent.project_id
                    
                    // You can now use projectId in your Jenkins pipeline
                    // echo "Project ID: $secretFilePath"

                    // Use the withCredentials step to access the secret file
                    withCredentials([file(credentialsId: secretFileCredentialId, variable: 'SECRET_FILE')]) {
                        // You can now use the SECRET_FILE variable to refer to the secret file
                        sh "cat \$SECRET_FILE" // Example command to read the secret file

                        def fileContent = $SECRET_FILE
                        
                        // You can now use the secretFilePath variable to refer to the secret file
                        def jsonContent = readJSON $fileContent
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
