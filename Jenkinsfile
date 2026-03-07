pipeline {
    agent { label 'save1'}
    stages {
        stage("A") {
            steps {
                sh 'sleep 5'
                echo "This is a linux command"
            }
        }
        stage("B") {
            steps {
                echo "Stage D is running"
            }
        }
        stage("C") {
            steps {
                echo "Stage E is running"
                sh '''
                #!/bin/bash
                sleep5
                '''
                
            }
        }
    }
}
