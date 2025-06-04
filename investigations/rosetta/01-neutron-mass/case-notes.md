---
title: "Case Notes"
description: "Working notes from the neutron mass investigation - raw investigative timeline"
parent: Phase 1
permalink: /investigations/rosetta/01-neutron-mass/case-notes/
layout: page
created_date: 2025-06-04
updated_date: 2025-06-04
---

<small>[Home](/) / [Investigations](/investigations/) / [Rosetta Stone](/investigations/rosetta/) / [Phase 1](/investigations/rosetta/01-neutron-mass/) / **Case Notes**</small>

# case notes: neutron mass investigation

**investigator's working log - raw timeline of evidence, assumptions, failures, and discoveries**

This document contains the complete investigative record of the peer-level files and folders within this directory: experimental benchmarks, methodological decisions, computational attempts, dead ends, breakthroughs, and the actual process of determining whether RFT field equations can predict neutron mass.

Paired with the investigation's git history, this document allows for a formal reconstruction of its process at any step.

Lastly, these are open-facing working notes and not formal investigative documentation. Typographical errors, grammatical missteps, unseen logical blindspots, and other mistakes are expected in this document.

Products only become pretty because their process isn't. But they become proven when that process is public.

---

## Timeline

### [ 2025-06-04 / 16:53 ]

**Project Setup**  
this page itself as the first entry point, should probably begin to model *a* way future ones should be structured. just need this one organized from the start.

for this document, i had initially planned to try and avoid using first person pronouns when possible. But I'm also not going to write in an awkward third person that forces you to do another layer of logical model detangling in order to understand it who's who and what's what.

This investigator would write such a sentence here, demonstrating why in fact this investigator assumes this style of writing likely assumes a less coherent resonance— than me just being direct with information, plopping down my brain dumps, and letting the reasoning reason.

Not to mention, polish feels like prevarication? Or jeez, at least obfuscating the reality of who you are, what you did, and how you got there.

#### Starting reference values:

**target**: neutron rest mass  
**value**: 939.56542052 ± 0.00000054 MeV/c²  
**source**: CODATA 2022 / NIST / PDG 2024  
**uncertainty**: 5.7 × 10⁻¹⁰ (relative to target)  
**context**: free neutron in vacuum, not bound in a nucleus  

**related benchmarks**:
- proton mass: 938.27208816 ± 0.00000029 MeV/c²
- neutron-proton mass difference: 1.29333236 ± 0.00000046 MeV/c²
- neutron lifetime: 878.4 ± 0.5 seconds (PDG 2024, bottle experiments)

---

#### Investigative methodology:

Should probably lay out that the reason this is named "Rosetta Stone" is because this is a field-theoretical-meets-non-theoretical exercise geared toward generating evidence and helping answer a question:

*"Can RFT field equations, given only universal constants and geometric parameters, produce a field configuration whose semantic mass equals 939.56542052 MeV?"*

**current logic chain**:

1. RFT predicts semantic mass M = D · ρ · A
2. stable field configurations should exist as attractors  
3. attractors should have measurable semantic mass
4. if RFT describes reality, semantic mass = physical mass
5. therefore: field attractor semantic mass should equal neutron rest mass

**null**: no such correspondence exists  
**weak**: correspondence requires fine-tuning  
**strong**: natural correspondence within computational precision

---

#### Pre-investigation hypotheses:

documenting this here and now, before constructing anything, to maintain investigative integrity:

☉ *i've done the calculation of this at one point before on a different particle type, and received a positive result. I'm documenting hypotheses anyway to maintain methodological rigor and demonstrate if the framework predicts specific outcomes rather than getting post-hoc tuning*

**primary criterion**: a stable, emergent field solution with semantic mass between 935-945 MeV

**secondary criteria**:
- solution that's spherically symmetric with exponential tail
- field that shows three-fold internal structure (quark analog)  
- parameter sensitivity that's moderate (±10% parameter → ±1% mass)

**falsification criteria**:
- no stable solutions in mass range 900-1000 MeV
- solutions require parameter fine-tuning beyond 1 part in 100
- field configurations violate basic physical constraints

---

### [ 2025-06-04 / 18:20 ]

probably should have mentioned something about the directory structure and naming conventions for the results folder.

this needs to set the tone, bar, and standard for the other phases, and as the constraints of those play out, i'll have more wisdom on how best to construct.

- results folder structure: `results/YYYYMMDD_HHMMSS/` for each run
- output naming: `results/YYYYMMDD_HHMMSS/YYYYMMDD_HHMMSS_<script-name>{phase?}.{ext}`

still up in the air:
- field_solver.py (core PDE integration)
- neutron_finder.py (attractor search)  
- mass_calculator.py (semantic mass M = D · ρ · A)
- validation_suite.py (comparison with experimental)

*this case file will be updated chronologically as the investigation proceeds. all entries timestamped and signed off by investigator.*


### [ 2025-06-04 / 18:49 ]

Uncertainties:

- is the parameter space small enough to search systematically?
- do the field equations even apply reliably at nuclear scales?
- how does semantic mass rest energy get translated to MeV?
- is the 6D manifold proper for this model, or does the neutron require higher or lower dimensionality?
- do depth, density, and and stability have natural units?

---

**refractions**

- **[Phase 1 Main](/investigations/rosetta/01-neutron-mass/)**  
  <small>return to formal investigation documentation</small>
- **[RFT Mathematics](/math/05-semantic-mass/)**  
  <small>the theoretical foundation being tested</small>
- **[Rosetta Stone](/investigations/rosetta/)**  
  <small>the complete particle physics investigation</small>

---