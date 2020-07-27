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
        stage('Build Fat Jars') {
            steps {
                echo "--- build fat jars ---"
                sh 'echo "hostname: " $(uname -a)'
                sh 'mvn package'
            }
        }
    }
}
