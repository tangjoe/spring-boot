pipeline {
    agent any

    tools {
        jdk 'jdk8'
        maven 'maven 3.6'
    }

    stages {
        stage('Unit Test') {
            sh 'mvn clean test'
        }
        stage('Build Fat Jars') {
            sh 'mvn package'
        }
    }
}
