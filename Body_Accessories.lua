local SCRIPT_VERSION = "1.0.0"

util.require_natives(1651208000)
local Animation = {}

-- Run auto-update
local auto_update_config = {
    source_url="https://raw.githubusercontent.com/Rachmad42/Emote-Stand-Lua/main/Animation.lua",
    script_relpath=SCRIPT_RELPATH
}

--PROP LIST

local prop_list = {
    ["Backpack1"] = {
        Prop = 'sf_prop_sf_backpack_03a',
        PropBone = 24818,
        PropPlacement =  {0.07, -0.11, -0.05, 0.0, 90.0, 175.0},
        Used = {},
        Use = false
    },
    ["Backpack2"] = {
        Prop = 'p_michael_backpack_s',
        PropBone = 24818,
        PropPlacement =  {0.07, -0.11, -0.05, 0.0, 90.0, 175.0},
        Used = {},
        Use = false
    },
    ["Wings"] = {
        Prop = 'vw_prop_art_wings_01a',
        PropBone = 24818,
        PropPlacement =  {-1.4, -0.2, 0.0, 0.0, 90.0, 175.0},
        Used = {},
        Use = false
    },
    ["Backpack3"] = {
        Prop = 'xm3_prop_xm3_backpack_01a',
        PropBone = 24817,
        PropPlacement =  {0.150, -0.2, 0.0, 65.0, 90.0, 10.0},
        Used = {},
        Use = false
    },
    ["Guitar"] = {
        Prop = 'sf_prop_sf_guitar_case_01a',
        PropBone = 24817,
        PropPlacement =  {-0.05, -0.09, 0.0, 90.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Weed"] = {
        Prop = 'bkr_prop_weed_drying_02a',
        PropBone = 24817,
        PropPlacement =  {0.450, -0.2, 0.0, 0.0, 90.0, 10.0},
        Used = {},
        Use = false
    },
    ["Shield"] = {
        Prop = 'prop_ballistic_shield',
        PropBone = 24817,
        PropPlacement =  {0.20, 0.25, 0.0, 180.0, 270.0, 0.0},
        Used = {},
        Use = false
    },
    ["Golf Bag"] = {
        Prop = 'sf_prop_sf_golf_bag_01b',
        PropBone = 24817,
        PropPlacement =  {0.0, -0.3, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Tennis Bag"] = {
        Prop = 'prop_tennis_bag_01',
        PropBone = 24817,
        PropPlacement =  {0.1, -0.25, 0.0, 0.0, 180.0, 0.0},
        Used = {},
        Use = false
    },
    ["SkateBoard"] = {
        Prop = 'v_res_skateboard',
        PropBone = 24817,
        PropPlacement =  {-0.1, -0.26, 0.0, 259.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["SurfBoard"] = {
        Prop = 'prop_surf_board_ldn_02',
        PropBone = 24817,
        PropPlacement =  {0.5, -0.2, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
}

--DUFFEL BAG

local duffel_list = {
    ["Duffel Bag Blue"] = {
        Prop = 'ch_p_m_bag_var01_arm_s',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Bag Brown"] = {
        Prop = 'ch_p_m_bag_var10_arm_s',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Bag Black"] = {
        Prop = 'h4_p_h4_m_bag_var22_arm_s',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Camo Blue"] = {
        Prop = 'ch_p_m_bag_var08_arm_s',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Dark Green"] = {
        Prop = 'p_ld_heist_bag_s_pro2_s',
        PropBone = 24817,
        PropPlacement =  {-0.08, -0.18, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Camo Brown"] = {
        Prop = 'ch_p_m_bag_var06_arm_s',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Gold"] = {
        Prop = 'xm3_p_xm3_m_bag_var22_arm_s',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Bag Red"] = {
        Prop = 'ch_p_m_bag_var03_arm_s',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Red Blue"] = {
        Prop = 'ch_p_m_bag_var04_arm_s',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Camo"] = {
        Prop = 'ch_p_m_bag_var07_arm_s',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Bag Green"] = {
        Prop = 'm23_2_p_m32_m_bag_var22_arm_s_g',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Duffel Camo Green"] = {
        Prop = 'ch_p_m_bag_var09_arm_s',
        PropBone = 24817,
        PropPlacement =  {-0.19, -0.01, 0.0, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
}

--PLUSHIE LIST

local plushie_list = {
    ["Plushie Purple Cat"] = {
        Prop = 'sum_prop_sum_arcade_plush_01a',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Plushie Green Cat"] = {
        Prop = 'sum_prop_sum_arcade_plush_02a',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Plushie Blue Cat"] = {
        Prop = 'sum_prop_sum_arcade_plush_03a',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Plushie Brown Cat"] = {
        Prop = 'sum_prop_sum_arcade_plush_04a',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Plushie Yellow Cat"] = {
        Prop = 'sum_prop_sum_arcade_plush_05a',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Plushie Red Cat"] = {
        Prop = 'sum_prop_sum_arcade_plush_06a',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Plushie Princess"] = {
        Prop = 'sum_prop_sum_arcade_plush_07a',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Plushie Wasabi Cat"] = {
        Prop = 'sum_prop_sum_arcade_plush_08a',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Plushie Sensei"] = {
        Prop = 'sum_prop_sum_arcade_plush_09a',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Bobble Head Green"] = {
        Prop = 'sf_prop_sf_art_bobble_bb_01b',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
    ["Bobble Head Purple"] = {
        Prop = 'sf_prop_sf_art_bobble_bb_01a',
        PropBone = 24818,
        PropPlacement =  {0.25, 0.0, 0.22, 0.0, 90.0, 180.0},
        Used = {},
        Use = false
    },
}

--PLUSHIE BACKPACK

local plushiepack_list = {
    ["Backpack Purple Cat"] = {
        Prop = 'ch_prop_arcade_claw_plush_01a',
        PropBone = 24817,
        PropPlacement =  {0.19, -0.15, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Backpack Green Cat"] = {
        Prop = 'ch_prop_arcade_claw_plush_02a',
        PropBone = 24817,
        PropPlacement =  {0.19, -0.15, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Backpack Blue Cat"] = {
        Prop = 'ch_prop_arcade_claw_plush_03a',
        PropBone = 24817,
        PropPlacement =  {0.19, -0.15, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Backpack Brown Cat"] = {
        Prop = 'ch_prop_arcade_claw_plush_04a',
        PropBone = 24817,
        PropPlacement =  {0.19, -0.15, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Backpack Yellow Cat"] = {
        Prop = 'ch_prop_arcade_claw_plush_05a',
        PropBone = 24817,
        PropPlacement =  {0.19, -0.15, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Backpack Red Cat"] = {
        Prop = 'ch_prop_arcade_claw_plush_06a',
        PropBone = 24817,
        PropPlacement =  {0.19, -0.15, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Backpack Princess"] = {
        Prop = 'ch_prop_princess_robo_plush_07a',
        PropBone = 24817,
        PropPlacement =  {0.19, -0.15, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Backpack Wasabi Cat"] = {
        Prop = 'ch_prop_shiny_wasabi_plush_08a',
        PropBone = 24817,
        PropPlacement =  {0.19, -0.15, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Backpack Space Ranger"] = {
        Prop = 'xs_prop_trinket_republican_01a',
        PropBone = 24817,
        PropPlacement =  {-0.0, -0.25, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
    ["Backpack Princess Figure"] = {
        Prop = 'vw_prop_vw_colle_prbubble',
        PropBone = 24817,
        PropPlacement =  {0.0, -0.2, 0.0, 0.0, 90.0, 0.0},
        Used = {},
        Use = false
    },
}


--LIST WEAPON PROP

local weapon_list = {
    ["Weapon Katana Left"] = {
        Prop = 'prop_cs_katana_01',
        PropBone = 24817,
        PropPlacement =  {0.5, -0.12, 0.14, 5.0, -122.0, 0.0},
        Used = {},
        Use = false
    },
    ["Weapon Katana Right"] = {
        Prop = 'prop_cs_katana_01',
        PropBone = 24817,
        PropPlacement =  {0.5, -0.18, -0.14, 5.0, -62.0, 180.0},
        Used = {},
        Use = false
    },
    ["Weapon Bat"] = {
        Prop = 'w_me_bat',
        PropBone = 24817,
        PropPlacement =  {-0.13, -0.16, -0.14, 5.0, 62.0, 0.0},
        Used = {},
        Use = false
    },
    ["Weapon Heavy Sniper"] = {
        Prop = 'w_sr_heavysniper',
        PropBone = 24817,
        PropPlacement =  {0.2,-0.20,0.1,0.0,160.5,0.0}, --atas bawah , maju mundul , kiri kanan
        Used = {},
        Use = false
    },
    ["Weapon Bag"] = {
        Prop = 'm23_2_prop_m32_bag_weapons_01a',
        PropBone = 24817,
        PropPlacement =  {-0.25, -0.3, 0.0, -25.0, 90.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Special Carbine"] = {
        Prop = 'w_ar_specialcarbine_m32',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Carbine Rifle"] = {
        Prop = 'w_ar_carbinerifle_m31',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Assault Rifle"] = {
        Prop = 'w_ar_assaultrifle',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Combat PDW"] = {
        Prop = 'w_sb_pdw',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Military Rifle"] = {
        Prop = 'w_ar_bullpuprifleh4',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Homing Launcher"] = {
        Prop = 'w_lr_homing',
        PropBone = 24817,
        PropPlacement = {0.35, -0.18, 0.0, 0.0, 0.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Heavy Rifle"] = {
        Prop = 'w_ar_heavyrifleh',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Railgun"] = {
        Prop = 'w_ar_railgun_xm3',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.17, 0.1, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Assault Shotgun"] = {
        Prop = 'w_sg_assaultshotgun',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.17, 0.1, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Assault SMG"] = {
        Prop = 'w_sb_assaultsmg',
        PropBone = 24817,
        PropPlacement =  {0.1, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Musket"] = {
        Prop = 'w_ar_musket',
        PropBone = 24817,
        PropPlacement =  {0.3, -0.15, 0.1, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Combat MG"] = {
        Prop = 'w_mg_combatmg',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Heavy Sniper MK2"] = {
        Prop = 'w_sr_heavysnipermk2',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Carbine MK2"] = {
        Prop = 'w_ar_carbineriflemk2',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Gusenberg"] = {
        Prop = 'w_sb_gusenberg',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon RPG"] = {
        Prop = 'w_lr_rpg_m31',
        PropBone = 24817,
        PropPlacement =  {0.35, -0.18, 0.0, 0.0, 0.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon MG"] = {
        Prop = 'w_mg_mg_luxe',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.1, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Shotgun"] = {
        Prop = 'w_sg_pumpshotgun_luxe',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Combat Shotgun"] = {
        Prop = 'h4_prop_h4_pumpshotgunh4',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon FireWork"] = {
        Prop = 'w_lr_firework',
        PropBone = 24817,
        PropPlacement = {0.35, -0.18, 0.0, 0.0, 0.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Sniper"] = {
        Prop = 'w_sr_sniperrifle_luxe',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Service Carbine"] = {
        Prop = 'w_ar_carbinerifle_reh',
        PropBone = 24817,
        PropPlacement =  {0.2, -0.15, 0.0, 0.0, 150.0, 0.0}, 
        Used = {},
        Use = false
    },
    ["Weapon Wrench"] = {
        Prop = 'w_me_wrench',
        PropBone = 24817,
        PropPlacement =  {-0.05, -0.15, -0.15, 0.0, 0.0, 0.0}, 
        Used = {},
        Use = false
    },
}
--

local AnimationDuration = -1
local ChosenAnimation = ""
local ChosenDict = ""
local ChosenAnimOptions = false
local MovementType = 0
local PlayerGender = "male"
local PlayerHasProp = false
local PlayerProps = {}
local PlayerParticles = {}
local CurrentAnimation = {}
local SecondPropEmote = false
local PtfxNotif = false
local PtfxPrompt = false
local PtfxWait = 500
local PtfxCanHold = false
local PtfxNoProp = false
local AnimationThreadStatus = false
local CanCancel = true
local InExitEmote = false
local IsInAnimation = false
local isCrouched = false
local isHansUp = false

--function

local function notify(message)
    HUD.BEGIN_TEXT_COMMAND_THEFEED_POST("STRING")
    HUD.ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(message)
    HUD.END_TEXT_COMMAND_THEFEED_POST_TICKER(0, 1)
end

local function loadAnimation(dict)
    while not STREAMING.HAS_ANIM_DICT_LOADED(dict) do
        STREAMING.REQUEST_ANIM_DICT(dict)
        util.yield()
    end
end

local function playerIsMale()
    if ENTITY.GET_ENTITY_MODEL(PLAYER.PLAYER_PED_ID()) == util.joaat("mp_m_freemode_01") then
        return true
    else 
        return false
    end
end

local function addProps(model, bone, off1, off2, off3, rot1, rot2, rot3, localSave)
    local playerPed = PLAYER.PLAYER_PED_ID()
    local playerCoord = ENTITY.GET_ENTITY_COORDS(playerPed)
    model = util.joaat(model)
    if not STREAMING.HAS_MODEL_LOADED(model) then
        STREAMING.REQUEST_MODEL(model)
        while not STREAMING.HAS_MODEL_LOADED(model) do 
            util.yield()
        end
    end
    playerCoord.z = playerCoord.z+0.2
    local prop = entities.create_object(model, playerCoord)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(prop, playerPed, PED.GET_PED_BONE_INDEX(playerPed, bone), off1 or 0.0, off2 or 0.0, off3 or 0.0, rot1 or 0.0, rot2 or 0.0, rot3 or 0.0, true, true, false, true, 1, true)
    table.insert(localSave, prop)
    STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(model)
    PlayerHasProp = true
end

local function clearProps(prop)
    for i=1, #prop do
        local ent = prop[i]
        if ENTITY.DOES_ENTITY_EXIST(ent) then
            if not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent) then
                NETWORK.REQUEST_CONTROL_OF_ENTITY(ent)
                while not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent) do 
                    util.yield()
                end
            end
            entities.delete_by_handle(ent)
        end
    end
    PlayerProps = {}
    PlayerHasProp = false
end

local function playAnimation(animData)
    local inVehicle = PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), true)
    local playerPed = PLAYER.PLAYER_PED_ID()
    CurrentAnimation = animData
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.PLAYER_PED_ID(), MISC.GET_HASH_KEY("WEAPON_UNARMED"), 1, false, true)
    ChosenDict, ChosenAnimation = table.unpack(animData)
    -- if PlayerHasProp then clearProps(PlayerProps) end
    if ChosenDict == "MaleScenario" then 
        if playerIsMale() then
            TASK.CLEAR_PED_TASKS_IMMEDIATELY(playerPed)
            TASK.TASK_START_SCENARIO_IN_PLACE(playerPed, ChosenAnimation, 0, true)
            IsInAnimation = true
        else
            util.toast("This emote is only for male characters")
        end return
    elseif ChosenDict == "ScenarioObject" then 
        local BehindPlayer = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(playerPed, 0.0, 0 - 0.5, -0.5);
        local PlayerHeading = ENTITY.GET_ENTITY_HEADING(playerPed)
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(playerPed)
        TASK.TASK_START_SCENARIO_AT_POSITION(playerPed, ChosenAnimation, BehindPlayer['x'], BehindPlayer['y'], BehindPlayer['z'], PlayerHeading, 0, true, false)
        IsInAnimation = true
        return
    elseif ChosenDict == "Scenario" then 
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(playerPed)
        TASK.TASK_START_SCENARIO_IN_PLACE(playerPed, ChosenAnimation, 0, true)
        IsInAnimation = true
    return 
end

function streamPtfx(lib)
    STREAMING.REQUEST_NAMED_PTFX_ASSET(lib)
    while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(lib) do
        util.yield()
    end
    GRAPHICS.USE_PARTICLE_FX_ASSET(lib)
end

function ptfxStart(animData)
    PtfxAsset = animData.AnimationOptions.PtfxAsset
    PtfxName = animData.AnimationOptions.PtfxName
    if animData.AnimationOptions.PtfxNoProp then
        PtfxNoProp = animData.AnimationOptions.PtfxNoProp
    else
        PtfxNoProp = false
    end
    Ptfx1, Ptfx2, Ptfx3, Ptfx4, Ptfx5, Ptfx6, PtfxScale = table.unpack(animData.AnimationOptions.PtfxPlacement)
    PtfxBone = animData.AnimationOptions.PtfxBone and PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), animData.AnimationOptions.PtfxBone) or ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(PtfxName, "VFX")
    PtfxColor = animData.AnimationOptions.PtfxColor
    PtfxInfo = animData.AnimationOptions.PtfxInfo
    PtfxWait = animData.AnimationOptions.PtfxWait
    PtfxCanHold = animData.AnimationOptions.PtfxCanHold
    entityTarget = PLAYER.PLAYER_PED_ID()
    if not PtfxNoProp then
        entityTarget = PlayerProps[1]
    end
    streamPtfx(PtfxAsset)
    Ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(PtfxName, entityTarget, Ptfx1, Ptfx2, Ptfx3, Ptfx4, Ptfx5, Ptfx6, PtfxBone, PtfxScale + 0.0, 0, 0, 0, 1065353216, 1065353216, 1065353216, 0)
    table.insert(PlayerParticles, Ptfx)
end

function ptfxStop()
    for i,v in pairs(PlayerParticles) do
        GRAPHICS.STOP_PARTICLE_FX_LOOPED(v, false)
        table.remove(PlayerParticles, i)
    end
end


    loadAnimation(ChosenDict)

    MovementType = 0 -- Default movement type

    if InVehicle == 1 then
        MovementType = 51
    elseif animData.AnimationOptions then
        if animData.AnimationOptions.EmoteMoving then
            MovementType = 51
        elseif animData.AnimationOptions.EmoteLoop then
            MovementType = 1
        elseif animData.AnimationOptions.EmoteStuck then
            MovementType = 50
        end
    end
  
      local AttachWait = 0
      if animData.AnimationOptions then
        if animData.AnimationOptions.EmoteDuration == nil then 
          animData.AnimationOptions.EmoteDuration = -1
          AttachWait = 0
        else
          AnimationDuration = animData.AnimationOptions.EmoteDuration
          AttachWait = animData.AnimationOptions.EmoteDuration
        end
      end

      TASK.TASK_PLAY_ANIM(playerPed, ChosenDict, ChosenAnimation, 2.0, 2.0, AnimationDuration, MovementType, 0, false, false, false)
      STREAMING.REMOVE_ANIM_DICT(ChosenDict)
      IsInAnimation = true

      if animData.AnimationOptions then
        if animData.AnimationOptions.Prop then
            PropName = animData.AnimationOptions.Prop
            PropBone = animData.AnimationOptions.PropBone
            PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6 = table.unpack(animData.AnimationOptions.PropPlacement)
            if animData.AnimationOptions.SecondProp then
              SecondPropName = animData.AnimationOptions.SecondProp
              SecondPropBone = animData.AnimationOptions.SecondPropBone
              SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6 = table.unpack(animData.AnimationOptions.SecondPropPlacement)
              SecondPropEmote = true
            else
              SecondPropEmote = false
            end
            util.yield(AttachWait)
            addProps(PropName, PropBone, PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6, PlayerProps)
            if SecondPropEmote then
                addProps(SecondPropName, SecondPropBone, SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6, PlayerProps)
            end
        end
        --   ptfx
        if animData.AnimationOptions.PtfxAsset then
            PtfxPrompt = true
            notify('Press G to show effect')
        else
            PtfxPrompt = false
        end
      end



end

function stopAnimation()
    if IsInAnimation then
        if #PlayerParticles > 0 then ptfxStop() end
        TASK.CLEAR_PED_TASKS(PLAYER.PLAYER_PED_ID())
        TASK.CLEAR_PED_SECONDARY_TASK(PLAYER.PLAYER_PED_ID())
    end
    if PlayerHasProp then clearProps(PlayerProps) end
    IsInAnimation = false
    PtfxCanHold = false
    PtfxPrompt = false
end

function IsPlayerAiming(player)
    return PLAYER.IS_PLAYER_FREE_AIMING(player) or CAM.IS_AIM_CAM_ACTIVE() or CAM._IS_AIM_CAM_THIRD_PERSON_ACTIVE()
end

function spairs(t, order)
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

--menu

OptMisc = menu.list(menu.my_root(), "Body Accessories", {}, "", function(); end)
menu.action(OptMisc, "Choose Body Prop Below", {''}, "", function(on_click)
    stopAnimation()
end)

OptProp = menu.list(OptMisc, "Any Prop", {}, "", function(); end)
for k,v in spairs(prop_list, function(t, a, b) return t[b][3] end) do
    menu.toggle(OptProp, k, {"use" .. k}, "", function (on_change)
        if on_change then
            addProps(v.Prop, v.PropBone, v.PropPlacement[1], v.PropPlacement[2], v.PropPlacement[3], v.PropPlacement[4], v.PropPlacement[5], v.PropPlacement[6], v.Used)
            v.Use = true
        else 
            clearProps(v.Used)
            v.Use = false
        end
    end, v.Use)
    util.yield()
end

OptProp = menu.list(OptMisc, "Duffel Bag", {}, "", function(); end)
for k,v in spairs(duffel_list, function(t, a, b) return t[b][3] end) do
    menu.toggle(OptProp, k, {"use" .. k}, "", function (on_change)
        if on_change then
            addProps(v.Prop, v.PropBone, v.PropPlacement[1], v.PropPlacement[2], v.PropPlacement[3], v.PropPlacement[4], v.PropPlacement[5], v.PropPlacement[6], v.Used)
            v.Use = true
        else 
            clearProps(v.Used)
            v.Use = false
        end
    end, v.Use)
    util.yield()
end

OptProp = menu.list(OptMisc, "Plushie & Figure", {}, "", function(); end)
for k,v in spairs(plushie_list, function(t, a, b) return t[b][3] end) do
    menu.toggle(OptProp, k, {"use" .. k}, "", function (on_change)
        if on_change then
            addProps(v.Prop, v.PropBone, v.PropPlacement[1], v.PropPlacement[2], v.PropPlacement[3], v.PropPlacement[4], v.PropPlacement[5], v.PropPlacement[6], v.Used)
            v.Use = true
        else 
            clearProps(v.Used)
            v.Use = false
        end
    end, v.Use)
    util.yield()
end

OptProp = menu.list(OptMisc, "Backpack Figure", {}, "", function(); end)
for k,v in spairs(plushiepack_list, function(t, a, b) return t[b][3] end) do
    menu.toggle(OptProp, k, {"use" .. k}, "", function (on_change)
        if on_change then
            addProps(v.Prop, v.PropBone, v.PropPlacement[1], v.PropPlacement[2], v.PropPlacement[3], v.PropPlacement[4], v.PropPlacement[5], v.PropPlacement[6], v.Used)
            v.Use = true
        else 
            clearProps(v.Used)
            v.Use = false
        end
    end, v.Use)
    util.yield()
end

OptProp = menu.list(OptMisc, "Weapon Prop", {}, "", function(); end)
for k,v in spairs(weapon_list, function(t, a, b) return t[b][3] end) do
    menu.toggle(OptProp, k, {"use" .. k}, "", function (on_change)
        if on_change then
            addProps(v.Prop, v.PropBone, v.PropPlacement[1], v.PropPlacement[2], v.PropPlacement[3], v.PropPlacement[4], v.PropPlacement[5], v.PropPlacement[6], v.Used)
            v.Use = true
        else 
            clearProps(v.Used)
            v.Use = false
        end
    end, v.Use)
    util.yield()
end

-- Manually check for updates with a menu option
menu.action(OptMisc, "Check for Update", {}, "The script will automatically check for updates at most daily, but you can manually check using this option anytime.", function()
    auto_update_config.check_interval = 0
    util.toast("Checking for updates")
    auto_updater.run_auto_update(auto_update_config)
end)


players.on_join(function(pid)
    if pid == players.user() then
        while memory.read_int(memory.script_global(1574988)) ~= 66 do util.yield() end
        for k,v in spairs(prop_list, function(t, a, b) return t[b][3] end) do
            if v.Use then
                addProps(v.Prop, v.PropBone, v.PropPlacement[1], v.PropPlacement[2], v.PropPlacement[3], v.PropPlacement[4], v.PropPlacement[5], v.PropPlacement[6], v.Used)
            end
        end
    end
end)

--loop

util.create_thread(function()
	while true do
		if PtfxPrompt then 
            if PAD.IS_CONTROL_PRESSED(0, 47) then
                ptfxStart(CurrentAnimation)
                util.yield(PtfxWait)
                if PtfxCanHold then
                    while PAD.IS_CONTROL_PRESSED(0, 47) and IsInAnimation do
                        util.yield(10)
                    end
                end
                ptfxStop()
            end
        end
		util.yield()
	end
end)

while true do
    if X_HandsUp then
        if PAD.IS_CONTROL_PRESSED(1, 323) then
            loadAnimation("random@mugging3")
            if not ENTITY.IS_ENTITY_PLAYING_ANIM(PLAYER.PLAYER_PED_ID(), "random@mugging3", "handsup_standing_base", 3) then
                stopAnimation()
                WEAPON.GIVE_WEAPON_TO_PED(PLAYER.PLAYER_PED_ID(), MISC.GET_HASH_KEY("WEAPON_UNARMED"), 1, false, true)
                TASK.TASK_PLAY_ANIM(PLAYER.PLAYER_PED_ID(), "random@mugging3", "handsup_standing_base", 4, 4, -1, 51, 0, false, false, false)
                STREAMING.REMOVE_ANIM_DICT("random@mugging3")
                PED.SET_ENABLE_HANDCUFFS(PLAYER.PLAYER_PED_ID(), true)
                IsInAnimation = true
            end
        end
        if PAD.IS_CONTROL_RELEASED(1, 323) and ENTITY.IS_ENTITY_PLAYING_ANIM(PLAYER.PLAYER_PED_ID(), "random@mugging3", "handsup_standing_base", 3) then
            PED.SET_ENABLE_HANDCUFFS(PLAYER.PLAYER_PED_ID(), false)
            stopAnimation()
        end
    end

    -- crouch
    if isCrouched then
        if IsPlayerAiming(PLAYER.PLAYER_PED_ID()) then
            -- limiting movement when aiming
            PED.SET_PED_MAX_MOVE_BLEND_RATIO(PLAYER.PLAYER_PED_ID(), 0.2)
        end
        -- stay crouched 
        -- idk it doesn't work when characters punch :/
        PED.SET_PED_USING_ACTION_MODE(PLAYER.PLAYER_PED_ID(), false, -1, "DEFAULT_ACTION")
    end

    util.yield()
end