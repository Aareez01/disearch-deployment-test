pipeline {
    agent any

    environment {
        projectID = 'disearchrd'
    }

    stages {
        stage('Get Credentials') {
            steps {
                script {
                    def secretFileContent = sh(script: "cat /creds/${env.projectID}/secret.json", returnStdout: true).trim()
                    echo "Credentials files = $secretFileContent"
                    def jsonObject = readJSON text: secretFileContent
                    echo "projectID: ${jsonObject.project_id}"
                }
            }
        }
    }
}
