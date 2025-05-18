---
layout: page
title: "Semantic Manifold and Metric Geometry"
section_number: 3
parent: Mathematics
permalink: /math/03-semantic-manifold/
---

<small>[Home](/) / [Mathematics](/math/) / Semantic Manifold</small>

---

## Overview

Recurgent Field Theory formalizes meaning as a differentiable manifold $\mathcal{M}$ endowed with a dynamic metric tensor $g_{ij}(p, t)$. The metric encodes the local and global constraint structure, determining the geometry of semantic configurations and their evolution under recursive processes.

Principal regimes:

- **High constraint** ($\rho \gg 1$): $g_{ij}$ is nearly diagonal, yielding sharply defined geodesics in semantic space (e.g., legal code).
- **Low constraint** ($\rho \ll 1$): $g_{ij}$ is nearly isotropic, permitting fluid semantic transitions (e.g., poetry).
- **Recursive deformation**: The metric evolves according to $\partial_t g_{ij} = -2R_{ij} + F_{ij}(R, D, A)$, where curvature and recursive feedback jointly modulate the geometry.

---

### **3.1 The Metric Tensor and Semantic Distance**

The semantic manifold $\mathcal{M}$ is equipped with a time-dependent metric tensor $g_{ij}(p, t)$, which defines the infinitesimal squared distance between neighboring points:

$$
ds^2 = g_{ij}(p, t) \, dp^i \, dp^j
$$

where $dp^i$ is an infinitesimal displacement in the $i$-th semantic dimension. The metric $g_{ij}$ encodes the local constraint structure, modulating the cost of semantic displacement along and between dimensions.

Interpretation:

- **High constraint**: Large $g_{ij}$ components correspond to regions where semantic distinctions are rigid and transitions are energetically costly.
- **Low constraint**: Small $g_{ij}$ components correspond to regions of semantic fluidity, where transitions are facile.

---

### **3.2 Evolution Equation for the Semantic Metric**

The evolution of the metric tensor is governed by a flow equation analogous to Ricci flow, but with additional forcing terms reflecting recursive structure:

$$
\frac{\partial g_{ij}}{\partial t} = -2 R_{ij} + F_{ij}(R, D, A)
$$

where:

- $R_{ij}$ is the Ricci curvature tensor associated with $g_{ij}$, encoding the intrinsic curvature induced by constraint density.
- $F_{ij}(R, D, A)$ is a symmetric tensor-valued functional incorporating:
  - $R$: the recursive coupling tensor (quantifying nonlocal feedback, see Section 4),
  - $D$: the recursive depth field (maximal sustainable recursion at $p$),
  - $A$: the attractor stability field (local resilience to perturbation).

This flow describes the deformation of semantic geometry under the influence of both intrinsic curvature and recursive feedback mechanisms.

---

### **3.3 Constraint Density**

The metric tensor determines the **constraint density** $\rho(p, t)$ at each point via:

$$
\rho(p, t) = \frac{1}{\det(g_{ij}(p, t))}
$$

Regions of high constraint density ($\rho \gg 1$) correspond to tightly packed semantic states, where transitions are suppressed. Low constraint density ($\rho \ll 1$) marks regions of semantic flexibility, where boundaries are diffuse and transitions are energetically favorable. The geometry of $\mathcal{M}$ thus encodes both rigidity and plasticity, modulating the propagation of coherence and the formation of recursive structures.

---

### **3.4 The Coherence Field**

The **coherence field** $C_i(p, t)$ is a vector field on $\mathcal{M}$, representing the local alignment and self-consistency of semantic structure. The metric $g_{ij}$ is used to raise and lower indices, compute gradients, and define the norm of coherence:

$$
C_{\mathrm{mag}}(p, t) = \sqrt{g^{ij}(p, t) C_i(p, t) C_j(p, t)}
$$

where $g^{ij}$ is the inverse metric. $C_{\mathrm{mag}}$ quantifies the scalar magnitude of coherence at $p$, independent of direction, and serves as the basis for defining attractor potentials and autopoietic capacity in subsequent sections.

---

### **3.5 Recursive Depth, Attractor Stability, and Semantic Mass**

The geometry of $\mathcal{M}$ is further modulated by the recursive depth field $D(p, t)$ and the attractor stability field $A(p, t)$. $D(p, t)$ quantifies the maximal recursion depth sustainable at $p$ before coherence degrades, while $A(p, t)$ measures the local tendency of a semantic state to return after perturbation. Together with constraint density, these fields define the **semantic mass**:

$$
M(p, t) = D(p, t) \cdot \rho(p, t) \cdot A(p, t)
$$

Semantic mass $M(p, t)$ curves the manifold, generating attractor basins and shaping the flow of coherence. High-mass regions act as stable attractors, anchoring interpretation and resisting transformation; low-mass regions are susceptible to innovation and recursive branching.

---

<small>Next: [Recursive Coupling and Depth Fields](/math/04-recursive-coupling/)</small>
