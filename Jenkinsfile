pipeline{
    agent any
    stages{
        stage("A"){
            steps{
                sh 'sleep 5'
                echo "This is a linux command"
            }
        }
        stage("B"){
            steps{
                sh '''
                   #!/bin/bash
                   pwd
                   ls -lrt
                   sleep 5
                   '''
                echo "This is the stage B"                  
            }
        }
        stage("C"){
            steps{

                echo "========executing C========"
            }
        }    
        stage("D"){
            steps{
                echo "========executing B========"
            }
        stage("E"){
            steps{
                echo "========executing E========"
            }    

        
                }
            }
        }
    }
   
        