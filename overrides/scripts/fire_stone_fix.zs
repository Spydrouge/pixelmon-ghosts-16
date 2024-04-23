import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCPlayerInteractEvent;
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;

import crafttweaker.api.util.MCHand;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.blocks.MCBlock;
import crafttweaker.api.item.IIngredient;


CTEventManager.register<MCRightClickBlockEvent>((event) =>{
	var heldItem as IItemStack = event.getItemStack(); //event.player.getHeldItem(MCHand.MAIN_HAND);
	var position = event.getBlockPos();
	var world = event.player.world;	
	var block as MCBlock= world.getBlockState(position).block;
	
	var condition1 = <item:pixelmon:fire_stone_shovel>.anyDamage();
	var condition2 = heldItem.anyDamage();
	
	if (!(<block:minecraft:snow_block>.matchesBlock(block))
	  && !(<block:minecraft:ice>.matchesBlock(block))
	  && !(<block:minecraft:water>.matchesBlock(block)))
	{
		println("Block doesn't match");
		return;
	}
	
	if (!(<item:pixelmon:fire_stone_shovel>.anyDamage().matches(heldItem))
		&& !(<item:pixelmon:fire_stone_pickaxe>.anyDamage().matches(heldItem))
		&& !(<item:pixelmon:fire_stone_hammer>.anyDamage().matches(heldItem))
		&& !(<item:pixelmon:fire_stone_hoe>.anyDamage().matches(heldItem))
		&& !(<item:pixelmon:fire_stone_axe>.anyDamage().matches(heldItem))
		&& !(<item:pixelmon:fire_stone_sword>.anyDamage().matches(heldItem)))
	{
		println("Item doesn't match");
		return;
	}
	
	//this is the way you damage the durability
	heldItem.mutable().withDamage(heldItem.damage + 1);
	
	
	world.setBlockState(position, <blockstate:minecraft:obsidian>);
});

