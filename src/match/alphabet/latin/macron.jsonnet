local g = import '../../../lib/base.libsonnet';

local PRE = g.PRE_DIACRITIC;
local POST = g.POST_MACRON;


local rawHits = g.replacementTableToHits({
  //## Symbol
     '¯': "'",

  //## Lower case
     'ā': 'a',
     'ð': 'd',
     'ē': 'e',
     'ḡ': 'g',
     'ī': 'i',
     'ō': 'o',
     'ū': 'u',

  //## Upper case
     'Ā': 'A',
     'Ð': 'D',
     'Ē': 'E',
     'Ḡ': 'G',
     'Ī': 'I',
     'Ō': 'O',
     'Ū': 'U',
});


std.manifestYamlDoc(
  {
    name: g.processFilename(std.thisFile),
    parent: g.PARENT,

    matches: g.renderTriggersAndHits(rawHits, PRE, POST),
  }
)
