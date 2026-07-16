Pod::Spec.new do |s|
  s.name             = 'WebRTC-SDK'
  # Bump this to match the git tag pushed to vizoss/webrtc-build for each
  # release (see .github/workflows/build.yml's create-release job) -- the
  # download URL below is derived from it.
  s.version          = '144.7559.11'
  s.summary          = 'Custom WebRTC build (vizoss/webrtc fork, stereo audio support) for iOS.'
  s.homepage         = 'https://github.com/vizoss/webrtc-build'
  s.license          = { :type => 'MIT' }
  s.author           = { 'vizoss' => 'think220216@gmail.com' }

  s.source = {
    :http => "https://github.com/vizoss/webrtc-build/releases/download/#{s.version}/WebRTC.xcframework.zip"
  }
  s.vendored_frameworks = 'WebRTC.xcframework'

  s.ios.deployment_target = '13.0'
  s.requires_arc = true
end
