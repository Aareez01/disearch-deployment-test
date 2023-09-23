pipeline {
    agent any

    environment {
        projectID = 'disearchrd'
    }

    stages {
        stage('Get Credentials') {
            steps {
                sh "cat /creds/${env.projectID}/secret.json"
                def secretFileContent = sh(script: "cat /creds/${env.projectID}/secret.json", returnStdout: true)
                echo "Credentials files = $secretFileContent"
            }
        }
    }
}
