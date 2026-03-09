pipeline {
    agent any

    // stages {
        // stage("A") {
        //     steps {

        //         catchError(buildResult: "SUCCESS", stageResult: 'FAILURE')

        //               echo "This is stage1 at windows"
        //                sh '''
        //                sleep 5
        //                exit 1
        //                 '''
        //     }
        // }

        stage("Stage1_a") {
                    steps {
                        script {
                            try {
                                sh '''
                                   sleep 5
                                   exit1
                                   '''

                            
                    
                            } 
                    catch(err) {
                         echo "This is the error"
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
    }