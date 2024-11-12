-- Provincial Reputation for Tamriel_Data
-- by Rakanishu and Kynesifnar

-- Needs optimization
-- Reputation's impact on persuasion calc.: https://wiki.openmw.org/index.php/Research:Disposition_and_Persuasion

local this = {}

local common = require("tamrielData.common")

local baseReputation

-- Project information must be in reverse alphabetical order.
-- Info is based on T_D and project variables so don't change these unless they are changed in T_D
local projectTable = {
    {
        ["name"] = "Skyrim",
        ["province"] = common.i18n("reputation.Skyrim"),
        ["installVar"] = "T_Glob_Installed_SHotN",
        ["repVar"] = "T_Glob_Rep_Sky"
    },
    {
        ["name"] = "Padomaic Isles",
        ["province"] = common.i18n("reputation.PadomaicIsles"),
        ["installVar"] = "T_Glob_Installed_PI",
        ["repVar"] = "T_Glob_Rep_PI"
    },
    {
        ["name"] = "Morrowind",
        ["province"] = common.i18n("reputation.Morrowind"),
        ["installVar"] = "",
        ["repVar"] = ""
    },
    {
        ["name"] = "High Rock",
        ["province"] = common.i18n("reputation.HighRock"),
        ["installVar"] = "T_Glob_Installed_HR427",
        ["repVar"] = "T_Glob_Rep_Hr"
    },
    {
        ["name"] = "Hammerfell",
        ["province"] = common.i18n("reputation.Hammerfell"),
        ["installVar"] = "T_Glob_Installed_Ham",
        ["repVar"] = "T_Glob_Rep_Ham"
    },
    {
        ["name"] = "Cyrodiil",
        ["province"] = common.i18n("reputation.Cyrodiil"),
        ["installVar"] = "T_Glob_Installed_PC",
        ["repVar"] = "T_Glob_Rep_Cyr"
    }
}

-- Create a tooltip for each new reputation entry.
-- Get the source reputation block's info to identify project name.
---@param e tes3uiEventData
local function createTooltip(e)
    local statMenu = tes3ui.findMenu("MenuStat")
    local nameLabel = statMenu:findChild(e.source)
    local name = nameLabel.text

    local tooltip = tes3ui.createTooltipMenu()

    local tooltipLayout = tooltip:createBlock()
    tooltipLayout.positionX = 16
    tooltipLayout.positionY = -12
    tooltipLayout.width = 432
    tooltipLayout.height = 18
    tooltipLayout.maxWidth = 432
    tooltipLayout.autoHeight = true
    tooltipLayout.borderAllSides = 6
    tooltipLayout.childAlignX = 0.5
    tooltipLayout.childAlignY = 0.5
    tooltipLayout.flowDirection = top_to_bottom
    tooltipLayout:updateLayout()
    local tooltipLabel = tooltipLayout:createLabel{}
    tooltipLabel.text = common.i18n("reputation.tooltip", { name })
    tooltipLabel.positionX = 49
    tooltipLabel.width = 333
    tooltipLabel.height = 18
    tooltipLabel:updateLayout()
end

-- Create new reputation section with header, divider, and new entries 
-- whenever something updates the Stat Menu and forces rebuild
function this.uiRefreshedCallback()
    local statMenu = tes3ui.findMenu("MenuStat")

    if (not statMenu) then return end

    -- Find vanilla MenuStat_misc_layout that holds vanilla "Reputation" label and destroy it
    local vanillaNameLabel = statMenu:findChild("MenuStat_reputation_name")
    local vanillaLayout = vanillaNameLabel.parent
	local repLayout = vanillaLayout.parent
    vanillaLayout:destroy()

	-- Find where the bounty's misc_layout is so that the reputation blocks can be placed accordingly for the sake of compatiblity with mods affecting the stat menu such as Tidy Charsheet
	local bountyPlacement = 0

	for i = #repLayout.children, 1, -1 do
		if repLayout.children[i].name == "MenuStat_misc_layout" and repLayout.children[i].children[1] and repLayout.children[i].children[1].name == "MenuStat_Bounty_name" then
			bountyPlacement = i - #repLayout.children
			break
		end
	end

    -- Count number of added reputation blocks for later indexing/rearranging
    local prCounter = 0

    -- Iterate through TD mods and add reputation block for each
    for __,project in ipairs(projectTable) do
        local installVar = project.installVar
        local repVar = project.repVar

        if project.name == "Morrowind" or (tes3.getGlobal(installVar) and tes3.getGlobal(installVar) > 0) then
            prCounter = prCounter + 1

            local repBlockId = "MenuStat_TD_Rep_" .. project.name .. "_layout"

            local repBlock = repLayout:findChild(repBlockId)
            if repBlock then repBlock:destroy() end

            repBlock = repLayout:createBlock({ id = repBlockId })
            repBlock.width = 779
            repBlock.borderRight = 4
            repBlock.childAlignX = -1
            repBlock.autoHeight = true
            repBlock.widthProportional = 1.0

            local nameLabel = repBlock:createLabel({ id = "MenuStat_TD_Rep_" .. project.name .. "_name" })
            nameLabel.text = project.province
            nameLabel.positionX = 10
            nameLabel.width = 169
            nameLabel.borderLeft = 10

            local valueLabel = repBlock:createLabel({ id = "MenuStat_TD_Rep_" .. project.name .. "_value" })
			
            if project.name == "Morrowind" then
                valueLabel.text = tes3.player.object.reputation
            else
				local repVarGlobal = tes3.getGlobal(repVar)
				if repVarGlobal then
					valueLabel.text = tes3.getGlobal(repVar)
				else
					valueLabel.text = 0
				end
            end

            valueLabel.positionX = 770
            valueLabel.width = 9
            repLayout:reorderChildren((-1 * prCounter) - 1 + bountyPlacement, -1, 1)

            nameLabel:register(tes3.uiEvent.help, createTooltip)
        end
    end

    -- Create text label for new "Reputation" section header
    local titleLabel = repLayout:createLabel({ id = "MenuStat_TD_Rep_Title" })
    titleLabel.text = common.i18n("reputation.title")
    titleLabel.color = tes3ui.getPalette("header_color")
    repLayout:reorderChildren((-1 * prCounter) - 2 + bountyPlacement, -1, 1)

    -- Create divider between "Reputation" section and "Bounty"
    repLayout:createDivider({ id = "MenuStat_TD_Rep_Divider" })
    repLayout:reorderChildren(-2 + bountyPlacement, -1, 1)
    repLayout:updateLayout()
end

-- Switch the player's reputation value with one of the provincial values depending on the source ESM of the actor that they are speaking with
---@param e menuEnterEventData
function this.switchReputation(e)
	
	local actorTarget = tes3.rayTest{			-- tes3.getPlayerTarget doesn't work in conversations
		position = tes3.getPlayerEyePosition(),
		direction = tes3.getPlayerEyeVector(),
		root = {tes3.game.worldPickRoot},
		ignore = {tes3.player}
	}

	if not actorTarget or not actorTarget.reference then return end

	local actorSource = actorTarget.reference.sourceMod
	
	if actorSource then
		if e.menuMode then
			baseReputation = tes3.player.object.reputation
			if actorSource == "Cyr_Main.esm" then
				tes3.player.object.reputation = tes3.getGlobal("T_Glob_Rep_Cyr")
			elseif actorSource == "Sky_Main.esm" then
				tes3.player.object.reputation = tes3.getGlobal("T_Glob_Rep_Sky")
			end
		else
			if baseReputation and (actorSource == "Cyr_Main.esm" or actorSource == "Sky_Main.esm") then	-- If the actor is (presumably) in Morrowind, then don't change the reputation because it is unnecessary at best and may overwite a recent change at worst
				tes3.player.object.reputation = baseReputation
			end
		end
	end
end

return this