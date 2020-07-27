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
        stage('Build Fat Jars') {
            steps {
                echo "--- build fat jars ---"
                sh 'mvn package'
            }
        }
    }
}
