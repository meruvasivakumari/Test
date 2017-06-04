node('iOS Node') {

stage('Checkout/Build/Test') {

// Checkout files.
checkout([
$class: 'GitSCM',
branches: [[name: 'master']],
doGenerateSubmoduleConfigurations: false,
extensions: [], submoduleCfg: [],
userRemoteConfigs: [[
name: 'github',
url: 'https://github.com/meruvasivakumari/Test.git'
]]
])

// Build and Test
sh 'xcodebuild -scheme "Test" -configuration "Debug" build test -destination "platform=iOS Simulator,name=iPhone 6,OS=10.1" -enableCodeCoverage YES | /usr/local/bin/xcpretty -r junit'

// Publish test restults.
step([$class: 'JUnitResultArchiver', allowEmptyResults: true, testResults: 'build/reports/junit.xml'])
}

stage('Analytics') {

parallel Coverage: {
// Generate Code Coverage report
sh '/usr/local/bin/slather coverage --jenkins --html --scheme Test Test.xcodeproj/'

// Publish coverage results
publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: 'html', reportFiles: 'index.html', reportName: 'Coverage Report'])


}, Checkstyle: {

// Generate Checkstyle report
sh '/usr/local/bin/swiftlint lint --reporter checkstyle > checkstyle.xml || true'

// Publish checkstyle result
step([$class: 'CheckStylePublisher', canComputeNew: false, defaultEncoding: '', healthy: '', pattern: 'checkstyle.xml', unHealthy: ''])
}, failFast: true|false
}
}
