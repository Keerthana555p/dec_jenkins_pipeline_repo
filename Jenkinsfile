pipeline {
    agent any

    stages {
        stage("Stage1_a") {
            steps {
                script {
                    try {
                        sh '''
                            sleep 5
                            exit 1
                        '''
                    } catch (err) {
                        echo "This is the error: ${err}"
                    }
                }
            }
        }

        stage("Parallel testing") {
            parallel {
                stage("Windows") {
                    steps {
                        echo "This is stage1 at windows"
                        sh 'sleep 10'
                    }
                }
                stage("Linux") {
                    steps {
                        echo "This is stage2 at linux"
                        sh 'sleep 5'
                    }
                }
            }
        }

        stage("Final Stage") {
            steps {
                echo "This is last stage"
                sh 'sleep 5'
            }
        }
    }
}
