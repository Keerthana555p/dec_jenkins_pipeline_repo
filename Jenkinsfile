pipeline {
    agent any 

    stages {

        stage("A") {
           
            steps {
                echo "This is satge1 at windows"
            }
        }
    stages {
        parallel
        stage("Parallel testing") {
            steps {
                echo "This is satge1 at windows"
                sh 'sleep 10'
            }
        }
        }
    stages {
        stage("Parallel testing") {
            steps {
                echo "This is satge2 at linux"
                sh 'sleep 5'
            }
        }
    }
    stages {
        stage("Final Stage") {
            steps {
                echo "This is last stage"
                sh 'sleep 5'
        }
    }
}
