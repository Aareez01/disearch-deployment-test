pipeline {
    agent any
    environment {
        EXAMPLE_CREDS = credentials('disearchrd')
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform code from your version control system (e.g., Git)
                checkout scm
            }
        }

        stage('getCred') {
            steps {
                script {
                    // Define the credentials ID for the secret file
                    def secretFileCredentialId = 'disearchrd'

                    // Use the withCredentials step to access the secret file
                    withCredentials([file(credentialsId: secretFileCredentialId, variable: 'SECRET_FILE')]) {
                        // You can now use the SECRET_FILE variable to refer to the secret file
                        // sh "cat \$SECRET_FILE" // Example command to read the secret file

                        // Read the secret file into a string
                        def credFileContents = readFile(SECRET_FILE)

                        // Parse the JSON string into a Python object
                        import json
                        credFile = json.loads(credFileContents)
        
                        // Get the value of the `project_id` key
                        projectId = credFile["project_id"]
        
                        // Print the value of `project_id`
                        //println(projectId)
                        sh "cat \$projectId"
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
