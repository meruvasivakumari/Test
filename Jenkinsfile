node {

    stage('Checkout/Build/Test') {

        // Checkout files.
        checkout([
            $class: 'GitSCM',
            branches: [[name: 'TestBranch-2']],
            doGenerateSubmoduleConfigurations: false,
            extensions: [], submoduleCfg: [],
            userRemoteConfigs: [[
                name: 'github',
                url: 'https://github.com/meruvasivakumari/Test'
            ]]
        ])

        // Build and Test
        sh 'xcodebuild test -scheme Test -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.2''
    }
    stage('Analytics') {

        parallel Coverage: {
        // Generate Code Coverage report
        sh '/usr/local/bin/slather coverage --jenkins --html --scheme Test Test.xcodeproj/'

        // Publish coverage results
        publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: 'html', reportFiles: 'index.html', reportName: 'Coverage Report'])

    }

}
