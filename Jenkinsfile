pipeline {
    agent any

    stages {
        stage('Example') {
            steps {
                script {
                    // Define the credentials ID for the secret file
                    def secretFileCredentialId = 'disearchrd'

                    // Use the withCredentials step to access the secret file
                    withCredentials([file(credentialsId: secretFileCredentialId, variable: 'disearchrd')]) {
                        // You can now use the SECRET_FILE variable to refer to the secret file
                        sh "cat \$disearchrd" // Example command to read the secret file
                    }
                }
            }
        }
    }
}
