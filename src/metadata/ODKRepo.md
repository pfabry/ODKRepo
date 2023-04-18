---
layout: ontology_detail
id: ODKRepo
title: ODK test repository
jobs:
  - id: https://travis-ci.org/pfabry/ODKRepo
    type: travis-ci
build:
  checkout: git clone https://github.com/pfabry/ODKRepo.git
  system: git
  path: "."
contact:
  email: 
  label: 
  github: 
description: ODK test repository is an ontology...
domain: stuff
homepage: https://github.com/pfabry/ODKRepo
products:
  - id: ODKRepo.owl
    name: "ODK test repository main release in OWL format"
  - id: ODKRepo.obo
    name: "ODK test repository additional release in OBO format"
  - id: ODKRepo.json
    name: "ODK test repository additional release in OBOJSon format"
  - id: ODKRepo/ODKRepo-base.owl
    name: "ODK test repository main release in OWL format"
  - id: ODKRepo/ODKRepo-base.obo
    name: "ODK test repository additional release in OBO format"
  - id: ODKRepo/ODKRepo-base.json
    name: "ODK test repository additional release in OBOJSon format"
dependencies:
- id: bfo
- id: omo
- id: obi
- id: omrse

tracker: https://github.com/pfabry/ODKRepo/issues
license:
  url: http://creativecommons.org/licenses/by/3.0/
  label: CC-BY
activity_status: active
---

Enter a detailed description of your ontology here. You can use arbitrary markdown and HTML.
You can also embed images too.

