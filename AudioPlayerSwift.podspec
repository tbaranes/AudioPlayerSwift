Pod::Spec.new do |s|

# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.name            	= "AudioPlayerSwift"
s.module_name      	= "AudioPlayer"
s.version          	= "2.0.0"
s.summary          	= "AudioPlayer is a simple class for playing audio in iOS, macOS and tvOS apps."
s.description      	= "AudioPlayer is a simple class for playing audio in iOS, macOS and tvOS apps. You can use it for basic audio usage (play / stop), but also for advanced usage (loop, pan, seek...)"
s.homepage         	= "https://github.com/tbaranes/AudioPlayerSwift"
s.license      		= { :type => "MIT", :file => "LICENSE" }
s.author           	= { "Tom Baranes" => "tom.baranes@gmail.com" }
s.source           	= { :git => "https://github.com/tbaranes/AudioPlayerSwift.git", :tag => "#{s.version}" }

# ―――  Spec tech  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.ios.deployment_target		= '8.0'
s.tvos.deployment_target 	= '9.0'
s.osx.deployment_target 	= '10.10'

s.requires_arc 	   			= true
s.source_files				= 'Sources/*.swift'

end