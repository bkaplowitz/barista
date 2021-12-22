local g = import '../../../lib/base.libsonnet';

local PRE = 'MATHBOLD';
local POST = g.POST;

local lowerOverrides = {};
local upperOverrides = {};

local lower = g.generateHitsFromStartAndEndChars('a', 'z', '𝓪', lowerOverrides);
local upper = g.generateHitsFromStartAndEndChars('A', 'Z', '𝓐', upperOverrides);

local rawHits = lower + upper;
local matches = g.processTriggers(rawHits, PRE, POST);


g.renderDocument(std.thisFile, matches)
