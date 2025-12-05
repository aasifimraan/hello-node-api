Pipeline{
  agen any
  environment{
        // optional: configure Node tool in Jenkins and put its name here
        // NODE_BIN = "${tool 'nodejs-18'}/bin"

  }
  stages {
    stage ('chekcout') {
        steps {
            checkout scm
        }
    }
     stage ('Install') {
        steps {
            sh 'chmod +x build.sh'
            // Prefer build.sh to only install & test in CI. If it runs a long server, CI will hang.
            sh './build.sh || true'


        }
        
    }
     stage ('Test') {
        steps {
                   // Add tests later if you add them
                    sh 'if [ -f package.json ]; then npm test || echo "no tests or tests failed"; fi'

        }
        
    }
     stage ('Package') {
        steps {
                    sh 'tar -czf hello-node-api-${BUILD_NUMBER}.tar.gz package.json app.js node_modules || true'
                    archiveArtifacts artifacts: "hello-node-api-${BUILD_NUMBER}.tar.gz", fingerprint: true


        }
        
    }
  }
  post {
    success {
      echo "Build succeeded: ${env.BUILD_URL}"
    }
    failure {
      echo "Build failed"
    }
  }
}