import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.functions.toString;
import scripts.functions.getOreDict;
import scripts.functions.getItem;
import scripts.functions.getItemAny;
import scripts.functions.getItemMeta;
import scripts.functions.getItemString;
import scripts.functions.getArrayString;
import scripts.functions.getItemsFromMod;
import scripts.functions.getFluid;
import scripts.functions.getBucket;
import scripts.functions.getBucketDefault;
import scripts.functions.findFirstItemFromMod;

import scripts.functions.disable;

var compressedCobble as IItemStack = <extrautils2:compressedcobblestone:1>;

disable(<tp:compressed_nether_block>);
disable(<tp:double_compressed_nether_block>);
disable(<tp:triple_compressed_nether_block>);
disable(<tp:quadruple_compressed_nether_block>);
disable(<tp:quintuple_compressed_nether_block>);
disable(<tp:sextuple_compressed_nether_block>);
disable(<tp:septuple_compressed_nether_block>);
disable(<tp:octuple_compressed_nether_block>);

disable(<tp:steel_ingot>);

disable(<tp:wub_axe>);
disable(<tp:wub_hammer>);
disable(<tp:wub_hoe>);
disable(<tp:wub_paxel>);
disable(<tp:wub_pickaxe>);
disable(<tp:wub_spade>);
disable(<tp:wub_sword>);

disable(<tp:repair_tablet>);
<tp:repair_tablet>.addTooltip(format.red("-> Very laggy"));

disable(<tp:pouch>);
<tp:pouch>.addTooltip(format.red("-> Voids items unintentionally"));

var mapRecipe as IIngredient[][][][IItemStack] = {
    <tp:lava_infused_stone> : [
        [
            [<minecraft:end_stone>,<minecraft:lava_bucket>,<minecraft:end_stone>],
            [<minecraft:lava_bucket>,<minecraft:obsidian>,<minecraft:lava_bucket>],
            [<minecraft:end_stone>,<minecraft:lava_bucket>,<minecraft:end_stone>]
        ]
    ],
    <tp:wooden_shears> : [
        [
            [<ore:stickWood>,null],
            [<ore:plankWood>,<ore:stickWood>]
        ]
    ],
    <tp:cobblegen_block> : [
        [
            [compressedCobble,compressedCobble,compressedCobble],
            [<minecraft:lava_bucket>,<minecraft:glass>,<minecraft:water_bucket>],
            [compressedCobble,<ore:ingotTellurium>,compressedCobble]
        ]
    ],
};

for output, listRecipe in mapRecipe {
    var index as int = 0;
    recipes.remove(output);
    for recipe in listRecipe {
        var name as string = toString(output)+"_"+index;
        recipes.addShaped(name, output, recipe);
        index += 1;
    }
}
