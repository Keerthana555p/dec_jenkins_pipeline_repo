pipeline {
    agent any
    stages {
        stage("A") {
            steps {
                sh 'sleep 5'
                echo "This is a linux command"
            }
        }
        stage("D") {
            steps {
                echo "Stage D is running"
            }
        }
        stage("E") {
            steps {
                echo "Stage E is running"
            }
        }
    }
}
