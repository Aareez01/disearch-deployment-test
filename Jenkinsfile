pipeline {
    agent any

    environment {
        TF_VAR_projectName = "helloWorld"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform code from your version control system (e.g., Git)
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                // Run terraform init
                sh 'terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                // Run terraform apply
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
