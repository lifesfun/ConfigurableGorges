local Shine = Shine

local Plugin = {} 

Plugin.Version = "0.1"
Plugin.HasConfig = true
Plugin.ConfigName = "ConfigurableGorges.json"

Plugin.DefaultConfig = {
	BabblersPerEgg = 6,
	BabblerEggsPerGorge = 4,
	ClogsPerGorge = 15
}

function Plugin:Initialise()

	self.Enabled = true

	kNumBabblerEggsPerGorge = self.Config.BabblersPerEgg
	kNumBabblersPerEgg = self.Config.BabblerEggsPerGorge
	kClogsPerHive = self.Config.ClogsPerGorge

	return true
end

function Plugin:Cleanup()

	kNumBabblerEggsPerGorge = 3
	kNumBabblersPerEgg = 3 
	kClogsPerHive = 10 

	self.BaseClass.Cleanup()
	self.Enabled = false
end
