pipeline{
   agent any
   stages{
     stage('Build'){
       steps{
         script{
           bat 'docker build -t getting-started-app .'
           
         }
       }
     }
     stage('Test'){
       steps{
         script{
          echo 'running tests'
           
         }
       }
     }
     stage('Deploy'){
       steps{
         script{
          echo 'DEploying'
           
         }
       }
     }
   }
}