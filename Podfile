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

    scripts_dir = installer.sandbox.target_support_files_dir('Pods-PaddleFrameworkIssue')
    script_path = File.join(scripts_dir, 'Pods-PaddleFrameworkIssue-frameworks.sh')
    f = File.open(script_path, 'r+')
    lines = f.readlines
    f.close

    lines.insert(1, "set -x\n")

    output = File.open(script_path, 'w')
    lines.each { |line| output.write line }
    output.close

    puts 'Framework script set to echo'
end