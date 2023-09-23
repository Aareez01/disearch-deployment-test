import groovy.json.*

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
                withCredentials([file(credentialsId: 'disearchrd', variable: 'credFile')]) {
                    def credentials = new JsonSlurper().parseText(file('credFile'))
                    def password = credentials['type']['value']
    
                    echo "Password: ${password}"
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
