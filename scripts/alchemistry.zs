import crafttweaker.item.IItemStack;

<alchemistry:element:6>.addTooltip("Can be used as furnace fuel");
<alchemistry:element:1>.addTooltip("Can be used as furnace fuel");

val gold = mods.alchemistry.Util.get("gold");
val sucrose = mods.alchemistry.Util.get("sucrose");
val siliconDioxide = mods.alchemistry.Util.get("silicon dioxide");
val iron = mods.alchemistry.Util.get("iron");
val carbon = mods.alchemistry.Util.get("carbon");
val copper = mods.alchemistry.Util.get("copper");
val ironOxide = mods.alchemistry.Util.get("iron oxide");
val strontium = mods.alchemistry.Util.get("strontium");
val tungsten = mods.alchemistry.Util.get("tungsten");
val magnesium = mods.alchemistry.Util.get("magnesium");
val phosphorus = mods.alchemistry.Util.get("phosphorus");
val aluminum = mods.alchemistry.Util.get("aluminum");
val protein = mods.alchemistry.Util.get("protein");
val cellulose = mods.alchemistry.Util.get("cellulose");
val palladium = mods.alchemistry.Util.get("palladium");
val astatine = mods.alchemistry.Util.get("astatine");
val thallium = mods.alchemistry.Util.get("thallium");
val lithium = mods.alchemistry.Util.get("lithium");
val gallium = mods.alchemistry.Util.get("gallium");
val manganese = mods.alchemistry.Util.get("manganese");
val niobium = mods.alchemistry.Util.get("niobium");
val germanium = mods.alchemistry.Util.get("germanium");
val sulfur = mods.alchemistry.Util.get("sulfur");
val scandium = mods.alchemistry.Util.get("scandium");
val neon = mods.alchemistry.Util.get("neon");
val bromine = mods.alchemistry.Util.get("bromine");
val indium = mods.alchemistry.Util.get("indium");
val iodine = mods.alchemistry.Util.get("iodine");
val vanadium = mods.alchemistry.Util.get("vanadium");
val barium = mods.alchemistry.Util.get("barium");
val argon = mods.alchemistry.Util.get("argon");
val samarium = mods.alchemistry.Util.get("samarium");
val neodymium = mods.alchemistry.Util.get("neodymium");
val rubidium = mods.alchemistry.Util.get("rubidium");
val tellurium = mods.alchemistry.Util.get("tellurium");
val selenium = mods.alchemistry.Util.get("selenium");
val zinc = mods.alchemistry.Util.get("zinc");
val chromium = mods.alchemistry.Util.get("chromium");
val beryllium = mods.alchemistry.Util.get("beryllium");
val mercury = mods.alchemistry.Util.get("mercury");
val calciumCarbonate = mods.alchemistry.Util.get("calcium carbonate");
val water = mods.alchemistry.Util.get("water");
val mendelevium = mods.alchemistry.Util.get("mendelevium");
val americium = mods.alchemistry.Util.get("americium");
val thorium = mods.alchemistry.Util.get("thorium");
val plutonium = mods.alchemistry.Util.get("plutonium");
val uranium = mods.alchemistry.Util.get("uranium");
val neptunium = mods.alchemistry.Util.get("neptunium");
val curium = mods.alchemistry.Util.get("curium");
val berkelium = mods.alchemistry.Util.get("berkelium");
val boron = mods.alchemistry.Util.get("boron");
val lutetium = mods.alchemistry.Util.get("lutetium");
val hydrogen = mods.alchemistry.Util.get("hydrogen");
val dysprosium = mods.alchemistry.Util.get("dysprosium");
val rhodium = mods.alchemistry.Util.get("rhodium");
val titanium = mods.alchemistry.Util.get("titanium");
val kaolinite = mods.alchemistry.Util.get("kaolinite");
val silver = mods.alchemistry.Util.get("silver");
val potassiumPermanganate = mods.alchemistry.Util.get("potassium permanganate");
val platinum = mods.alchemistry.Util.get("platinum");
val strontiumCarbonate = mods.alchemistry.Util.get("strontium carbonate");
val beryl = mods.alchemistry.Util.get("beryl");
val molybdenum = mods.alchemistry.Util.get("molybdenum");

val white = <minecraft:concrete>;
val orange = <minecraft:concrete:1>;
val magenta = <minecraft:concrete:2>;
val lightBlue = <minecraft:concrete:3>;
val yellow = <minecraft:concrete:4>;
val lime = <minecraft:concrete:5>;
val pink = <minecraft:concrete:6>;
val gray = <minecraft:concrete:7>;
val lightGray = <minecraft:concrete:8>;
val cyan = <minecraft:concrete:9>;
val purple = <minecraft:concrete:10>;
val blue = <minecraft:concrete:11>;
val brown = <minecraft:concrete:12>;
val green = <minecraft:concrete:13>;
val red = <minecraft:concrete:14>;
val black = <minecraft:concrete:15>;


mods.alchemistry.Dissolver.addRecipe(<minecraft:reeds>, true, 1,
[[1, sucrose]]);

mods.alchemistry.Dissolver.addRecipe(<extrautils2:compressedcobblestone>, true, 9,
[[350.0, null], 
[2.0, <alchemistry:element:13>], 
[4.0, <alchemistry:element:26>], 
[2.0, <alchemistry:element:79>], 
[10.0, <alchemistry:compound:1>]]);

mods.alchemistry.Dissolver.addRecipe(<extrautils2:compressedcobblestone:1>, true, 81,
[[350.0, null], 
[3.0, <alchemistry:element:13>], 
[6.0, <alchemistry:element:26>], 
[3.0, <alchemistry:element:79>], 
[13.0, <alchemistry:compound:1>]]);

mods.alchemistry.Dissolver.addRecipe(<extrautils2:compressedcobblestone:2>, true, 729,
[[350.0, null], 
[5.0, <alchemistry:element:13>], 
[8.0, <alchemistry:element:26>], 
[5.0, <alchemistry:element:79>], 
[16.0, <alchemistry:compound:1>]]);

mods.alchemistry.Dissolver.addRecipe(<extrautils2:compressedcobblestone:3>, true, 6561,
[[350.0, null], 
[5.0, <alchemistry:element:13>], 
[8.0, <alchemistry:element:26>], 
[5.0, <alchemistry:element:79>], 
[16.0, <alchemistry:compound:1>]]);

for i in 0 to 16 {
	mods.alchemistry.Dissolver.removeRecipe(<minecraft:concrete>.definition.makeStack(i));
}


mods.alchemistry.Dissolver.addRecipe(white, true, 1,
[[10, null],
 [10, siliconDioxide],
 [1, tungsten]]);

mods.alchemistry.Dissolver.addRecipe(lightGray, true, 1,
[[5, null],
 [15, iron],
 [40, siliconDioxide],
 [5, carbon],
 [1, tungsten]]);

mods.alchemistry.Dissolver.addRecipe(orange, true, 1,
[[5, null],
 [15, copper],
 [10, siliconDioxide],
 [3, tungsten]]);

mods.alchemistry.Dissolver.addRecipe(red, true, 1,
[[5, null],
 [15, ironOxide],
 [10, strontium],
 [5, siliconDioxide]]);

mods.alchemistry.Dissolver.addRecipe(gray, true, 1,
[[5, null],
 [25, iron],
 [8, tungsten],
 [6, carbon]]);

mods.alchemistry.Dissolver.addRecipe(pink,true,1,
[[5, null],
 [30, magnesium],
 [20, phosphorus],
 [5, carbon]]);

mods.alchemistry.Dissolver.addRecipe(black,true,1,
[[5, null],
 [30, aluminum],
 [20, carbon],
 [5, tungsten]]);

mods.alchemistry.Dissolver.addRecipe(magenta,true,1,
[[5, null],
 [10, gallium],
 [2, manganese],
 [1, tungsten]]);

mods.alchemistry.Dissolver.addRecipe(lightBlue,true,1,
[[10, null],
 [10, niobium],
 [1, germanium],
 [1, tungsten]]);

mods.alchemistry.Dissolver.addRecipe(yellow,true,1,
[[6, null],
 [4, sulfur],
 [3, scandium],
 [3, chromium]]);

mods.alchemistry.Dissolver.addRecipe(lime,true,1,
[[8, null],
 [5, neon],
 [3, bromine],
 [1, tungsten]]);

mods.alchemistry.Dissolver.addRecipe(cyan,true,1,
[[6, null],
 [9, barium],
 [3, indium],
 [1, tungsten],
 [2, mercury]]);

mods.alchemistry.Dissolver.addRecipe(purple,true,1,
[[5, null],
 [8, iodine],
 [3, vanadium],
 [1, tungsten]]);

mods.alchemistry.Dissolver.addRecipe(blue,true,1,
[[5, null],
 [8, argon],
 [3, neptunium],
 [1, tungsten]]);

mods.alchemistry.Dissolver.addRecipe(brown,true,1,
[[5, null],
 [8, neodymium],
 [3, samarium],
 [1, tungsten]]);

mods.alchemistry.Dissolver.addRecipe(green,true,1,
[[5, null],
 [8, rubidium],
 [3, tellurium],
 [1, tungsten]]);


val asinine = <alchemistry:compound:1000>;
val cobaltIngot = <alchemistry:ingot:27>;
val palladiumIngot = <alchemistry:ingot:46>;
val sootPlate = <deepmoblearning:soot_covered_plate>;
recipes.remove(<deepmoblearning:data_model_blank>);
mods.alchemistry.Combiner.addRecipe(<deepmoblearning:data_model_blank>,
[cobaltIngot,palladiumIngot,cobaltIngot,
 sootPlate,asinine*16,sootPlate,
 cobaltIngot,palladiumIngot,cobaltIngot]);




val limestones = [<atum:limestone>,<atum:limestone_gravel>,<atum:limestone_cracked>,<atum:limestone_brick_small>,<atum:limestone_brick_large>,
<atum:limestone_brick_cracked_brick>,<atum:limestone_brick_chiseled>,<atum:limestone_brick_carved>] as IItemStack[];

for x in limestones {
mods.alchemistry.Dissolver.addRecipe(x,true,1,
[[10,siliconDioxide],
 [10,calciumCarbonate],
 [6, molybdenum],
 [1, neodymium]]);
 }


mods.alchemistry.Dissolver.addRecipe(<atum:palm_crate>,true,1, [[100,cellulose,palladium]]);


mods.alchemistry.Dissolver.addRecipe(<atum:crystal_glass>,false,1,
[[100,siliconDioxide*4],
 [25, astatine]]);

mods.alchemistry.Combiner.removeRecipe(<minecraft:soul_sand>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:soul_sand>);
mods.alchemistry.Combiner.addRecipe(<minecraft:soul_sand>,
[siliconDioxide*4,thallium]);
mods.alchemistry.Dissolver.addRecipe(<minecraft:soul_sand>,false,1,
[[100,siliconDioxide*4],
 [50, thallium]]);

mods.alchemistry.Combiner.addRecipe(<dimensionaledibles:end_cake>,
[lithium*64,<deepmoblearning:pristine_matter_blaze>*4, lithium*64,
 <deepmoblearning:pristine_matter_skeleton>*8, <minecraft:cake>,<deepmoblearning:pristine_matter_creeper>*8,
 lithium*64, <deepmoblearning:pristine_matter_zombie>*8, lithium*64]);



recipes.remove(<tp:iron_cobblegen_block>);
mods.alchemistry.Combiner.addRecipe(<tp:iron_cobblegen_block>,
[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>,
 <minecraft:iron_ingot>,<tp:cobblegen_block>,<minecraft:iron_ingot>,
 <minecraft:iron_ingot>,selenium*64,<minecraft:iron_ingot>]);

recipes.remove(<tp:diamond_cobblegen_block>);
mods.alchemistry.Combiner.addRecipe(<tp:diamond_cobblegen_block>,
[<minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>,
 <minecraft:diamond>,<tp:iron_cobblegen_block>,<minecraft:diamond>,
 <minecraft:diamond>, zinc*64,<minecraft:diamond>]);

recipes.remove(<tp:blaze_cobblegen_block>);
mods.alchemistry.Combiner.addRecipe(<tp:blaze_cobblegen_block>,
[<minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:blaze_rod>,
 <minecraft:blaze_rod>,<tp:diamond_cobblegen_block>,<minecraft:blaze_rod>,
 <minecraft:blaze_rod>,thallium*64,<minecraft:blaze_rod>]);

mods.alchemistry.Dissolver.removeRecipe(<minecraft:stone:2>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:stone:2>, true, 1, 
[[5.0, <alchemistry:compound:3>], 
[2.0, <alchemistry:element:26>], 
[10.0, <alchemistry:compound:1>],
[6.0, beryllium]]);

mods.alchemistry.Dissolver.addRecipe(<atum:date>,false,1,
[[100, sucrose, lithium]]);

recipes.remove(<alchemistry:chemical_dissolver>);
recipes.addShaped(<alchemistry:chemical_dissolver>,
[[<ore:ingotIron>,<minecraft:piston>,<ore:ingotIron>],
 [<minecraft:magma>,<ore:ingotSteel>,<minecraft:magma>],
 [<ore:ingotIron>,<minecraft:piston>,<ore:ingotIron>]]);

recipes.remove(<alchemistry:chemical_combiner>);
recipes.addShaped(<alchemistry:chemical_combiner>,
[[<ore:ingotIron>,<minecraft:diamond>,<ore:ingotIron>],
 [<minecraft:obsidian>,<ore:ingotSteel>,<minecraft:obsidian>],
 [<ore:ingotIron>,<minecraft:piston>,<ore:ingotIron>]]);

mods.alchemistry.Dissolver.addRecipe(<atum:camel_diamond_armor>, true, 1, 
[[100.0, carbon * 1024]]);

mods.alchemistry.Dissolver.addRecipe(<atum:desert_wolf_diamond_armor>, true, 1, 
[[100.0, carbon * 1024]]);

mods.alchemistry.Dissolver.addRecipe(<atum:camel_gold_armor>, true, 1, 
[[100.0, gold * 64]]);

mods.alchemistry.Dissolver.addRecipe(<atum:desert_wolf_gold_armor>, true, 1, 
[[100.0, gold * 64]]);

mods.alchemistry.Dissolver.addRecipe(<atum:camel_iron_armor>, true, 1, 
[[100.0, iron * 64]]);

mods.alchemistry.Dissolver.addRecipe(<atum:desert_wolf_iron_armor>, true, 1, 
[[100.0, iron * 64]]);

val witherDust = <darkutils:material>;
mods.alchemistry.Dissolver.addRecipe(witherDust, true, 1, 
[[100.0, mendelevium * 8]]);

val evilDrop = <extrautils2:ingredients:10>;
 mods.alchemistry.Combiner.addRecipe(evilDrop,
 [carbon*64,sulfur*64,carbon*64,
  sulfur*64,<minecraft:gunpowder>*8,sulfur*64,
  carbon*64,sulfur*64,carbon*64]);

mods.alchemistry.Dissolver.addRecipe(<atum:papyrus_plant>, true, 1, 
[[100.0, cellulose * 5]]);

mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:americium>, true, 1,
[[100.0, americium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:americium:4>, true, 1,
[[100.0, americium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:americium:8>, true, 1,
[[100.0, americium * 14]]);

mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:thorium>, true, 1,
[[100.0, thorium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:thorium:4>, true, 1,
[[100.0, thorium * 14]]);

mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:plutonium>, true, 1,
[[100.0, plutonium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:plutonium:4>, true, 1,
[[100.0, plutonium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:plutonium:8>, true, 1,
[[100.0, plutonium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:plutonium:12>, true, 1,
[[100.0, plutonium * 14]]);

mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:uranium>, true, 1,
[[100.0, uranium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:uranium:4>, true, 1,
[[100.0, uranium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:uranium:8>, true, 1,
[[100.0, uranium * 14]]);

mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:curium>, true, 1,
[[100.0, curium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:curium:4>, true, 1,
[[100.0, curium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:curium:8>, true, 1,
[[100.0, curium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:curium:12>, true, 1,
[[100.0, curium * 14]]);

mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:berkelium>, true, 1,
[[100.0, berkelium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:berkelium:4>, true, 1,
[[100.0, berkelium * 14]]);

mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:neptunium>, true, 1,
[[100.0, neptunium * 14]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:neptunium:4>, true, 1,
[[100.0, neptunium * 14]]);

mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:boron>, true, 1,
[[100.0, boron * 10]]);
mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:boron:2>, true, 1,
[[100.0, boron * 10]]);

mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:lithium>, true, 1,
[[100.0, lithium * 10]]);

mods.alchemistry.Dissolver.addRecipe(<nuclearcraft:lithium:2>, true, 1,
[[100.0, lithium * 10]]);

mods.alchemistry.Combiner.removeRecipe(<minecraft:nether_star>);
mods.alchemistry.Combiner.addRecipe(<minecraft:nether_star>,
[lutetium*64,hydrogen*64,titanium*64,
 hydrogen*64,rhodium*64,hydrogen*64,
 dysprosium*64,hydrogen*64,mendelevium*64]);

recipes.remove(<alchemistry:fission_controller>);
recipes.addShaped(<alchemistry:fission_controller>,
[[<ore:ingotSteel>,<alchemistry:fission_casing>,<ore:ingotSteel>],
 [<minecraft:glass>,<nuclearcraft:isotope_separator_idle>,<ore:ingotSteel>],
 [<ore:ingotSteel>,<alchemistry:fission_casing>,<ore:ingotSteel>]]);

mods.alchemistry.Dissolver.addRecipe(<atum:marl>,false,1,
[[100.0, kaolinite * 3]]);


//Silver Artifacts
mods.alchemistry.Dissolver.addRecipe(<atum:loot_silver_broach>,false,2,
[[80.0, silver * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_silver_ring>,false,2,
[[80.0, silver * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_silver_necklace>,false,3,
[[80.0, silver * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_silver_scepter>,false,4,
[[80.0, silver * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_silver_idol>,false,5,
[[80.0, silver * 8]]);

//Gold Artifacts
mods.alchemistry.Dissolver.addRecipe(<atum:loot_gold_broach>,false,2,
[[80.0, gold * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_gold_ring>,false,2,
[[80.0, gold * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_gold_necklace>,false,3,
[[80.0, gold * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_gold_scepter>,false,4,
[[80.0, gold * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_gold_idol>,false,5,
[[80.0, gold * 8]]);

//Sapphire Artifacts
mods.alchemistry.Dissolver.addRecipe(<atum:loot_sapphire_broach>,false,2,
[[80.0, potassiumPermanganate * 8],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_sapphire_ring>,false,2,
[[80.0, potassiumPermanganate * 8],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_sapphire_necklace>,false,3,
[[80.0, potassiumPermanganate * 8],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_sapphire_scepter>,false,4,
[[80.0, potassiumPermanganate * 8],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_sapphire_idol>,false,5,
[[80.0, potassiumPermanganate * 8],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

//Ruby artifacts
mods.alchemistry.Dissolver.addRecipe(<atum:loot_ruby_broach>,false,2,
[[80.0, ironOxide * 5],
 [80.0, strontiumCarbonate * 5],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_ruby_ring>,false,2,
[[80.0, ironOxide * 5],
 [80.0, strontiumCarbonate * 5],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_ruby_necklace>,false,3,
[[80.0, ironOxide * 5],
 [80.0, strontiumCarbonate * 5],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_ruby_scepter>,false,4,
[[80.0, ironOxide * 5],
 [80.0, strontiumCarbonate * 5],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_ruby_idol>,false,5,
[[80.0, ironOxide * 5],
 [80.0, strontiumCarbonate * 5],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

 //Emerald artifacts
mods.alchemistry.Dissolver.addRecipe(<atum:loot_emerald_broach>,false,2,
[[100.0, beryl * 4],
 [100.0, chromium * 4],
 [100.0, vanadium * 2],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_emerald_ring>,false,2,
[[100.0, beryl * 4],
 [100.0, chromium * 4],
 [100.0, vanadium * 2],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_emerald_necklace>,false,3,
[[100.0, beryl * 4],
 [100.0, chromium * 4],
 [100.0, vanadium * 2],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_emerald_scepter>,false,4,
[[100.0, beryl * 4],
 [100.0, chromium * 4],
 [100.0, vanadium * 2],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_emerald_idol>,false,5,
[[100.0, beryl * 4],
 [100.0, chromium * 4],
 [100.0, vanadium * 2],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);


 //Diamond artifacts
mods.alchemistry.Dissolver.addRecipe(<atum:loot_diamond_broach>,false,2,
[[40.0, carbon * 16],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

mods.alchemistry.Dissolver.addRecipe(<atum:loot_diamond_ring>,false,2,
[[40.0, carbon * 16],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);


mods.alchemistry.Dissolver.addRecipe(<atum:loot_diamond_necklace>,false,3,
[[40.0, carbon * 16],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);


mods.alchemistry.Dissolver.addRecipe(<atum:loot_diamond_scepter>,false,4,
[[40.0, carbon * 16],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);


mods.alchemistry.Dissolver.addRecipe(<atum:loot_diamond_idol>,false,5,
[[40.0, carbon * 16],
 [40.0, silver * 8],
 [40.0, gold * 8],
 [40.0, platinum * 8]]);

val porphyrys = [<atum:porphyry>,<atum:porphyry_brick_smooth>,<atum:porphyry_brick_polished>,
<atum:porphyry_brick_carved>,<atum:porphyry_brick_tiled>,<atum:porphyry_brick_pillar>] as IItemStack[];

for item in porphyrys {
	mods.alchemistry.Dissolver.addRecipe(item,true,1,
	[[30.0, niobium],
	 [20.0, siliconDioxide],
	 [10.0, molybdenum],
	 [5.0, tungsten]]);
}

val alabasters = [<atum:alabaster>,<atum:alabaster_brick_smooth>,<atum:alabaster_brick_polished>,<atum:alabaster_brick_carved>,
<atum:alabaster_brick_tiled>,<atum:alabaster_brick_pillar>] as IItemStack[];

for item in alabasters{
	mods.alchemistry.Dissolver.addRecipe(item,true,1,
	[[10.0, barium],
	 [20.0, gallium],
	 [20.0, calciumCarbonate]]);
}

mods.alchemistry.Dissolver.addRecipe(<atum:sarcophagus>,false,20,
[[60.0, beryl * 4],
 [60.0, chromium * 4],
 [60.0, vanadium * 2],
 [60.0, silver * 8],
 [60.0, gold * 8],
 [60.0, platinum * 8],
 [60.0, potassiumPermanganate * 4],
 [60.0, ironOxide * 5],
 [60.0, strontiumCarbonate * 5]]);

mods.alchemistry.Dissolver.removeRecipe(<minecraft:stone:5>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:stone:5>, true, 1,
[[75.0, null], 
[4.0, <alchemistry:element:21>],
[4.0, <alchemistry:compound:3>], 
[3.0, <alchemistry:element:26>], 
[4.0, <alchemistry:compound:5>], 
[10.0, <alchemistry:compound:1>], 
[2.0, <alchemistry:element:78>], 
[4.0, <alchemistry:element:20>]]);