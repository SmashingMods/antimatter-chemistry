val stick = <minecraft:stick>;

recipes.remove(<earthworks:tool_stone_hammer>);
recipes.addShaped(<earthworks:tool_stone_hammer>,
[[<minecraft:stone>,stick,<minecraft:stone>],
 [null,stick,null]]);

recipes.remove(<earthworks:tool_iron_hammer>);
recipes.addShaped(<earthworks:tool_iron_hammer>,
[[<minecraft:iron_ingot>,stick,<minecraft:iron_ingot>],
 [null,stick,null]]);

recipes.remove(<earthworks:tool_gold_hammer>);
recipes.addShaped(<earthworks:tool_gold_hammer>,
[[<minecraft:gold_ingot>,stick,<minecraft:gold_ingot>],
 [null,stick,null]]);

recipes.remove(<earthworks:tool_diamond_hammer>);
recipes.addShaped(<earthworks:tool_diamond_hammer>,
[[<minecraft:diamond>,stick,<minecraft:diamond>],
 [null,stick,null]]);