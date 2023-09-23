pipeline {
    agent any

    parameters {
        string(name: 'TF_VAR_NAME', defaultValue: 'projectName')
        string(name: 'TF_VAR_VALUE', defaultValue: 'helloWorld')
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
                // Run terraform init with environment variables
                sh 'terraform init -var "${TF_VAR_NAME}=${TF_VAR_VALUE}"'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -var "${TF_VAR_NAME}=${TF_VAR_VALUE}" -auto-approve'
            }
        }
    }
}
