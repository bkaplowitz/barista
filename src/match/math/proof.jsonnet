local g = import '../../lib/base.libsonnet';

local rawHits = g.replacementTableToHits({
  '∎': ['qed', 'halmos', 'tomb', 'tombstone'],
  '↯': ['contra', 'lightning', 'bolt'],
  '※': ['vcontra', '::x'],
});


g.renderDocument(
  std.thisFile,
  g.renderTriggersAndHits(rawHits, g.PRE, g.POST),
)
