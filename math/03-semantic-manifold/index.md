---
layout: page
title: "Semantic Manifold and Metric Geometry"
section_number: 3
parent: Mathematics
permalink: /math/03-semantic-manifold/
---

<small>[Home](/) / [Mathematics](/math/) / Semantic Manifold</small>

---

### Overview

Recurgent Field Theory models meaning as a dynamic semantic manifold $\mathcal{M}$ equipped with a metric tensor $g_{ij}$. The metric encodes local and global constraints, governing the geometry of semantic configurations and their evolution under recursion.

Key regimes:
- **High constraint** ($\rho \gg 1$): $g_{ij}$ is nearly diagonal, yielding sharply defined semantic distances (e.g., legal code).
- **Low constraint** ($\rho \ll 1$): $g_{ij}$ is nearly isotropic, permitting fluid semantic shifts (e.g., poetry).
- **Recursive deformation**: The metric evolves as $\partial_t g_{ij} = -2R_{ij} + F_{ij}(R, D, A)$, adapting semantic geometry through curvature and recursive feedback.

---

### **3.1 The Metric Tensor: Constraint as Semantic Geometry**

To measure distances—*semantic difference*—between nearby points in this space, a **dynamic metric tensor** $g_{ij}(p,t)$ evolves in both position $p$ and time $t$. It encodes how local constraints affect the ability of one meaning-state to shift into another.

The infinitesimal semantic distance between neighboring states:

$$
ds^2 = g_{ij}(p,t) \, dp^i \, dp^j
$$

Where:

* $dp^i$ is a small shift in the $i$-th semantic dimension.
* The metric $g_{ij}(p,t)$ modulates the "semantic resistance" or distortion between dimensions.

Semantic Interpretation:

* **High constraint** → large $g_{ij}$ → meaning is sharply differentiated (e.g., legal code, mathematics).
* **Low constraint** → small $g_{ij}$ → meaning flows loosely (e.g., poetry, metaphor).

---

### **3.2 Evolution of the Semantic Metric**

As recurgent structures evolve—self-reference looping and stabilizing—they reshape the geometry of the manifold. The **metric's evolution** is modeled as:

$$
\frac{\partial g_{ij}}{\partial t} = -2 R_{ij} + F_{ij}(R, D, A)
$$

* $R_{ij}$: Ricci curvature — describes how constraint mass "bends" semantic space.
* $F_{ij}$: A forcing term incorporating:

* $R$: recursive coupling tensor (feedback strength)
* $D$: recursive depth (loop count)
* $A$: attractor stability (resilience to perturbation)

This is analogous to Ricci flow in general relativity—but here driven by recursion, not energy.

---

### **3.3 Constraint Density and the Geometry of Meaning**

The metric tensor $g_{ij}(p,t)$ not only measures semantic distance but also determines the **constraint density** $\rho(p,t)$ at each point:

$$
\rho(p,t) = \frac{1}{\det(g_{ij}(p,t))}
$$

High constraint density signals tightly packed meaning—semantic states that resist transformation. Low constraint density marks regions where meaning is fluid, boundaries are soft, and transitions are easy. The geometry of $\mathcal{M}$ thus encodes both the rigidity and flexibility of conceptual space, modulating how coherence can propagate and how recursive structures can take root.

---

### **3.4 The Coherence Field and Semantic Flow**

Within this manifold, the **coherence field** $C_i(p,t)$ flows along the geometry defined by $g_{ij}$. Coherence is not a static property but a vector field, tracing the self-consistency and alignment of meaning across dimensions. The metric raises and lowers indices, shapes gradients, and determines how coherence accumulates or dissipates as it moves through the manifold.

The scalar magnitude of coherence at a point is given by:

$$
C_{mag}(p,t) = \sqrt{g^{ij}(p,t) C_i(p,t) C_j(p,t)}
$$

This measure quantifies the total strength of coherence, independent of direction, and serves as the basis for defining attractor potentials and autopoietic fertility in later sections.

---

### **3.5 Recursive Depth, Attractor Stability, and the Shaping of Space**

The geometry of $\mathcal{M}$ is further sculpted by recursive depth $D(p,t)$ and attractor stability $A(p,t)$. Recursive depth counts the layers of feedback a region can sustain before coherence decays, while attractor stability measures the tendency of a semantic state to return after perturbation. These fields, together with constraint density, compose the **semantic mass** $M(p,t)$:

$$
M(p,t) = D(p,t) \cdot \rho(p,t) \cdot A(p,t)
$$

Semantic mass curves the manifold, drawing coherence into stable basins and shaping the flow of meaning. High-mass regions act as attractors, anchoring interpretation and resisting change. Low-mass regions are more susceptible to transformation, innovation, and recursive branching.

---

<small>Next: [Recursive Coupling and Depth Fields](/math/04-recursive-coupling/)</small>
