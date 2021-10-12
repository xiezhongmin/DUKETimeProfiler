#
# Be sure to run `pod lib lint DUKETimeProfiler.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DUKETimeProfiler'
  s.version          = '0.0.1'
  s.summary          = 'A short description of DUKETimeProfiler'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xiezhongmin/DUKETimeProfiler'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'git' => '364101515@qq.com' }
  s.source           = { :git => 'https://github.com/xiezhongmin/DUKETimeProfiler.git', :tag => s.version.to_s }
  s.platform         = :ios, '9.0'
  s.source_files     = "src/*"
  s.preserve_paths   = "clang/bin/clang","clang/lib/DUKETimeProfiler.dylib","clang/lib/clang/9.0.1/include/*"
  s.requires_arc     = true
  s.xcconfig         = {
                         "OTHER_CFLAGS" => "-Xclang -load -Xclang ${PODS_ROOT}/DUKETimeProfiler/clang/lib/DUKETimeProfiler.dylib", 
                         "COMPILER_INDEX_STORE_ENABLE" => "No",
                         "CC" => "${PODS_ROOT}/DUKETimeProfiler/clang/bin/clang" 
                       }
end
