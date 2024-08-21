local this = {}

local common = require("tamrielData.common")
local config = require("tamrielData.config")

if config.summoningSpells == true then
	tes3.claimSpellEffectId("T_summon_Devourer", 2090)
	tes3.claimSpellEffectId("T_summon_DremArch", 2091)
	tes3.claimSpellEffectId("T_summon_DremCast", 2092)
	tes3.claimSpellEffectId("T_summon_Guardian", 2093)
	tes3.claimSpellEffectId("T_summon_LesserClfr", 2094)
	tes3.claimSpellEffectId("T_summon_Ogrim", 2095)
	tes3.claimSpellEffectId("T_summon_Seducer", 2096)
	tes3.claimSpellEffectId("T_summon_SeducerDark", 2097)
	tes3.claimSpellEffectId("T_summon_Vermai", 2098)
	tes3.claimSpellEffectId("T_summon_AtroStormMon", 2099)
	tes3.claimSpellEffectId("T_summon_IceWraith", 2100)
	tes3.claimSpellEffectId("T_summon_DweSpectre", 2101)
	tes3.claimSpellEffectId("T_summon_SteamCent", 2102)
	tes3.claimSpellEffectId("T_summon_SpiderCent", 2103)
	tes3.claimSpellEffectId("T_summon_WelkyndSpirit", 2104)
	tes3.claimSpellEffectId("T_summon_Auroran", 2105)
	tes3.claimSpellEffectId("T_summon_Herne", 2107)
	tes3.claimSpellEffectId("T_summon_Morphoid", 2108)
	tes3.claimSpellEffectId("T_summon_Draugr", 2109)
	tes3.claimSpellEffectId("T_summon_Spriggan", 2110)
	tes3.claimSpellEffectId("T_summon_BoneldGr", 2117)
end

if config.boundSpells == true then
	tes3.claimSpellEffectId("T_bound_Greaves", 2111)
	tes3.claimSpellEffectId("T_bound_Waraxe", 2112)
	tes3.claimSpellEffectId("T_bound_Warhammer", 2113)
	tes3.claimSpellEffectId("T_bound_HammerResdayn", 2114)
	tes3.claimSpellEffectId("T_bound_RazorResdayn", 2115)
	--tes3.claimSpellEffectId("T_bound_Pauldron", 2116)
	--tes3.claimSpellEffectId("T_bound_ThrowingKnives", 2118)
end

if config.interventionSpells == true then
	tes3.claimSpellEffectId("T_intervention_Kyne", 2122)
end

if config.miscSpells == true then
	tes3.claimSpellEffectId("T_alteration_Passwall", 2106)
	tes3.claimSpellEffectId("T_mysticism_BanishDae", 2119)
	tes3.claimSpellEffectId("T_mysticism_ReflectDmg", 2120)
	--tes3.claimSpellEffectId("T_mysticism_DetHuman", 2121)
end

-- unique id, spell id to override, spell name, creature id, effect mana cost, spell mana cost, icon, spell duration, effect description
local td_summons = {
	{ 2090, "T_Com_Cnj_SummonDevourer", common.i18n("magic.summonDevourer"), "T_Dae_Cre_Devourer_01", 52, 155, "td\\s\\td_s_summ_dev.dds", 60, common.i18n("magic.summonDevourerDesc")},
	{ 2091, "T_Com_Cnj_SummonDremoraArcher", common.i18n("magic.summonDremoraArcher"), "T_Dae_Cre_Drem_Arch_01", 33, 98, "td\\s\\td_s_sum_drm_arch.dds", 60, common.i18n("magic.summonDremoraArcherDesc")},
	{ 2092, "T_Com_Cnj_SummonDremoraCaster", common.i18n("magic.summonDremoraCaster"), "T_Dae_Cre_Drem_Cast_01", 31, 93, "td\\s\\td_s_sum_drm_mage.dds", 60, common.i18n("magic.summonDremoraCasterDesc")},
	{ 2093, "T_Com_Cnj_SummonGuardian", common.i18n("magic.summonGuardian"), "T_Dae_Cre_Guardian_01", 69, 207, "td\\s\\td_s_sum_guard.dds", 60, common.i18n("magic.summonGuardianDesc")},
	{ 2094, "T_Com_Cnj_SummonLesserClannfear", common.i18n("magic.summonLesserClannfear"), "T_Dae_Cre_LesserClfr_01", 22, 66, "td\\s\\td_s_sum_lsr_clan.dds", 60, common.i18n("magic.summonLesserClannfearDesc")},
	{ 2095, "T_Com_Cnj_SummonOgrim", common.i18n("magic.summonOgrim"), "ogrim", 33, 99, "td\\s\\td_s_summ_ogrim.dds", 60, common.i18n("magic.summonOgrimDesc")},
	{ 2096, "T_Com_Cnj_SummonSeducer", common.i18n("magic.summonSeducer"), "T_Dae_Cre_Seduc_01", 52, 156, "td\\s\\td_s_summ_sed.dds", 60, common.i18n("magic.summonSeducerDesc")},
	{ 2097, "T_Com_Cnj_SummonSeducerDark", common.i18n("magic.summonSeducerDark"), "T_Dae_Cre_SeducDark_02", 75, 225, "td\\s\\td_s_summ_d_sed.dds", 60, common.i18n("magic.summonSeducerDarkDesc")},
	{ 2098, "T_Com_Cnj_SummonVermai", common.i18n("magic.summonVermai"), "T_Dae_Cre_Verm_01", 29, 88, "td\\s\\td_s_summ_vermai.dds", 60, common.i18n("magic.summonVermaiDesc")},
	{ 2099, "T_Com_Cnj_SummonStormMonarch", common.i18n("magic.summonStormMonarch"), "T_Dae_Cre_MonarchSt_01", 60, 179, "td\\s\\td_s_sum_stm_monch.dds", 60, common.i18n("magic.summonStormMonarchDesc")},
	{ 2100, "T_Nor_Cnj_SummonIceWraith", common.i18n("magic.summonIceWraith"), "T_Sky_Cre_IceWr_01", 35, 104, "td\\s\\td_s_sum_ice_wrth.dds", 60, common.i18n("magic.summonIceWraithDesc")},
	{ 2101, "T_Dwe_Cnj_Uni_SummonDweSpectre", common.i18n("magic.summonDweSpectre"), "dwarven ghost", 17, 52, "td\\s\\td_s_sum_dwe_spctre.dds", 60, common.i18n("magic.summonDweSpectreDesc")},
	{ 2102, "T_Dwe_Cnj_Uni_SummonSteamCent", common.i18n("magic.summonSteamCent"), "centurion_steam", 29, 88, "td\\s\\td_s_sum_dwe_cent.dds", 60, common.i18n("magic.summonSteamCentDesc")},
	{ 2103, "T_Dwe_Cnj_Uni_SummonSpiderCent", common.i18n("magic.summonSpiderCent"), "centurion_spider", 15, 46, "td\\s\\td_s_sum_dwe_spdr.dds", common.i18n("magic.summonSpiderCentDesc")},
	{ 2104, "T_Ayl_Cnj_SummonWelkyndSpirit", common.i18n("magic.summonWelkyndSpirit"), "T_Ayl_Cre_WelkSpr_01", 29, 78, "td\\s\\td_s_sum_welk_srt.dds", 60, common.i18n("magic.summonWelkyndSpiritDesc")},
	{ 2105, "T_Com_Cnj_SummonAuroran", common.i18n("magic.summonAuroran"), "T_Dae_Cre_Auroran_01", 50, 130, "td\\s\\td_s_sum_auro.dds", 60, common.i18n("magic.summonAuroranDesc")},
	{ 2107, "T_Com_Cnj_SummonHerne", common.i18n("magic.summonHerne"), "T_Dae_Cre_Herne_01", 52, 155, "td\\s\\td_s_sum_herne.dds", 60, common.i18n("magic.summonHerneDesc")},
	{ 2108, "T_Com_Cnj_SummonMorphoid", common.i18n("magic.summonMorphoid"), "T_Dae_Cre_Morphoid_01", 52, 155, "td\\s\\td_s_sum_morph.dds", 60, common.i18n("magic.summonMorphoidDesc")},
	{ 2109, "T_Nor_Cnj_SummonDraugr", common.i18n("magic.summonDraugr"), "T_Sky_Und_Drgr_01", 29, 78, "td\\s\\td_s_sum_draugr.dds", 60, common.i18n("magic.summonDraugrDesc")},
	{ 2110, "T_Nor_Cnj_SummonSpriggan", common.i18n("magic.summonSpriggan"), "T_Sky_Cre_Spriggan_01", 29, 78, "td\\s\\td_s_sum_sprig.dds", 60, common.i18n("magic.summonSprigganDesc")},
	{ 2117, "T_De_Cnj_SummonGreaterBonelord", common.i18n("magic.summonGreaterBonelord"), "T_Mw_Und_BoneldGr_01", 54, 162, "td\\s\\td_s_sum_gtr_bnlrd.dds", 60, common.i18n("magic.summonGreaterBonelordDesc")},
}

-- unique id, spell id to override, spell name, item id, 2nd item ID, effect mana cost, spell mana cost, icon, spell duration, effect description
local td_bounds = {
	{ 2111, "T_Com_Cnj_BoundGreaves", common.i18n("magic.boundGreaves"), "T_Com_Bound_Greaves_01", "", 2, 6, "td\\s\\td_s_bnd_grves.dds", 60, common.i18n("magic.boundGreavesDesc")},
	{ 2112, "T_Com_Cnj_BoundWarAxe", common.i18n("magic.boundWarAxe"), "T_Com_Bound_WarAxe_01", "", 2, 6, "td\\s\\td_s_bnd_waxe.dds", 60, common.i18n("magic.boundWarAxeDesc")},
	{ 2113, "T_Com_Cnj_BoundWarhammer", common.i18n("magic.boundWarhammer"), "T_Com_Bound_Warhammer_01", "", 2, 6, "td\\s\\td_s_bnd_wham.dds", 60, common.i18n("magic.boundWarhammerDesc")},
	{ 2114, "T_De_Cnj_Uni_BoundHammerResdayn", "", "T_Com_Bound_Warhammer_01", "", 2, 6, "td\\s\\td_s_bnd_res_ham.dds", 60, ""},
	{ 2115, "T_De_Cnj_Uni_BoundRazorOResdayn", "", "bound_dagger", "", 2, 6, "td\\s\\td_s_bnd_red_razor.dds", 60, ""},
	--{ 2116, "T_Com_Cnj_BoundPauldron", "Bound Pauldrons", "T_Com_Bound_PauldronL_01", "T_Com_Bound_PauldronR_01", 2, 6, "td\\s\\td_s_bnd_pldrn.dds", 60, "The spell effect conjures a lesser Daedra bound in the form of magical, wondrously light Daedric pauldrons. The pauldrons appear automatically equipped on the caster, displacing any currently equipped shoulder armor to inventory.  When the effect ends, the pauldrons disappear, and any previously equipped shoulder armor is automatically re-equipped."},
	--{ 2118, "T_Com_Cnj_BoundThrowingKnives", "Bound Throwing Knives", "T_Com_Bound_ThrowingKnife_01", "", 2, 6, "td\\s\\td_s_bnd_knives.dds", 60, "The spell effect conjures a lesser Daedra bound in the form of magical, wondrously light Daedric throwing knives. The throwing knives appear automatically equipped on the caster, displacing any currently equipped weapon to inventory.  When the effect ends, the throwing knives disappear, and any previously equipped weapon is automatically re-equipped."},
}

-- unique id, spell id to override, spell name, effect mana cost, spell mana cost, icon, spell duration, spell radius, spell range type, minimum magnitude, maximum magnitude, effect description
local td_interventions = {
	{ 2122, "T_Nor_Mys_KynesIntervention", common.i18n("magic.interventionKyne"), 150, 8, "td\\s\\td_s_int_kyne.tga", common.i18n("magic.interventionKyneDesc")},
}

-- unique id, spell id to override, spell name, effect mana cost, spell mana cost, icon, spell duration, spell radius, spell range type, minimum magnitude, maximum magnitude, effect description
local td_miscs = {
	{ 2106, "T_Com_Mys_UNI_Passwall", common.i18n("magic.miscPasswall"), 750, 96, "td\\s\\td_s_passwall.tga", 0, 25, 1, 0, 0, common.i18n("magic.miscPasswallDesc")},
	{ 2119, "T_Com_Mys_BanishDaedra", common.i18n("magic.miscBanish"), 32, 40, "td\\s\\td_s_ban_daedra.tga", 0, 0, 1, 25, 25, common.i18n("magic.miscBanishDesc")},
	{ 2120, "T_Com_Mys_ReflectDamage", common.i18n("magic.miscReflectDamage"), 15, 56, "td\\s\\td_s_ref_dam.tga", 5, 0, 0, 10, 20, common.i18n("magic.miscReflectDamageDesc")}
}

function this.replaceInterventionMarkers(cellTable, markerID)
	for _,v in pairs(cellTable) do
		local xCoord, yCoord = unpack(v)
		local cell = tes3.getCell({ x = xCoord, y = yCoord })

		local hasNewMarker = false
		local vanillaMarker = nil
		for ref in cell:iterateReferences(tes3.objectType.static) do
			if ref.id == markerID then
				hasNewMarker = true
			elseif ref.id == "DivineMarker" then
				vanillaMarker = ref
			end
		end

		if vanillaMarker then
			if not hasNewMarker then
				tes3.createReference({ object = markerID, position = vanillaMarker.position, orientation = vanillaMarker.orientation })
			end
			vanillaMarker:delete()
		end
	end
end

---@param e tes3magicEffectTickEventData
local function kynesInterventionEffect(e)
	if (not e:trigger()) then
		return
	end

	if not tes3.worldController.flagTeleportingDisabled then
		local caster = e.sourceInstance.caster
		local marker = tes3.findClosestExteriorReferenceOfObject({ object = "T_Aid_KyneInterventionMarker" })
		if marker then
			tes3.positionCell({ reference = caster, position = marker.position, teleportCompanions = false })			
		end
	else
		tes3ui.showNotifyMenu(tes3.findGMST(tes3.gmst.sTeleportDisabled).value)
	end

	e.effectInstance.state = tes3.spellState.retired
end

---@param e damageEventData
function this.reflectDamageEffect(e)
	if e.source == tes3.damageSource.attack and e.attacker then
		local reflectDamageEffects = e.mobile:getActiveMagicEffects({ effect = 2120 })
		if reflectDamageEffects then
			local percentMagnitude
			local reflectedDamage = 0
			for _,v in pairs(reflectDamageEffects) do -- This effect is multiplicative like Morrowind's reflect rather than additive like Oblivion's reflect damage
				percentMagnitude = v.magnitude / 100
				reflectedDamage = reflectedDamage + (e.damage * percentMagnitude)
				e.damage = e.damage * (1 - percentMagnitude)
			end

			e.attacker:applyDamage({ damage = reflectedDamage, playerAttack = true })

			if e.damage < 0 then
				e.damage = 0		-- Make sure that the effect can't heal the defender
			end
		end
	end
end

---@param e damageHandToHandEventData
function this.reflectDamageHHEffect(e)
	if e.attacker then
		local reflectDamageEffects = e.mobile:getActiveMagicEffects({ effect = 2120 })
		if reflectDamageEffects then
			local percentMagnitude
			local reflectedDamage = 0
			for _,v in pairs(reflectDamageEffects) do -- This effect is multiplicative like Morrowind's reflect rather than additive like Oblivion's reflect damage
				percentMagnitude = v.magnitude / 100
				reflectedDamage = reflectedDamage + (e.fatigueDamage * percentMagnitude)
				e.fatigueDamage = e.fatigueDamage * (1 - percentMagnitude)
			end

			e.attacker:applyFatigueDamage(reflectedDamage, 0, false)

			if e.fatigueDamage < 0 then
				e.fatigueDamage = 0		-- Make sure that the effect can't heal the defender
			end
		end
	end
end

---@param e tes3magicEffectTickEventData
local function banishDaedraEffect(e)
	if (not e:trigger()) then
		return
	end

	local target = e.effectInstance.target

	if (target.object.type ~= tes3.creatureType.daedra or target.isDead) then
		e.effectInstance.state = tes3.spellState.retired
		return
	end

	local magnitude = e.effectInstance.effectiveMagnitude
	local targetLevel = target.object.level
	local caster = e.sourceInstance.caster
	local uniqueItems = {}

	if magnitude >= 4 * ((targetLevel / 2) + ((targetLevel / 2) * target.mobile.health.normalized)) then
		for _,v in pairs(target.baseObject.inventory.items) do
			if v.object.objectType ~= tes3.objectType.leveledItem then
				table.insert(uniqueItems, v.object)
			end
		end
		
		target:setActionFlag(tes3.actionFlag.onDeath)
		tes3.setKillCount({ actor = target.object, count = tes3.getKillCount({ actor = target.object }) + 1 })
		tes3.playSound{ sound = "mysticism hit", reference = target.mobile }
		local vfx = tes3.createVisualEffect({ object = "T_VFX_Banish", lifespan = 1.5, position = target.position })
		target:disable()

		local targetHandle = tes3.makeSafeObjectHandle(target)	-- Might as well use the handles, right?
		local casterHandle = tes3.makeSafeObjectHandle(caster)
		timer.delayOneFrame(function()
			timer.delayOneFrame(function()		-- Give MWScripts using onDeath time to run
				if not targetHandle:valid() or not casterHandle:valid() then
					return
				end

				local target = targetHandle:getObject()
				local caster = casterHandle:getObject()
				local hasNotPlayedSound = true
				for _,v in pairs(target.mobile.inventory) do
					if table.contains(uniqueItems, v.object) then
						tes3.transferItem({ from = target, to = caster, item = v.object, count = 99, completeTransfer = true, playSound = hasNotPlayedSound })	-- This setup can account for how Dregas Volar's items are given to the player, so that they don't end up with two of both
						hasNotPlayedSound = false	-- Make sure that only the pickup sound for the first item plays
					end
				end

				target:delete()
			end)
		end)
	else
		target.mobile:startCombat(caster.mobile)
		tes3ui.showNotifyMenu(common.i18n("magic.banishFailure", { target.object.name }))
	end

	e.effectInstance.state = tes3.spellState.retired
end

---@param node niNode
local function hasAlphaBlend(node)
	for _,child in pairs(node.children) do
		if child.alphaProperty then
			if (child.alphaProperty.propertyFlags % 2) ~= 0 then
				return true
			end
		end

		if child.children then
			return hasAlphaBlend(child)
		end
	end
end

---@param wallPosition tes3vector3
---@param forward tes3vector3
---@param right tes3vector3
---@param up tes3vector3
---@param unitRange number
local function passwallCalculate(wallPosition, forward, right, up, unitRange)
	local nodeArr = tes3.mobilePlayer.cell.pathGrid.nodes
	local playerPosition = tes3.mobilePlayer.position

	local minDistance = 108
	local forwardOffset = 0
	local rayTestOffset = 19

	local rightCoord = (right * 160)
	local upCoord = (up * 130)			-- Should this account for player height, which affects castPosition and wallPosition?
	local upOffset = (up * 25)			-- Not having an offset can allow the player to teleport to the floor above for some sets

	local startPosition = wallPosition + (forward * forwardOffset)
	local endPosition = wallPosition + (forward * (unitRange + forwardOffset))

	local point1 = startPosition - rightCoord - upCoord + upOffset
	local point2 = endPosition + rightCoord + upCoord - upOffset

	local bestDistance = unitRange
	local bestPosition = nil

	for _,node in pairs(nodeArr) do
		if (point1.x <= node.position.x and node.position.x <= point2.x) or (point1.x >= node.position.x and node.position.x >= point2.x) then
			if (point1.y <= node.position.y and node.position.y <= point2.y) or (point1.y >= node.position.y and node.position.y >= point2.y) then
				if (point1.z <= node.position.z and node.position.z <= point2.z) or (point1.z >= node.position.z and node.position.z >= point2.z) then
					local distance = startPosition:distance(node.position)
					if distance <= bestDistance and playerPosition:distance(node.position) >= minDistance then
						local targetY = tes3.rayTest{
							position = node.position - (forward * rayTestOffset) + tes3vector3.new(0, 0, 0.5 * tes3.mobilePlayer.height),
							direction = forward,
							maxDistance = rayTestOffset * 2,
							root = {tes3.game.sceneGraphCollideString},	-- Only checks collisions? There isn't any documentation, but it is capable of hitting stuff
							useBackTriangles = true,
						}
						local targetX = tes3.rayTest{
							position = node.position - (right * rayTestOffset) + tes3vector3.new(0, 0, 0.5 * tes3.mobilePlayer.height),
							direction = right,
							maxDistance = rayTestOffset * 2,
							root = {tes3.game.sceneGraphCollideString},
							useBackTriangles = true,
						}
						
						if not targetY and not targetX then
							bestDistance = distance
							bestPosition = node.position
						end
					end
				end
			end
		end
	end

	local checkedNodeTable = { }
	for _,node in pairs(nodeArr) do
		for _,connectedNode in pairs(node.connectedNodes) do
			if not table.contains(checkedNodeTable, node) and not table.contains(checkedNodeTable, connectedNode) then			-- Only check each connection once
				if (startPosition:distance(node.position) <= 1024 and startPosition:distance(connectedNode.position) <= 1024) or (endPosition:distance(node.position) <= 1024 and endPosition:distance(connectedNode.position) <= 1024) then	-- Reasonable limit on how far nodes can be
					local increment = (connectedNode.position - node.position) / 15
					local connectionLength = connectedNode.position:distance(node.position)
					local incrementLength = connectionLength / 15

					local prevStartDistance = nil
					local prevEndDistance = nil

					local prevInVolume = false		-- Given that raytests are used to check for collision near the tested positions, the closest acceptable position might actually be further away, so positions should keep being checked until they are outside of the volume entirely
					
					for i=1,14,1 do
						local incrementPosition = node.position + (increment * i)
						local startDistance = incrementPosition:distance(startPosition)
						local endDistance = incrementPosition:distance(endPosition)

						if prevStartDistance and prevEndDistance and not prevInVolume and (startDistance > prevStartDistance and endDistance > prevEndDistance) or ((connectionLength - (incrementLength * i)) < startDistance and (connectionLength - (incrementLength * i)) < endDistance) then
							break		-- If incrementPosition is moving away or too far from the volume that the player can teleport within and was not inside of it then the loop will be broken out of for the sake of performance
						end

						prevInVolume = false

						if startDistance <= bestDistance and playerPosition:distance(incrementPosition) >= minDistance then
							if (point1.x <= incrementPosition.x and incrementPosition.x <= point2.x) or (point1.x >= incrementPosition.x and incrementPosition.x >= point2.x) then
								if (point1.y <= incrementPosition.y and incrementPosition.y <= point2.y) or (point1.y >= incrementPosition.y and incrementPosition.y >= point2.y) then
									if (point1.z <= incrementPosition.z and incrementPosition.z <= point2.z) or (point1.z >= incrementPosition.z and incrementPosition.z >= point2.z) then
										prevInVolume = true
										
										local targetY = tes3.rayTest{
											position = incrementPosition - (forward * rayTestOffset) + tes3vector3.new(0, 0, 0.5 * tes3.mobilePlayer.height),
											direction = forward,
											maxDistance = rayTestOffset * 2,
											root = {tes3.game.sceneGraphCollideString},
											useBackTriangles = true,
										}
										local targetX = tes3.rayTest{
											position = node.position - (right * rayTestOffset) + tes3vector3.new(0, 0, 0.5 * tes3.mobilePlayer.height),
											direction = right,
											maxDistance = rayTestOffset * 2,
											root = {tes3.game.sceneGraphCollideString},
											useBackTriangles = true,
										}
										
										if not targetY and not targetX then
											bestDistance = startDistance
											bestPosition = incrementPosition
										end
									end
								end
							end
						end
						
						prevStartDistance = startDistance
						prevEndDistance = endDistance
					end
				end
			end
		end

		table.insert(checkedNodeTable, node)
	end

	return bestPosition
end

---@param e magicCastedEventData
function this.passwallEffect(e)
	for _,v in pairs(e.source.effects) do
		if v.id == 2106 then
			if tes3.mobilePlayer.cell.isInterior and tes3.mobilePlayer.cell.pathGrid then
				if not tes3.mobilePlayer.underwater then
					if not tes3.worldController.flagTeleportingDisabled then
						local castPosition = tes3.mobilePlayer.position + tes3vector3.new(0, 0, 0.7 * tes3.mobilePlayer.height)	-- Position of where spells are casted
						local forward = (tes3.worldController.armCamera.cameraData.camera.worldDirection * tes3vector3.new(1, 1, 0)):normalized()
						local right = tes3.worldController.armCamera.cameraData.camera.worldRight:normalized()
						local up = tes3vector3.new(0, 0, 1)

						local unitRange = v.radius * 22.1

						local hitSound = "alteration hit"
						local hitVFX = "VFX_AlterationHit"
						
						local checkWard = tes3.rayTest{
							position = castPosition,
							direction = forward,
							findAll = true,
							maxDistance = 128 + unitRange,
							root = niTriShape,
							ignore = {tes3.player, tes3.game.worldPickRoot},
							useModelBounds = true,
							observeAppCullFlag  = false,
						}

						if checkWard then
							for _,detection in pairs(checkWard) do
								if detection.reference and string.find(detection.reference.baseObject.id, "T_PasswallWard_") then	-- Prevents teleporting through T_PasswallWard statics
									tes3ui.showNotifyMenu(common.i18n("magic.passWallWard"))
									return
								end
							end
						end

						local target = tes3.rayTest{
							position = castPosition,
							direction = forward,
							maxDistance = 128,
							ignore = {tes3.player},
						}

						local hitReference, wallPosition = target and target.reference, target and target.intersection
						
						if hitReference then
							if hitReference.baseObject.objectType == tes3.objectType.static then
								if hitReference.baseObject.boundingBox.max:heightDifference(hitReference.baseObject.boundingBox.min) >= 192 then		-- Check how tall the targeted object is; this is Passwall, not Passtable
									local bestPosition = passwallCalculate(wallPosition, forward, right, up, unitRange)

									if bestPosition then
										tes3.playSound{ sound = hitSound, reference = tes3.mobilePlayer }		-- Since there isn't a target in the normal sense, the sound won't play without this
										local vfx = tes3.createVisualEffect({ object = hitVFX, lifespan = 2, avObject = tes3.player.sceneNode })
										tes3.mobilePlayer.position = bestPosition
									end
								end
							elseif hitReference.baseObject.objectType == tes3.objectType.activator then
								if hitReference.baseObject.boundingBox.max:heightDifference(hitReference.baseObject.boundingBox.min) >= 192 then
									local root = target.object
									while root.parent do	-- Gets root node of the targetted mesh
										root = root.parent
									end
									
									if not hasAlphaBlend(root) then		-- Prevents passing through activators with transparency, such as forcefields
										local bestPosition = passwallCalculate(wallPosition, forward, right, up, unitRange)

										if bestPosition then
											tes3.playSound{ sound = hitSound, reference = tes3.mobilePlayer }		-- Since there isn't a target in the normal sense, the sound won't play without this
											local vfx = tes3.createVisualEffect({ object = hitVFX, lifespan = 2, avObject = tes3.player.sceneNode })
											tes3.mobilePlayer.position = bestPosition
										end
									else
										tes3ui.showNotifyMenu(common.i18n("magic.passwallAlpha"))
									end
								end
							elseif hitReference.baseObject.objectType == tes3.objectType.door and ((string.find(string.lower(hitReference.baseObject.name), "door") or string.find(string.lower(hitReference.baseObject.name), "wooden gate") or string.find(string.lower(hitReference.baseObject.name), "palace gates") or
									string.find(string.lower(hitReference.baseObject.name), "stone gate") or string.find(string.lower(hitReference.baseObject.name), "old iron gate")) and
									not (string.find(string.lower(hitReference.baseObject.name), "trap") or string.find(string.lower(hitReference.baseObject.name), "cell") or string.find(string.lower(hitReference.baseObject.name), "tent"))) then
								if not hitReference.destination then
									local bestPosition = passwallCalculate(wallPosition, forward, right, up, unitRange)
									tes3.triggerCrime({ type = tes3.crimeType.trespass })
									if bestPosition then
										tes3.playSound{ sound = hitSound, reference = tes3.mobilePlayer }		-- Since there isn't a target in the normal sense, the sound won't play without this
										local vfx = tes3.createVisualEffect({ object = hitVFX, lifespan = 2, avObject = tes3.player.sceneNode })
										tes3.mobilePlayer.position = bestPosition
									end
								elseif hitReference.destination and hitReference.destination.cell.isInterior then
									tes3.triggerCrime({ type = tes3.crimeType.trespass })
									tes3.playSound{ sound = hitSound, reference = tes3.mobilePlayer }		-- Since there isn't a target in the normal sense, the sound won't play without this
									local vfx = tes3.createVisualEffect({ object = hitVFX, lifespan = 2, avObject = tes3.player.sceneNode })
									tes3.positionCell({ cell = hitReference.destination.cell, position = hitReference.destination.marker.position, orientation = hitReference.destination.marker.orientation, teleportCompanions = false })
								else
									tes3ui.showNotifyMenu(common.i18n("magic.passWallExterior"))
								end
							end
						end
					else
						tes3ui.showNotifyMenu(tes3.findGMST(tes3.gmst.sTeleportDisabled).value)
					end
				else
					tes3ui.showNotifyMenu(common.i18n("magic.passWallUnderwater"))
				end
			else
				tes3ui.showNotifyMenu(common.i18n("magic.passWallExterior"))
			end

			return
		end
	end
end

-- Adds new magic effects based on the tables above
event.register(tes3.event.magicEffectsResolved, function()
	if config.summoningSpells == true then
		local summonHungerEffect = tes3.getMagicEffect(tes3.effect.summonHunger)

		for k, v in pairs(td_summons) do
			local effectID, spellID, spellName, creatureID, effectCost, spellCost, iconPath, duration, effectDescription = unpack(v)
			tes3.addMagicEffect{
				id = effectID,
				name = spellName,
				description = effectDescription,
				school = tes3.magicSchool.conjuration,
				baseCost = effectCost,
				speed = summonHungerEffect.speed,
				allowEnchanting = true,
				allowSpellmaking = true,
				appliesOnce = summonHungerEffect.appliesOnce,
				canCastSelf = true,
				canCastTarget = false,
				canCastTouch = false,
				casterLinked = summonHungerEffect.casterLinked,
				hasContinuousVFX = summonHungerEffect.hasContinuousVFX,
				hasNoDuration = summonHungerEffect.hasNoDuration,
				hasNoMagnitude = summonHungerEffect.hasNoMagnitude,
				illegalDaedra = summonHungerEffect.illegalDaedra,
				isHarmful = summonHungerEffect.isHarmful,
				nonRecastable = summonHungerEffect.nonRecastable,
				targetsAttributes = summonHungerEffect.targetsAttributes,
				targetsSkills = summonHungerEffect.targetsSkills,
				unreflectable = summonHungerEffect.unreflectable,
				usesNegativeLighting = summonHungerEffect.usesNegativeLighting,
				icon = iconPath,
				particleTexture = summonHungerEffect.particleTexture,
				castSound = summonHungerEffect.castSoundEffect.id,
				castVFX = summonHungerEffect.castVisualEffect.id,
				boltSound = summonHungerEffect.boltSoundEffect.id,
				boltVFX = summonHungerEffect.boltVisualEffect.id,
				hitSound = summonHungerEffect.hitSoundEffect.id,
				hitVFX = summonHungerEffect.hitVisualEffect.id,
				areaSound = summonHungerEffect.areaSoundEffect.id,
				areaVFX = summonHungerEffect.areaVisualEffect.id,
				lighting = {x = summonHungerEffect.lightingRed, y = summonHungerEffect.lightingGreen, z = summonHungerEffect.lightingBlue},
				size = summonHungerEffect.size,
				sizeCap = summonHungerEffect.sizeCap,
				onTick = function(eventData)
					eventData:triggerSummon(creatureID)
				end,
				onCollision = nil
			}
		end
	end
	
	if config.boundSpells == true then
		local boundCuirassEffect = tes3.getMagicEffect(tes3.effect.boundCuirass)

		for k, v in pairs(td_bounds) do
			local effectID, spellID, spellName, itemID, itemID_02, effectCost, spellCost, iconPath, duration, effectDescription = unpack(v)
			tes3.addMagicEffect{
				id = effectID,
				name = spellName,
				description = effectDescription,
				school = tes3.magicSchool.conjuration,
				baseCost = effectCost,
				speed = boundCuirassEffect.speed,
				allowEnchanting = true,
				allowSpellmaking = true,
				appliesOnce = boundCuirassEffect.appliesOnce,
				canCastSelf = true,
				canCastTarget = false,
				canCastTouch = false,
				casterLinked = boundCuirassEffect.casterLinked,
				hasContinuousVFX = boundCuirassEffect.hasContinuousVFX,
				hasNoDuration = boundCuirassEffect.hasNoDuration,
				hasNoMagnitude = boundCuirassEffect.hasNoMagnitude,
				illegalDaedra = boundCuirassEffect.illegalDaedra,
				isHarmful = boundCuirassEffect.isHarmful,
				nonRecastable = boundCuirassEffect.nonRecastable,
				targetsAttributes = boundCuirassEffect.targetsAttributes,
				targetsSkills = boundCuirassEffect.targetsSkills,
				unreflectable = boundCuirassEffect.unreflectable,
				usesNegativeLighting = boundCuirassEffect.usesNegativeLighting,
				icon = iconPath,
				particleTexture = boundCuirassEffect.particleTexture,
				castSound = boundCuirassEffect.castSoundEffect.id,
				castVFX = boundCuirassEffect.castVisualEffect.id,
				boltSound = boundCuirassEffect.boltSoundEffect.id,
				boltVFX = boundCuirassEffect.boltVisualEffect.id,
				hitSound = boundCuirassEffect.hitSoundEffect.id,
				hitVFX = boundCuirassEffect.hitVisualEffect.id,
				areaSound = boundCuirassEffect.areaSoundEffect.id,
				areaVFX = boundCuirassEffect.areaVisualEffect.id,
				lighting = {x = boundCuirassEffect.lightingRed, y = boundCuirassEffect.lightingGreen, z = boundCuirassEffect.lightingBlue},
				size = boundCuirassEffect.size,
				sizeCap = boundCuirassEffect.sizeCap,
				onTick = function(eventData)
					if tes3.getObject(itemID).objectType == tes3.objectType.armor then
						eventData:triggerBoundArmor(itemID)
					elseif tes3.getObject(itemID).objectType == tes3.objectType.weapon then
						eventData:triggerBoundWeapon(itemID)
					end
				end,
				onCollision = nil
			}
		end
	end
	
	if config.interventionSpells == true then
		local divineInterventionEffect = tes3.getMagicEffect(tes3.effect.divineIntervention)

		local effectID, spellID, spellName, effectCost, spellCost, iconPath, effectDescription = unpack(td_interventions[1])
		tes3.addMagicEffect{
			id = effectID,
			name = spellName,
			description = effectDescription,
			school = tes3.magicSchool.mysticism,
			baseCost = effectCost,
			speed = divineInterventionEffect.speed,
			allowEnchanting = divineInterventionEffect.allowEnchanting,
			allowSpellmaking = divineInterventionEffect.allowSpellmaking,
			appliesOnce = divineInterventionEffect.appliesOnce,
			canCastSelf = divineInterventionEffect.canCastSelf,
			canCastTarget = divineInterventionEffect.canCastTarget,
			canCastTouch = divineInterventionEffect.canCastTouch,
			casterLinked = divineInterventionEffect.casterLinked,
			hasContinuousVFX = divineInterventionEffect.hasContinuousVFX,
			hasNoDuration = divineInterventionEffect.hasNoDuration,
			hasNoMagnitude = divineInterventionEffect.hasNoMagnitude,
			illegalDaedra = divineInterventionEffect.illegalDaedra,
			isHarmful = divineInterventionEffect.isHarmful,
			nonRecastable = divineInterventionEffect.nonRecastable,
			targetsAttributes = divineInterventionEffect.targetsAttributes,
			targetsSkills = divineInterventionEffect.targetsSkills,
			unreflectable = divineInterventionEffect.unreflectable,
			usesNegativeLighting = divineInterventionEffect.usesNegativeLighting,
			icon = iconPath,
			particleTexture = divineInterventionEffect.particleTexture,
			castSound = divineInterventionEffect.castSoundEffect.id,
			castVFX = divineInterventionEffect.castVisualEffect.id,
			boltSound = divineInterventionEffect.boltSoundEffect.id,
			boltVFX = divineInterventionEffect.boltVisualEffect.id,
			hitSound = divineInterventionEffect.hitSoundEffect.id,
			hitVFX = divineInterventionEffect.hitVisualEffect.id,
			areaSound = divineInterventionEffect.areaSoundEffect.id,
			areaVFX = divineInterventionEffect.areaVisualEffect.id,
			lighting = {x = divineInterventionEffect.lightingRed, y = divineInterventionEffect.lightingGreen, z = divineInterventionEffect.lightingBlue},
			size = divineInterventionEffect.size,
			sizeCap = divineInterventionEffect.sizeCap,
			onTick = kynesInterventionEffect,
			onCollision = nil
		}
	end
	
	if config.miscSpells == true then
		local levitateEffect = tes3.getMagicEffect(tes3.effect.levitate)
		local soultrapEffect = tes3.getMagicEffect(tes3.effect.soultrap)
		local reflectEffect = tes3.getMagicEffect(tes3.effect.reflect)

		local effectID, spellID, spellName, effectCost, spellCost, iconPath, duration, radius, type, minMag, maxMag, effectDescription = unpack(td_miscs[1])
		tes3.addMagicEffect{
			id = effectID,
			name = spellName,
			description = effectDescription,
			school = tes3.magicSchool.alteration,
			baseCost = effectCost,
			speed = levitateEffect.speed,
			allowEnchanting = true,
			allowSpellmaking = true,
			appliesOnce = true,
			canCastSelf = false,
			canCastTarget = false,
			canCastTouch = true,
			casterLinked = levitateEffect.casterLinked,
			hasContinuousVFX = false,
			hasNoDuration = true,
			hasNoMagnitude = true,
			illegalDaedra = false,
			isHarmful = false,
			nonRecastable = true,
			targetsAttributes = false,
			targetsSkills = false,
			unreflectable = true,
			usesNegativeLighting = levitateEffect.usesNegativeLighting,
			icon = iconPath,
			particleTexture = levitateEffect.particleTexture,
			castSound = levitateEffect.castSoundEffect.id,
			castVFX = levitateEffect.castVisualEffect.id,
			boltSound = "T_SndObj_Silence",
			boltVFX = "T_VFX_Empty",
			hitSound = "T_SndObj_Silence",
			hitVFX = "T_VFX_Empty",							-- Currently has to use VFX because otherwise Morrowind crashes when casting the effect on some actors despite this parameter being "optional"
			areaSound = "T_SndObj_Silence",
			areaVFX = "T_VFX_Empty",							-- Problems can apparently still arise from missing boltVFX and areaVFX for some people
			lighting = {x = levitateEffect.lightingRed, y = levitateEffect.lightingGreen, z = levitateEffect.lightingBlue},
			size = levitateEffect.size,
			sizeCap = levitateEffect.sizeCap,
			onTick = function(eventData) eventData:trigger() end,
			onCollision = nil
		}

		effectID, spellID, spellName, effectCost, spellCost, iconPath, duration, radius, type, minMag, maxMag, effectDescription = unpack(td_miscs[2])
		tes3.addMagicEffect{
			id = effectID,
			name = spellName,
			description = effectDescription,
			school = tes3.magicSchool.mysticism,
			baseCost = effectCost,
			speed = soultrapEffect.speed,
			allowEnchanting = true,
			allowSpellmaking = true,
			appliesOnce = true,
			canCastSelf = false,
			canCastTarget = true,
			canCastTouch = true,
			casterLinked = soultrapEffect.casterLinked,
			hasContinuousVFX = soultrapEffect.hasContinuousVFX,
			hasNoDuration = true,
			hasNoMagnitude = false,
			illegalDaedra = soultrapEffect.illegalDaedra,
			isHarmful = false,
			nonRecastable = true,
			targetsAttributes = soultrapEffect.targetsAttributes,
			targetsSkills = soultrapEffect.targetsSkills,
			unreflectable = true,
			usesNegativeLighting = soultrapEffect.usesNegativeLighting,
			icon = iconPath,
			particleTexture = soultrapEffect.particleTexture,
			castSound = soultrapEffect.castSoundEffect.id,
			castVFX = soultrapEffect.castVisualEffect.id,
			boltSound = soultrapEffect.boltSoundEffect.id,
			boltVFX = soultrapEffect.boltVisualEffect.id,
			hitSound = "T_SndObj_Silence",
			hitVFX = "T_VFX_Empty",
			areaSound = soultrapEffect.areaSoundEffect.id,
			areaVFX = soultrapEffect.areaVisualEffect.id,
			lighting = {x = soultrapEffect.lightingRed, y = soultrapEffect.lightingGreen, z = soultrapEffect.lightingBlue},
			size = soultrapEffect.size,
			sizeCap = soultrapEffect.sizeCap,
			onTick = banishDaedraEffect,
			onCollision = nil
		}

		effectID, spellID, spellName, effectCost, spellCost, iconPath, duration, radius, type, minMag, maxMag, effectDescription = unpack(td_miscs[3])
		tes3.addMagicEffect{
			id = effectID,
			name = spellName,
			description = effectDescription,
			school = tes3.magicSchool.mysticism,
			baseCost = effectCost,
			speed = reflectEffect.speed,
			allowEnchanting = reflectEffect.allowEnchanting,
			allowSpellmaking = reflectEffect.allowSpellmaking,
			appliesOnce = reflectEffect.appliesOnce,
			canCastSelf = reflectEffect.canCastSelf,
			canCastTarget = reflectEffect.canCastTarget,
			canCastTouch = reflectEffect.canCastTouch,
			casterLinked = reflectEffect.casterLinked,
			hasContinuousVFX = reflectEffect.hasContinuousVFX,
			hasNoDuration = reflectEffect.hasNoDuration,
			hasNoMagnitude = reflectEffect.hasNoMagnitude,
			illegalDaedra = reflectEffect.illegalDaedra,
			isHarmful = reflectEffect.isHarmful,
			nonRecastable = reflectEffect.nonRecastable,
			targetsAttributes = reflectEffect.targetsAttributes,
			targetsSkills = reflectEffect.targetsSkills,
			unreflectable = reflectEffect.unreflectable,
			usesNegativeLighting = reflectEffect.usesNegativeLighting,
			icon = iconPath,
			particleTexture = reflectEffect.particleTexture,
			castSound = reflectEffect.castSoundEffect.id,
			castVFX = reflectEffect.castVisualEffect.id,
			boltSound = reflectEffect.boltSoundEffect.id,
			boltVFX = reflectEffect.boltVisualEffect.id,
			hitSound = reflectEffect.hitSoundEffect.id,
			hitVFX = reflectEffect.hitVisualEffect.id,
			areaSound = reflectEffect.areaSoundEffect.id,
			areaVFX = reflectEffect.areaVisualEffect.id,
			lighting = {x = reflectEffect.lightingRed, y = reflectEffect.lightingGreen, z = reflectEffect.lightingBlue},
			size = reflectEffect.size,
			sizeCap = reflectEffect.sizeCap,
			onTick = nil,
			onCollision = nil
		}
	end
end)

-- Replaces spell names, effects, etc. based tables above; registered to load rather than loaded because otherwise there is a risk of the names not being replaced
event.register(tes3.event.load, function()
	if config.summoningSpells == true then
		for k,v in pairs(td_summons) do
			local effectID, spellID, spellName, creatureID, effectCost, spellCost, iconPath, duration, effectDescription = unpack(v)

			local overridden_spell = tes3.getObject(spellID)
			if overridden_spell then
				overridden_spell.name = spellName
				overridden_spell.magickaCost = spellCost

				local effect = overridden_spell.effects[1]
				effect.id = effectID
				effect.duration = duration
			end
		end
	end

	if config.boundSpells == true then
		for k,v in pairs(td_bounds) do
			local effectID, spellID, spellName, itemID, itemID_02, effectCost, spellCost, iconPath, duration, effectDescription = unpack(v)

			local overridden_spell = tes3.getObject(spellID)
			if overridden_spell then
				overridden_spell.name = spellName
				overridden_spell.magickaCost = spellCost

				local effect = overridden_spell.effects[1]
				effect.id = effectID
				effect.duration = duration
			end
		end
	end
	
	if config.interventionSpells == true then
		for k,v in pairs(td_interventions) do
			local effectID, spellID, spellName, effectCost, spellCost, iconPath, effectDescription = unpack(v)

			local overridden_spell = tes3.getObject(spellID)
			if overridden_spell then
				overridden_spell.name = spellName
				overridden_spell.magickaCost = spellCost

				local effect = overridden_spell.effects[1]
				effect.id = effectID
			end
		end
	end

	if config.miscSpells == true then
		for k,v in pairs(td_miscs) do
			local effectID, spellID, spellName, effectCost, spellCost, iconPath, duration, radius, type, minMag, maxMag, effectDescription = unpack(v)

			local overridden_spell = tes3.getObject(spellID)
			if overridden_spell then
				overridden_spell.name = spellName
				overridden_spell.magickaCost = spellCost
				
				local effect = overridden_spell.effects[1]
				effect.id = effectID
				effect.duration = duration
				effect.rangeType = type
				effect.radius = radius
				effect.min = minMag
				effect.max = maxMag
			end
		end
	end
end)

return this