pipeline {
    agent any
    options {
        buildDiscarder(logRotator(daysToKeepStr: '10', numToKeepStr: '10'))
        timeout(time: 12, unit: 'HOURS')
        timestamps()
    }
    stages {
        stage('Requirements') {
            steps {
                // The 'chmod' command is specific to Linux/macOS and is not
                // needed on Windows to make a script executable.
                // We remove that step.
                echo "Skipping chmod, not required on Windows."
            }
        }
        stage('Build') {
            steps {
                // 'sh' is for Linux/macOS. 'bat' is for Windows.
                // You MUST rename your 'algorithm.sh' script to 'algorithm.bat'
                // and convert its contents to Windows Batch commands.
                bat '.\\algorithm.bat'

                // this step archives the report
                archiveArtifacts allowEmptyArchive: true,
                        artifacts: '*.txt',
                        fingerprint: true,
                        onlyIfSuccessful: true
            }
        }
    }
}
