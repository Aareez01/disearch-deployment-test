// import groovy.json.*

pipeline {
    agent any

    environment {
        SECRET_FILE = ''
    }

    stages {
        stage('getCred') {
            steps {
                script {
                    // Define the credentials ID for the secret file
                    def secretFileCredentialId = 'disearchrd'

                    // Use the withCredentials step to access the secret file
                    withCredentials([file(credentialsId: secretFileCredentialId, variable: 'SECRET_FILE')]) {
                        env.SECRET_FILE = readFile("$SECRET_FILE")
                        echo env.SECRET_FILE
                        // You can now use the SECRET_FILE variable to refer to the secret file
                        // sh "cat \$SECRET_FILE" // Example command to read the secret file

                        // Read the content of the secret file into a variable
                        // def SECRET_FILE_CONTENT = readFile("$SECRET_FILE").trim()

                        // Assign the content to an environment variable
                        // env.SECRET_FILE_CONTENT = secretFileContent
                        
                        // Print the content without Jenkins masking it
                        // echo secretFileContent
                        // echo env.SECRET_FILE_CONTENT
                    }
                    // Print the content without Jenkins masking it
                    // echo env.SECRET_FILE_CONTENT
                    
                    // You can also parse it as JSON if needed
                    // def credentialsFile = readJSON text: secretFileContent
                    // def firstKey = credentialsFile.keySet().iterator().next()
                    // echo firstKey
                    
                    // sh 'terraform init -var="projectName=$secret"'
                    // sh 'terraform apply -var="projectName=$secret" -auto-approve'
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
