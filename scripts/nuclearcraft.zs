import scripts._func.disable;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;

/*
for i in 2 to 119 {
	val input = <alchemistry:element>.definition.makeStack(i);
	if i % 2 == 0 {
		val output = <alchemistry:element>.definition.makeStack(i/2);
		mods.nuclearcraft.isotope_separator.addRecipe([input,output*2,null]);
	}
	else {
		val temp1 = i + 1;
		val temp2 = i - 1;
		val output1 = <alchemistry:element>.definition.makeStack(temp1 / 2);
		val output2 = <alchemistry:element>.definition.makeStack(temp2 / 2);
		mods.nuclearcraft.isotope_separator.addRecipe([input, output1, output2]);
	}
}*/

val basicPlating = <nuclearcraft:part>;
val solenoid = <nuclearcraft:part:4>;
val chassis = <nuclearcraft:part:10>;
val tough = <nuclearcraft:alloy:1>;

recipes.remove(<nuclearcraft:alloy_furnace_idle>);
recipes.addShaped(<nuclearcraft:alloy_furnace_idle>,
[[basicPlating,<ore:ingotSteel>,basicPlating],
 [<ore:ingotSteel>,chassis,<ore:ingotSteel>],
 [basicPlating,solenoid,basicPlating]]);

recipes.remove(chassis);
recipes.addShaped(chassis,
[[<ore:ingotSteel>,<minecraft:ender_pearl>,<ore:ingotSteel>],
 [<minecraft:ender_pearl>,tough,<minecraft:ender_pearl>],
 [<ore:ingotSteel>,<minecraft:ender_pearl>,<ore:ingotSteel>]]);

recipes.remove(<nuclearcraft:manufactory_idle>);
recipes.addShaped(<nuclearcraft:manufactory_idle>,
[[<ore:ingotSteel>,<minecraft:redstone>,<ore:ingotLead>],
 [<minecraft:flint>,<minecraft:piston>,<minecraft:flint>],
 [<ore:ingotLead>,solenoid,<ore:ingotSteel>]]);

disable(<nuclearcraft:rtg_plutonium>);
disable(<nuclearcraft:rtg_californium>);
disable(<nuclearcraft:rtg_americium>);
disable(<nuclearcraft:rtg_uranium>);
disable(<nuclearcraft:solar_panel_basic>);
disable(<nuclearcraft:solar_panel_advanced>);
disable(<nuclearcraft:solar_panel_elite>);
disable(<nuclearcraft:solar_panel_du>);

for i in 0 to 16 {
	mods.nuclearcraft.infuser.removeRecipeWithOutput(<minecraft:concrete>.definition.makeStack(i));
}

mods.nuclearcraft.manufactory.removeRecipeWithOutput([<draconicevolution:draconium_dust>*2]);