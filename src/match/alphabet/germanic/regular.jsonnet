local g = import '../../../lib/base.libsonnet';


local rawHits = g.replacementTableToHits({
  'ß': 'eszett',
  'ẞ': 'Eszett',
});


std.manifestYamlDoc(
  {
    name: g.processFilename(std.thisFile),
    parent: g.PARENT,

    matches: g.renderTriggersAndHits(rawHits, g.PRE, g.POST),
  }
)
