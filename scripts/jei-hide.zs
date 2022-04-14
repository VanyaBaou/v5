import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;



function removeAllTagsAndHide(item as IItemStack) as void {
	for tag in <tagManager:items>.getAllTagsFor(item) {
		tag.remove(item);
	}
	mods.jei.JEI.hideItem(item);
}

function removeAndHide(item as IItemStack) as void {
	craftingTable.removeRecipe(item);
	removeAllTagsAndHide(item);
}


removeAndHide(<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "ensorcellation:instigating" as string}]}));
removeAndHide(<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "ensorcellation:instigating" as string}]}));

removeAndHide(<item:quark:magnet>);
removeAndHide(<item:quark:backpack>);
removeAndHide(<item:quark:ravager_hide>);
removeAndHide(<item:quark:bonded_ravager_hide>);
removeAndHide(<item:quark:pipe>);
removeAndHide(<item:quark:crate>);
removeAndHide(<item:quark:soul_compass>);



removeAndHide(<item:losttrinkets:rock_candy>);
removeAndHide(<item:losttrinkets:book_o_enchanting>);
removeAndHide(<item:losttrinkets:ash_gloves>);
removeAndHide(<item:losttrinkets:octopus_leg>);
removeAndHide(<item:losttrinkets:magical_feathers>);



removeAndHide(<item:pickletweaks:magnet>);



removeAndHide(<item:spartanshields:shield_botania_manasteel>);
removeAndHide(<item:spartanshields:shield_botania_terrasteel>);
removeAndHide(<item:spartanshields:shield_botania_elementium>);



removeAndHide(<item:mysticalworld:copper_spear>);
removeAndHide(<item:mysticalworld:lead_spear>);
removeAndHide(<item:mysticalworld:tin_spear>);
removeAndHide(<item:mysticalworld:stone_spear>);
removeAndHide(<item:mysticalworld:wood_spear>);
removeAndHide(<item:mysticalworld:diamond_spear>);
removeAndHide(<item:mysticalworld:gold_spear>);
removeAndHide(<item:mysticalworld:iron_spear>);

removeAndHide(<item:mysticalworld:cactus_knife>);
removeAndHide(<item:mysticalworld:copper_knife>);
removeAndHide(<item:mysticalworld:lead_knife>);
removeAndHide(<item:mysticalworld:tin_knife>);
removeAndHide(<item:mysticalworld:stone_knife>);
removeAndHide(<item:mysticalworld:wood_knife>);
removeAndHide(<item:mysticalworld:diamond_knife>);
removeAndHide(<item:mysticalworld:gold_knife>);
removeAndHide(<item:mysticalworld:iron_knife>);



removeAndHide(<item:druidcraft:knife>);



removeAndHide(<item:greekfantasy:wooden_spear>);
removeAndHide(<item:greekfantasy:stone_spear>);
removeAndHide(<item:greekfantasy:iron_spear>);



removeAndHide(<item:iceandfire:copper_sword>);
removeAndHide(<item:iceandfire:copper_shovel>);
removeAndHide(<item:iceandfire:copper_pickaxe>);
removeAndHide(<item:iceandfire:copper_axe>);
removeAndHide(<item:iceandfire:copper_hoe>);
removeAndHide(<item:iceandfire:silver_ore>);
removeAndHide(<item:iceandfire:sapphire_ore>);
removeAndHide(<item:iceandfire:copper_ore>);
removeAndHide(<item:iceandfire:armor_copper_metal_helmet>);
removeAndHide(<item:iceandfire:armor_copper_metal_chestplate>);
removeAndHide(<item:iceandfire:armor_copper_metal_leggings>);
removeAndHide(<item:iceandfire:armor_copper_metal_boots>);



removeAndHide(<item:thermal:copper_ore>);
removeAndHide(<item:thermal:tin_ore>);
removeAndHide(<item:thermal:lead_ore>);
removeAndHide(<item:thermal:silver_ore>);



removeAndHide(<item:eidolon:lead_ore>);



removeAndHide(<item:byg:ametrine_ore>);
removeAndHide(<item:byg:budding_ametrine_ore>);
removeAndHide(<item:byg:emeraldite_ore>);
removeAndHide(<item:byg:pendorite_ore>);



removeAndHide(<item:vanillafoodpantry:rock_salt_ore>);
removeAndHide(<item:vanillafoodpantry:rock_salt_ore_nether>);
removeAndHide(<item:vanillafoodpantry:natron_ore>);
removeAndHide(<item:vanillafoodpantry:trona_ore>);



removeAndHide(<item:tropicraft:azurite_ore>);
removeAndHide(<item:tropicraft:eudialyte_ore>);
removeAndHide(<item:tropicraft:manganese_ore>);
removeAndHide(<item:tropicraft:shaka_ore>);
removeAndHide(<item:tropicraft:zircon_ore>);



removeAndHide(<item:cavesandcliffs:copper_ore>);
removeAndHide(<item:cavesandcliffs:deepslate_copper_ore>);



for allItems in game.items {
    if (allItems.owner == "spartanweaponry" || allItems.owner == "spartanshields") {
		if ("_steel" in (allItems.registryName as string) || "_platinum" in (allItems.registryName as string)){
			removeAndHide(allItems);
		}
    }
	if (allItems.owner == "mysticalworld") {
		if (!("spawn_egg" in (allItems.registryName as string)) && !(":silver_ore" in (allItems.registryName as string)) && ("silver" in (allItems.registryName as string) || "quicksilver" in (allItems.registryName as string))) {
			removeAndHide(allItems);
		}
	}
	if (allItems.owner == "byg") {
		if ("ametrine" in (allItems.registryName as string) || "pendorite" in (allItems.registryName as string)) {
			removeAndHide(allItems);
		}
	}
}
