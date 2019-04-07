val draconium = <draconicevolution:draconium_ingot>;
val evilIngot = <extrautils2:ingredients:17>;

recipes.remove(<rftools:shape_card:2>);
recipes.addShaped(<rftools:shape_card:2>,
[[draconium,<tp:emerald_pickaxe>,draconium],
 [<draconicevolution:wyvern_core>,<rftools:shape_card>,evilIngot],
 [draconium,<tp:emerald_spade>,draconium]]);

val dimBuilder = <rftoolsdim:dimension_builder>;
val enderium = <thermalfoundation:material:167>;

recipes.remove(dimBuilder);
recipes.addShaped(dimBuilder,
[[<minecraft:ender_eye>,<minecraft:nether_star>,<minecraft:ender_eye>],
 [<minecraft:emerald>,<rftools:machine_frame>,<minecraft:emerald>],
 [enderium,enderium,enderium]]);

recipes.remove(<rftools:machine_frame>);
recipes.addShaped(<rftools:machine_frame>,
[[<ore:ingotSteel>,<ore:dyeBlue>,<ore:ingotSteel>],
 [<minecraft:gold_nugget>,null,<minecraft:gold_nugget>],
 [<ore:ingotSteel>,<ore:dyeBlue>,<ore:ingotSteel>]]);