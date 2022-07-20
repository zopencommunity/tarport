node('linux') 
{
        stage ('Poll') {
                checkout([
                        $class: 'GitSCM',
                        branches: [[name: '*/main']],
                        doGenerateSubmoduleConfigurations: false,
                        extensions: [],
                        userRemoteConfigs: [[url: 'https://github.com/ZOSOpenTools/tarport.git']]])
        }

        stage('Build') {
                build job: 'Port-Pipeline', parameters: [string(name: 'REPO', value: 'tarport'), string(name: 'DESCRIPTION', value: 'tar saves many files together into a single tape or disk archive, and can restore individual files from the archive.' )]
        }
}
