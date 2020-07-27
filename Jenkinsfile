pipeline {
    agent {
        docker {
            image 'maven:adoptopenjdk'
        }
    }

    stages {
        stage('Compile') {
            steps {
                echo "--- complile project ---"
                sh 'echo "hostname: " $(uname -a)'
                sh 'mvn clean test'
            }
        }
        stage('Wait for input') {
            steps {
                script {
                    def pause = input(message: 'Wait for your input...',
                                      parameters: [[$class: 'TextParameterDefinition', defaultValue: 'None', description: 'Yes/No', name: 'Confirm']])
                }
            }
        }
        stage('Build Fat Jars') {
            steps {
                echo "--- build fat jars ---"
                sh 'echo "hostname: " $(uname -a)'
                sh 'mvn package'
            }
        }
    }
}
