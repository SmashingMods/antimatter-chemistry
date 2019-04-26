import crafttweaker.item.IItemStack;


val sootRedstone = <deepmoblearning:soot_covered_redstone>;
val obsidian = <minecraft:obsidian>;
recipes.remove(<deepmoblearning:soot_covered_plate>);
recipes.addShaped(<deepmoblearning:soot_covered_plate>,
[[sootRedstone,sootRedstone,sootRedstone],
 [obsidian,obsidian,obsidian],
 [sootRedstone,sootRedstone,sootRedstone]]);

mods.recipestages.Recipes.setRecipeStage("mummy",<deepmoblearning:deep_learner>);
<deepmoblearning:deep_learner>.addTooltip("Must be crafted in a crafting table or crafting station");
mods.recipestages.Recipes.setRecipeStage("mummy",<deepmoblearning:simulation_chamber>);
<deepmoblearning:simulation_chamber>.addTooltip("Must be crafted in a crafting table or crafting station");
mods.recipestages.Recipes.setRecipeStage("mummy",<deepmoblearning:extraction_chamber>);
<deepmoblearning:extraction_chamber>.addTooltip("Must be crafted in a crafting table or crafting station");

<deepmoblearning:deep_learner>.addTooltip("Unlocked in chapter 4");
<deepmoblearning:simulation_chamber>.addTooltip("Unlocked in chapter 4");
<deepmoblearning:extraction_chamber>.addTooltip("Unlocked in chapter 4");


val stone = <minecraft:stone>;
recipes.addShapeless(<minecraft:clay>,[<deepmoblearning:living_matter_overworldian>,<minecraft:dirt>]);
recipes.addShapeless(<minecraft:clay>,[<deepmoblearning:living_matter_overworldian>,<atum:fertile_soil_pile>]);
recipes.addShaped(<minecraft:dirt>*8,
 [[stone,stone,stone],
  [stone,<deepmoblearning:living_matter_overworldian>,stone] ,
  [stone,stone,stone]]);

val pristine_matters = [<deepmoblearning:pristine_matter_zombie>,
<deepmoblearning:pristine_matter_skeleton>,
<deepmoblearning:pristine_matter_creeper>,
<deepmoblearning:pristine_matter_spider>,
<deepmoblearning:pristine_matter_slime>,
<deepmoblearning:pristine_matter_witch>,
<deepmoblearning:pristine_matter_blaze>,
<deepmoblearning:pristine_matter_ghast>,
<deepmoblearning:pristine_matter_wither_skeleton>,
<deepmoblearning:pristine_matter_enderman>,
<deepmoblearning:pristine_matter_wither>,
<deepmoblearning:pristine_matter_dragon>,
<deepmoblearning:pristine_matter_shulker>,
<deepmoblearning:pristine_matter_guardian>,
<deepmoblearning:pristine_matter_thermal_elemental>,
<deepmoblearning:pristine_matter_tinker_slime>] as IItemStack[];

for item in pristine_matters {
	<ore:matterPristine>.add(item);
}

recipes.addShapeless(<ftbquests:lootcrate>.withTag({type: "gimmie_da_loot"}),
[<deepmoblearning:living_matter_overworldian>,<ore:matterPristine>]);