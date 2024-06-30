pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/seyramgabriel/csn-demo-site.git'
            }
        }
        stage('Code Analysis') {
            environment {
                scannerHome = tool name: 'SonarScanner'
            }
            steps {
                script {
                    withSonarQubeEnv('SonarScanner') {
                        sh """
                            ${scannerHome}/bin/sonar-scanner \
                                -Dsonar.projectKey=Test \
                                -Dsonar.projectName=Test \
                                -Dsonar.sources=.
                        """
                    }
                }
            }
        }
    }
}
