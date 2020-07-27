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
                echo "hostname: " $(uname -a)
                sh 'mvn clean test'
            }
        }
        stage('Build Fat Jars') {
            steps {
                echo "--- build fat jars ---"
                echo "hostname: " $(uname -a)
                sh 'mvn package'
            }
        }
    }
}
