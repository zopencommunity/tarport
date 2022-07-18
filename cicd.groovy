node('linux') 
{
        stage('Build') {
                build job: 'Port-Pipeline', parameters: [string(name: 'REPO', value: 'tarport'), string(name: 'DESCRIPTION', 'tarport' )]
        }
}
