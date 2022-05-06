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

var mapRecipe as IIngredient[][][][IItemStack] = {
    <earthworks:tool_stone_hammer> : [
        [
            [<minecraft:stone>,<ore:stickWood>,<minecraft:stone>],
            [null,<ore:stickWood>,null]
        ]
    ],
    <earthworks:tool_iron_hammer> : [
        [
            [<ore:ingotIron>,<ore:stickWood>,<ore:ingotIron>],
            [null,<ore:stickWood>,null]
        ]
    ],
    <earthworks:tool_gold_hammer> : [
        [
            [<ore:ingotGold>,<ore:stickWood>,<ore:ingotGold>],
            [null,<ore:stickWood>,null]
        ]
    ],
    <earthworks:tool_diamond_hammer> : [
        [
            [<ore:gemDiamond>,<ore:stickWood>,<ore:gemDiamond>],
            [null,<ore:stickWood>,null]
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
