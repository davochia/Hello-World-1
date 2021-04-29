node {
    def app

    stage('Clone repository') {
        /* Cloning the Repository to our Workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image */

        app = docker.build("mariakritou/casecoursework")
    }

    stage('Push image') {
        /* 
			You would need to first register with DockerHub before you can push images to your account
		*/
        sudo docker.withRegistry('https://registry.hub.docker.com', 'dockerhub_credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
            } 
                sudo echo "Trying to Push Docker Build to DockerHub"
    }
}


