#loader contenttweaker
import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.BlockRenderType;

new BlockBuilder()
.withHarvestLevel(99)
.withHardnessAndResistance(1000000.0,1000000.0)
.withRenderType(BlockRenderType.TRANSLUCENT)
.withoutMovementBlocking()
.setRequiresTool()
.build("anti_spawner");