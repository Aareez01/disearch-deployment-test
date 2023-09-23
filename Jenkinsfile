pipeline {
    agent any

    environment {
        projectID = 'disearchrd'
    }

    stages {
        stage('getCred') {
            steps {
                script {
                    // Define the credentials ID for the secret file
                    def credentials = "/creds/${env.projectID}/secret.json"

                    sh "ls -l \${credentials}"
                    sh "cat \${credentials}"
                    
                    // withCredentials([file(credentialsId: secretFileCredentialId, variable: 'SECRET_FILE')]) {
                        // Inject the secret file content into a new environment variable
                        // sh "ls -l \$SECRET_FILE"
                        // sh 'cat \$SECRET_FILE'
                    // }
                    
                    // sh 'ls -l /creds'
                    // sh 'ls -l /creds/\$secretFileCredentialId'
                    // sh 'cat /creds/\$secretFileCredentialId/secret.json'

                    // Use the withCredentials step to access the secret file
                    // withCredentials([file(credentialsId: secretFileCredentialId, variable: 'SECRET_FILE')]) {
                        // env.SECRET_FILE_CONTENT = readFile("$SECRET_FILE")
                        // println env.SECRET_FILE_CONTENT
                        // echo "$env.SECRET_FILE_CONTENT"
                        
                        // You can now use the SECRET_FILE variable to refer to the secret file
                        // sh "cat \$SECRET_FILE" // Example command to read the secret file
                        
                        // sh 'terraform init -var="projectName=$secret"'
                        // sh 'terraform apply -var="projectName=$secret" -auto-approve'
                    // }
                }
            }
        }

        // Display the secret file content
        // stage('displaySecret') {
        //     steps {
        //         echo env.SECRET_FILE_CONTENT
        //     }
        // }
        
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
