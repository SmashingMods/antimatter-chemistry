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

recipes.addShapeless(<tconstruct:slime_dirt>,[<minecraft:dirt>,<minecraft:slime_ball>]);
recipes.addShapeless(<tconstruct:slime_dirt:1>,[<minecraft:dirt>,<tconstruct:edible:1>]);
recipes.addShapeless(<tconstruct:slime_dirt:2>,[<minecraft:dirt>,<tconstruct:edible:2>]);
recipes.addShapeless(<tconstruct:slime_dirt:3>,[<minecraft:dirt>,<tconstruct:edible:4>]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <tconstruct:slime_sapling> : [
        [
            [<tconstruct:edible:1>,<tconstruct:edible:1>,<tconstruct:edible:1>],
            [<tconstruct:edible:1>,<ore:treeSapling>,<tconstruct:edible:1>],
            [<tconstruct:edible:1>,<tconstruct:edible:1>,<tconstruct:edible:1>]
        ]
    ],
    <tconstruct:slime_sapling:1> : [
        [
            [<tconstruct:edible:2>,<tconstruct:edible:2>,<tconstruct:edible:2>],
            [<tconstruct:edible:2>,<ore:treeSapling>,<tconstruct:edible:2>],
            [<tconstruct:edible:2>,<tconstruct:edible:2>,<tconstruct:edible:2>]
        ]
    ],
    <tconstruct:sharpening_kit>.withTag({Material: "stone"}) : [
        [
            [AM["white"],AM["lightGray"]],
            [AM["lightGray"],AM["white"]]
        ]
    ],
    <tconstruct:sharpening_kit>.withTag({Material: "iron"}) : [
        [
            [<ore:ingotIron>,AM["lightGray"]],
            [AM["lightGray"],<ore:ingotIron>]
        ]
    ]
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
