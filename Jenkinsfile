pipeline {
  parameters {
    password (name: 'AKIA6DZ35SAAAZS3TGU4')
    password (name: 'd8eCTuqbBTdVYISNCk3hQ5gfi5PwipoyOZ8QeTu4')
  }
  environment {
    TF_WORKSPACE = 'dev' //Sets the Terraform Workspace
    TF_IN_AUTOMATION = 'true'
    AWS_ACCESS_KEY_ID = "${params.AKIA6DZ35SAAAZS3TGU4}"
    AWS_SECRET_ACCESS_KEY = "${params.d8eCTuqbBTdVYISNCk3hQ5gfi5PwipoyOZ8QeTu4}"
  }
  stages {
    stage('Terraform Init') {
      steps {
        sh "${env.TERRAFORM_HOME}/terraform init -input=false"
      }
    }
    stage('Terraform Plan') {
      steps {
        sh "${env.TERRAFORM_HOME}/terraform plan -out=tfplan -input=false -var-file='dev.tfvars'"
      }
    }
    stage('Terraform Apply') {
      steps {
        input 'Apply Plan'
        sh "${env.TERRAFORM_HOME}/terraform apply -input=false tfplan"
      }
    }
    stage('AWSpec Tests') {
      steps {
          sh '''#!/bin/bash -l
bundle install --path ~/.gem
bundle exec rake spec || true
'''

        junit(allowEmptyResults: true, testResults: '**/testResults/*.xml')
      }
    }
  }
}
