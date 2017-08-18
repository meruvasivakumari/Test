node {

    stage('Checkout/Build/Test') {

        // Checkout files.
        checkout([
            $class: 'GitSCM'
            sh 'echo $BRANCH_NAME',
            if (env.BRANCH_NAME == 'master') {
                    stage 'Only on master'
                    println 'This happens only on master'
            } else {
                    stage 'Other branches'
                    println "Current branch ${env.BRANCH_NAME}"
            }
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
