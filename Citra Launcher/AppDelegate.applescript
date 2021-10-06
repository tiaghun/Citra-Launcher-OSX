--
--  AppDelegate.applescript
--  Citra Launcher
--
--  Created by Alison on 20/07/20.
--  Copyright © 2020 Alison E.E. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened 
	end applicationWillFinishLaunching_
	
	on launchNightly_(sender)
	set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
	set NightlyPath to quoted form of ResourcePath & "LaunchNightly"
	do shell script ("") & NightlyPath
	end launchNightly_
	
	on launchCanary_(sender)
	set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
	set CanaryPath to quoted form of ResourcePath & "LaunchCanary"
	do shell script ("") & CanaryPath
	end launchCanary_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script
