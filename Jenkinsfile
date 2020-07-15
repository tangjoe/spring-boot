pipeline {
    agent any

    tools {
        jdk 'jdk8'
        maven 'maven3.6'
    }

    stages {
        stage('Unit Test') {
            steps {
                sh 'mvn clean test'
            }
        }
        stage('Build Fat Jars') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
