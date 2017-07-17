node {

    stage('Checkout/Build/Test') {

        // Checkout files.
        checkout([
            $class: 'GitSCM',
            branches: [[name: 'master']],
            doGenerateSubmoduleConfigurations: false,
            extensions: [], submoduleCfg: [],
            userRemoteConfigs: [[
                name: 'github',
                url: 'https://github.com/meruvasivakumari/Test'
            ]]
        ])

        // Build and Test
        sh 'xcodebuild -target Test CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO'
    }

}
