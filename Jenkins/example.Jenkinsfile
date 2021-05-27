pipeline {
  agent any
  parameters {
        booleanParam(name: 'Update', defaultValue: false, description: 'To update Jenkinsfile')
  }
  
  stages {
    
    stage("Update Jenkinsfile") {
      when { expression { params.Update } }
        steps {
          script {
            print("Update Jenkinsfile")
            sh '''
              # Bash code
            '''
          }
        }
    }

  }

}
