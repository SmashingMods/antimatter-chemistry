val sootRedstone = <deepmoblearning:soot_covered_redstone>;
val obsidian = <minecraft:obsidian>;
recipes.remove(<deepmoblearning:soot_covered_plate>);
recipes.addShaped(<deepmoblearning:soot_covered_plate>,
[[sootRedstone,sootRedstone,sootRedstone],
 [obsidian,obsidian,obsidian],
 [sootRedstone,sootRedstone,sootRedstone]]);

//mods.recipestages.Recipes.setRecipeStageByMod("mummy", "deepmoblearning");
mods.recipestages.Recipes.setRecipeStage("mummy",<deepmoblearning:deep_learner>);
mods.recipestages.Recipes.setRecipeStage("mummy",<deepmoblearning:simulation_chamber>);
mods.recipestages.Recipes.setRecipeStage("mummy",<deepmoblearning:extraction_chamber>);

val stone = <minecraft:stone>;
recipes.addShapeless(<minecraft:clay>,[<deepmoblearning:living_matter_overworldian>,<minecraft:dirt>]);
recipes.addShapeless(<minecraft:clay>,[<deepmoblearning:living_matter_overworldian>,<atum:fertile_soil_pile>]);
recipes.addShaped(<minecraft:dirt>*8,
 [[stone,stone,stone],
  [stone,<deepmoblearning:living_matter_overworldian>,stone] ,
  [stone,stone,stone]]);