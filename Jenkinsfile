pipeline {
    agent any

    environment {
        SECRET_FILE_CONTENT = ''
    }

    stages {
        stage('Get Credentials') {
            steps {
                script {
                    withCredentials([file(credentialsId: "disearchrd", variable: 'SECRET_FILE')]) {
                        
                        // Execute a shell command and capture its output
                        def secretFileCont = sh(script: 'cat $SECRET_FILE', returnStdout: true).trim()

                        env.SECRET_FILE_CONTENT = secretFileCont
                    }
                }
            }
        }

        stage('Parse Credentials') {
            steps {
                echo "Secret File Content: ${env.SECRET_FILE_CONTENT}"
            }
        }
    }
}
