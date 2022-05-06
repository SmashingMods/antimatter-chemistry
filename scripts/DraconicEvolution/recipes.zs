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

var dracIngot as IItemStack = <draconicevolution:draconium_ingot>;
var dracNugget as IItemStack = <draconicevolution:nugget>;
var dimShard as IItemStack = <rftools:dimensional_shard>;

disable(<draconicevolution:draconium_ore>);
<draconicevolution:draconium_ore>.addTooltip(format.red("-> Draconium needs to be craftet."));

disable(<draconicevolution:draconium_ore:1>);
<draconicevolution:draconium_ore:1>.addTooltip(format.red("-> Draconium needs to be craftet."));

disable(<draconicevolution:draconium_ore:2>);
<draconicevolution:draconium_ore:2>.addTooltip(format.red("-> Draconium needs to be craftet."));

var mapRecipe as IIngredient[][][][IItemStack] = {
    <draconicevolution:draconium_ingot> : [
        [
            [<tp:colored_dust:9>,dimShard,<tp:colored_dust:9>],
            [dimShard,<draconicevolution:draconium_dust>,dimShard],
            [<tp:colored_dust:9>,dimShard,<tp:colored_dust:9>]
        ],
        [
            [dracNugget,dracNugget,dracNugget],
            [dracNugget,dracNugget,dracNugget],
            [dracNugget,dracNugget,dracNugget]
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

recipes.remove(<draconicevolution:draconium_dust>);
recipes.addShapeless(dracIngot * 9 , [<draconicevolution:draconium_block>]);
