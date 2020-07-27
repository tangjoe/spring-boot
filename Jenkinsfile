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
                sh 'mvn clean test'
            }
        }
        stage('Wait for input') {
            steps {
                script {
                    def pause = input(message: 'Wait for your input...',
                                      parameters: [[$class: 'TextParameterDefinition', defaultValue: 'None', description: 'Yes/No', name: 'Confirm (Yes/No)']])
                }
            }
        }
        stage('Build Fat Jars') {
            steps {
                echo "--- build fat jars ---"
                sh 'mvn package'
            }
        }
        stage('Build docker image') {
            steps {
                echo "--- buid docker images ---"
                sh "docker build -t myproject:latest ."
            }
        }
    }
}
