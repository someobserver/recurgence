---
layout: page
title: "Semantic Mass and Attractor Dynamics"
section_number: 5
parent: Mathematics
permalink: /math/05-semantic-mass/
---

<small>[Home](/) / [Mathematics](/math/) / Semantic Mass and Attractor Dynamics</small>

---

### Overview

This section formalizes **semantic mass** as the principal source of curvature in Recurgent Field Theory, governing the persistence and stability of meaning structures under recursive pressure. The mass distribution $M(p,t)$ emerges from the triple product of recursive depth $D$, constraint density $\rho$, and attractor stability $A$, establishing a geometric foundation for autopoietic coherence.

Key mathematical structures:
1. **Mass-curvature coupling** through the recurged Einstein equation $R_{ij} - \frac{1}{2}g_{ij}R = 8\pi G_s T^{\text{rec}}_{ij}$
2. **Attractor potential** $\Phi(p,t)$ derived from nonlocal mass distribution
3. **Recursive force** $F_i = -\nabla_i\Phi$ driving coherence flow

The theory positions semantic mass as the bridge between:
- Constraint geometry (encoded in $g_{ij}$)
- Coherence field dynamics (governed by $\mathcal{L}$ in §6)
- Recursive stress-energy (mediated by $T^{\text{rec}}_{ij}$ from §4)

This construction completes the geometric framework of Recurgent Field Theory: concentrations of semantic mass induce curvature in the semantic manifold, generating attractor basins that govern the flow of recursive processes and counteract entropic dissipation. The field dynamics admit phase transitions at critical values of $M(p, t)$, beyond which autopoietic regeneration cycles are initiated.

---

### **5.1 Semantic Mass**

The **semantic mass** $M(p, t)$ is formally defined as the product of recursive depth, constraint density, and attractor stability at each point $p \in \mathcal{M}$ and time $t$:
$$
M(p, t) = D(p, t) \cdot \rho(p, t) \cdot A(p, t)
$$
where:
- $D(p, t)$ denotes the recursive depth field, quantifying the maximal recursion depth sustainable at $p$ before coherence degrades,
- $\rho(p, t)$ is the constraint density, given by $\rho(p, t) = 1/\det(g_{ij}(p, t))$, encoding the tightness of local semantic geometry,
- $A(p, t)$ is the attractor stability field, measuring the local tendency of a semantic state to return after perturbation.

Semantic mass $M(p, t)$ serves as the principal source term for semantic curvature, anchoring persistent structures within the semantic manifold. Regions of high $M$ act as stable attractors, exerting a stabilizing influence on the evolution of coherence fields and modulating the propagation of recursive processes. The persistence of high-mass structures is a consequence of their recursive depth, constraint density, and local stability, independent of their propositional content.

---

### **5.2 Recurgent Einstein Equation**

The coupling between recursive stress and semantic curvature is governed by the recurged Einstein field equation:
$$
R_{ij} - \frac{1}{2}g_{ij}R = 8\pi G_s T^{\text{rec}}_{ij}
$$
where:
- $R_{ij}$ is the Ricci curvature tensor of the semantic manifold,
- $R$ is the scalar curvature,
- $g_{ij}$ is the metric tensor,
- $T^{\text{rec}}_{ij}$ is the recursive stress-energy tensor (see Section 4.3),
- $G_s$ is the semantic gravitational constant.

This equation formalizes the principle that recursive tension and constraint, as encoded in $T^{\text{rec}}_{ij}$, generate curvature in semantic space, shaping the geometry of meaning in direct analogy to the role of mass-energy in general relativity.

---

### **5.3 Attractor Potential Field $\Phi(p, t)$**

The **attractor potential field** $\Phi(p, t)$ is defined as the integral over semantic mass, weighted by geodesic distance:
$$
\Phi(p, t) = -G_s \int_{\mathcal{M}} \frac{M(q, t)}{d(p, q)} \, dV_q
$$
where:
- $d(p, q)$ is the geodesic distance between points $p$ and $q$ in the semantic manifold,
- $M(q, t)$ is the semantic mass at $q$,
- $dV_q$ is the volume element.

The gradient of this potential yields the **recursive force**:
$$
F_i(p, t) = -\nabla_i \Phi(p, t)
$$
which governs the flow of coherence and the attraction of new semantic structures into existing attractor basins. This formalism captures the manner in which regions of high semantic mass modulate the dynamics of meaning, drawing recursive processes toward stable configurations.

---

### **5.4 Potential Energy of Coherence**

The potential energy associated with the scalar coherence magnitude $C_{\mathrm{mag}}$ is given by:
$$
V(C_{\mathrm{mag}}) = \frac{1}{2}k(C_{\mathrm{mag}} - C_0)^2
$$
where:
- $C_{\mathrm{mag}} = \sqrt{g^{ij}(p, t) C_i(p, t) C_j(p, t)}$ is the scalar magnitude of the coherence field,
- $C_0$ is the equilibrium coherence level of the attractor,
- $k$ is the coherence rigidity parameter, quantifying the stiffness of the attractor basin.

This quadratic potential models the energetic landscape of semantic attractors:
- **Soft attractors** (e.g., metaphoric or fluid conceptual structures) correspond to small $k$,
- **Hard attractors** (e.g., axiomatic, rigid, or dogmatic structures) correspond to large $k$.

The parameter $k$ thus modulates the resistance of an attractor to perturbation and the rate at which coherence returns to equilibrium following displacement.

---

<small>Next: [Recurgent Field Equation and Lagrangian Mechanics](/math/06-recurgent-field-equation/)</small>
