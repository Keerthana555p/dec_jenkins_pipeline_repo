pipeline {
    agent none
    stages {
        stage("A") {
            agent {label 'slave1'}

            steps {
                sh 'sleep 5'
                echo "This is a linux command"
            }
        }
        stage("B") {

            agent {label 'slave2'}

            steps {
                echo "Stage D is running"
            }
        }
        
        stage("C") {
            steps {
                echo "Stage E is running"
                
            }
        }
    }
}
