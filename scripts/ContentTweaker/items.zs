#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

var listItems as string[] = [
    "discord",
    "patreon",
    "twitter",
    "akliz",
    "youtube"
];

for item in listItems {
    var newItem as Item = VanillaFactory.createItem(item);
    newItem.register();
}
