source 'https://github.com/CocoaPods/Specs.git'

platform :osx, '10.9'

# ignore all warnings from all pods
inhibit_all_warnings!

target :PaddleFrameworkIssue do
    pod 'Paddle-MAS', :podspec => 'Lib/Paddle-MAS.podspec'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['COMBINE_HIDPI_IMAGES'] = 'YES'
        end
    end
end