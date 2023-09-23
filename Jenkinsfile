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
                withCredentials([file(credentialsId: 'disearchrd', variable: 'JSON_FILE')]) {
                    script {
                        def jsonContent = readFile file: "${JSON_FILE}"
                        def json = readJSON text: jsonContent

                        // Now you can work with the parsed JSON data.
                        echo "Parsed JSON: ${json}"

                        // Access JSON properties, for example:
                        def value1 = json.type
                        def value2 = json.project_id

                        echo "Value1: ${value1}"
                        echo "Value2: ${value2}"
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
