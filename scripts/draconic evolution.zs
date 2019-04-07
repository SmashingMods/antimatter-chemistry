<draconicevolution:draconium_ore>.addTooltip(format.red("Generation disabled"));
<draconicevolution:draconium_ore:1>.addTooltip(format.red("Generation disabled"));
<draconicevolution:draconium_ore:2>.addTooltip(format.red("Generation disabled"));

val dimShard = <rftools:dimensional_shard>;

recipes.addShaped(<draconicevolution:draconium_ingot>,
[[dimShard,dimShard,dimShard],
 [dimShard,<ore:ingotIron>,dimShard],
 [dimShard,dimShard,dimShard]]);