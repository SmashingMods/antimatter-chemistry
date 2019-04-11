val crystalIngot = <avaritia:resource:1>;
val uberCrafting = <avaritia:double_compressed_crafting_table>;
val wokeCore = <draconicevolution:awakened_core>;

recipes.remove(<avaritia:extreme_crafting_table>);
recipes.addShaped(<avaritia:extreme_crafting_table>,
[[crystalIngot,wokeCore,crystalIngot],
 [crystalIngot,uberCrafting,crystalIngot],
 [crystalIngot,wokeCore,crystalIngot]]);

 mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
 <avaritia:resource:5>.addTooltip(format.red("Disabled until an appropriately rediculously recipe is ready"));

<avaritia:resource:6>.displayName = "Pure Antimatter Ingot";
<avaritia:resource:5>.displayName = "Antimatter Catalyst";