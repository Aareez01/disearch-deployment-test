pipeline {
    agent any

    stages {
        stage('Example') {
            steps {
                script {
                    // Define the credentials ID for the secret file
                    def secretFileCredentialId = 'disearchrd'

                    // Use the withCredentials step to access the secret file
                    withCredentials([file(credentialsId: secretFileCredentialId, variable: 'disearchrdFile')]) {
                        // Set the Terraform variable using the content of the secret file
                        def projectName = readFile("$disearchrdFile").trim()
                        env.TF_VAR_projectName = projectName

                        // Run Terraform
                        sh "terraform init"
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }
    }
}
