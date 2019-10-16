 import crafttweaker.item.IItemTransformer;

val inf_wb = <tp:infin_bucket>.reuse();
val wb = <minecraft:water_bucket>.giveBack(<minecraft:bucket>);

recipes.replaceAllOccurences(<minecraft:water_bucket>,inf_wb|wb);