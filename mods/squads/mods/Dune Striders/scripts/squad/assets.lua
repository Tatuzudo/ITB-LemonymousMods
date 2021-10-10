
local mod = mod_loader.mods[modApi.currentMod]
local path = mod.resourcePath


-- commando
modApi:appendAsset("img/units/player/lmn_ds_commando.png", path.."img/units/player/commando.png")
modApi:appendAsset("img/units/player/lmn_ds_commando_a.png", path.."img/units/player/commando_a.png")
modApi:appendAsset("img/units/player/lmn_ds_commando_w.png", path.."img/units/player/commando_w.png")
modApi:appendAsset("img/units/player/lmn_ds_commando_broken.png", path.."img/units/player/commando_b.png")
modApi:appendAsset("img/units/player/lmn_ds_commando_w_broken.png", path.."img/units/player/commando_wb.png")
modApi:appendAsset("img/units/player/lmn_ds_commando_ns.png", path.."img/units/player/commando_ns.png")
modApi:appendAsset("img/units/player/lmn_ds_commando_h.png", path.."img/units/player/commando_h.png")

ANIMS.lmn_ds_Commando =            ANIMS.MechUnit:new{ Image = "units/player/lmn_ds_commando.png", PosX = -12, PosY = -10 }
ANIMS.lmn_ds_Commandoa =           ANIMS.lmn_ds_Commando:new{ Image = "units/player/lmn_ds_commando_a.png", NumFrames = 4 }
ANIMS.lmn_ds_Commando_broken =     ANIMS.lmn_ds_Commando:new{ Image = "units/player/lmn_ds_commando_broken.png" }
ANIMS.lmn_ds_Commandow =           ANIMS.lmn_ds_Commando:new{ Image = "units/player/lmn_ds_commando_w.png", PosY = 6 }
ANIMS.lmn_ds_Commandow_broken =    ANIMS.lmn_ds_Commandow:new{ Image = "units/player/lmn_ds_commando_w_broken.png" }
ANIMS.lmn_ds_Commando_ns =         ANIMS.MechIcon:new{ Image = "units/player/lmn_ds_commando_ns.png" }


-- gunslinger
modApi:appendAsset("img/units/player/lmn_ds_gunslinger.png", path.."img/units/player/gunslinger.png")
modApi:appendAsset("img/units/player/lmn_ds_gunslinger_a.png", path.."img/units/player/gunslinger_a.png")
modApi:appendAsset("img/units/player/lmn_ds_gunslinger_w.png", path.."img/units/player/gunslinger_w.png")
modApi:appendAsset("img/units/player/lmn_ds_gunslinger_broken.png", path.."img/units/player/gunslinger_b.png")
modApi:appendAsset("img/units/player/lmn_ds_gunslinger_w_broken.png", path.."img/units/player/gunslinger_wb.png")
modApi:appendAsset("img/units/player/lmn_ds_gunslinger_ns.png", path.."img/units/player/gunslinger_ns.png")
modApi:appendAsset("img/units/player/lmn_ds_gunslinger_h.png", path.."img/units/player/gunslinger_h.png")

ANIMS.lmn_ds_Gunslinger =          ANIMS.MechUnit:new{ Image = "units/player/lmn_ds_gunslinger.png", PosX = -12, PosY = -4 }
ANIMS.lmn_ds_Gunslingera =         ANIMS.lmn_ds_Gunslinger:new{ Image = "units/player/lmn_ds_gunslinger_a.png", NumFrames = 4 }
ANIMS.lmn_ds_Gunslinger_broken =   ANIMS.lmn_ds_Gunslinger:new{ Image = "units/player/lmn_ds_gunslinger_broken.png", PosX = -14, PosY = -2 }
ANIMS.lmn_ds_Gunslingerw =         ANIMS.lmn_ds_Gunslinger:new{ Image = "units/player/lmn_ds_gunslinger_w.png", PosX = -14, PosY = 12 }
ANIMS.lmn_ds_Gunslingerw_broken =  ANIMS.lmn_ds_Gunslingerw:new{ Image = "units/player/lmn_ds_gunslinger_w_broken.png" }
ANIMS.lmn_ds_Gunslinger_ns =       ANIMS.MechIcon:new{ Image = "units/player/lmn_ds_gunslinger_ns.png" }


-- swoop
modApi:appendAsset("img/units/player/lmn_ds_swoop.png", path.."img/units/player/swoop.png")
modApi:appendAsset("img/units/player/lmn_ds_swoop_a.png", path.."img/units/player/swoop_a.png")
modApi:appendAsset("img/units/player/lmn_ds_swoop_w.png", path.."img/units/player/swoop_w.png")
modApi:appendAsset("img/units/player/lmn_ds_swoop_broken.png", path.."img/units/player/swoop_b.png")
modApi:appendAsset("img/units/player/lmn_ds_swoop_w_broken.png", path.."img/units/player/swoop_wb.png")
modApi:appendAsset("img/units/player/lmn_ds_swoop_ns.png", path.."img/units/player/swoop_ns.png")
modApi:appendAsset("img/units/player/lmn_ds_swoop_h.png", path.."img/units/player/swoop_h.png")

ANIMS.lmn_ds_Swoop =               ANIMS.MechUnit:new{ Image = "units/player/lmn_ds_swoop.png", PosX = -24, PosY = -14 }
ANIMS.lmn_ds_Swoopa =              ANIMS.lmn_ds_Swoop:new{ Image = "units/player/lmn_ds_swoop_a.png", NumFrames = 4 }
ANIMS.lmn_ds_Swoop_broken =        ANIMS.lmn_ds_Swoop:new{ Image = "units/player/lmn_ds_swoop_broken.png", PosY = -8 }
ANIMS.lmn_ds_Swoopw =              ANIMS.lmn_ds_Swoop:new{ Image = "units/player/lmn_ds_swoop_w.png", PosY = 6 }
ANIMS.lmn_ds_Swoopw_broken =       ANIMS.lmn_ds_Swoopw:new{ Image = "units/player/lmn_ds_swoop_w_broken.png" }
ANIMS.lmn_ds_Swoop_ns =            ANIMS.MechIcon:new{ Image = "units/player/lmn_ds_swoop_ns.png" }
