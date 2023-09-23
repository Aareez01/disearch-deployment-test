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
                // Set Terraform environment variables
                script {
                    env.TF_VAR_projectName = "helloWorld"
                }
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
