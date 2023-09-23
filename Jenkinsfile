pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform code from your version control system (e.g., Git)
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                // Run terraform init with environment variables
                sh 'terraform init'
            }
        }

        stage('Terraform Apply') {
            environment {
                TF_VAR_projectName = "helloWorld"
            }
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
