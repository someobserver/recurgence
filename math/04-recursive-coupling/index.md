---
layout: page
title: "Recursive Coupling and Depth Fields"
section_number: 4
parent: Mathematics
permalink: /math/04-recursive-coupling/
---

<small>[Home](/) / [Mathematics](/math/) / Recursive Coupling</small>

---

### Overview

This section formalizes the **Recursive Coupling** architecture within Recurgent Field Theory (RFT), introducing the principal tensorial and scalar fields that mediate self-reference, feedback, and cross-domain semantic propagation. The recursive coupling tensor $R_{ijk}(p, q, t)$, the depth field $D(p, t)$, and the recursive stress-energy tensor $T^{\text{rec}}_{ij}$ are defined as the core agents of recursive dynamics on the semantic manifold $\mathcal{M}$.

Key mathematical structures:
1. **Recursive Coupling Tensor** $R_{ijk}(p, q, t)$ — quantifies nonlocal, bidirectional influence of recursion between points and domains.
2. **Depth Field** $D(p, t)$ — encodes the sustainable recursion depth before coherence degrades, modulating the manifold's recursive capacity.
3. **Recursive Stress-Energy Tensor** $T^{\text{rec}}_{ij}$ — characterizes the deformation of semantic geometry induced by recursive flows.

These entities are coupled via the curvature-mass relation and the Lagrangian formalism, defining a phase space in which recursive structures either stabilize as autopoietic attractors or dissipate through entropic processes. The tensorial hierarchy sets up a fundamental tradeoff between persistent coherence and recursive generativity, as formalized by the uncertainty relation.

The section also details how recursive coupling decomposes into intra-domain (self-referential) and inter-domain (hetero-referential) components, allowing for rigorous treatment of metaphor, analogy, and cross-modal recursion. The latent recursive channel tensor and domain translation tensors serve as the substrate for cross-domain mapping, supporting the emergence of metaphoric and analogical structures as stable, hetero-recursive attractors.

---

### **4.1 Recursive Coupling Tensor $R_{ijk}(p, q, t)$**

The recursive coupling tensor $R_{ijk}(p, q, t)$ quantifies the influence of recursion at point $q$ on the coherence at point $p$, across the tensorial dimensions $i, j, k$:

$$
R_{ijk}(p, q, t) = \frac{\partial^2 C_k(p,t)}{\partial \psi_i(p) \partial \psi_j(q)}
$$

Where:

- $\psi_i(p)$ denotes the $i$-th component of the semantic field at point $p$,
- $C_k(p,t)$ is the $k$-th component of the coherence field at $p$ and time $t$.

The mixed partial derivative encodes the nonlocal, bidirectional influence of recursive processes, capturing the manner in which recursive activity at $q$ modulates the coherence structure at $p$ through the semantic field.

This tensor is analogous to a second-order field interaction, formalizing the interdependence of recursive effects across the manifold.

---

### **4.2 Recursive Depth $D(p, t)$**

The recursive depth field $D(p, t)$ is a scalar function that specifies the maximal recursion depth sustainable at point $p$ before coherence falls below a threshold:

$$
D(p, t) = \max \left\{ d \in \mathbb{N} : \left| \frac{\partial^d C(p,t)}{\partial \psi^d} \right| \geq \epsilon \right\}
$$

where $\epsilon$ is the minimum coherence signal threshold.

Interpretation:

- Concepts with low $D$ (e.g., elementary arithmetic) exhibit shallow recursive structure.
- Structures with high $D$ (e.g., persistent personal narratives or worldviews) maintain coherence across multiple recursive layers.

---

### **4.3 Recursive Stress-Energy Tensor $T_{ij}^{\text{rec}}$**

The recursive stress-energy tensor $T_{ij}^{\text{rec}}$ characterizes the manner in which recursion induces deformation within the semantic manifold:

$$
T_{ij}^{\text{rec}} = \rho(p,t) \cdot v_i(p,t) v_j(p,t) + P_{ij}(p,t)
$$

where

- $\rho(p,t) = \frac{1}{\det(g_{ij})}$ is the constraint density, with higher values corresponding to regions of greater local semantic mass,
- $v_i(p,t) = \frac{d}{dt} \psi_i(p,t)$ is the velocity of recursive change in the $i$-th component of the semantic field,
- $P_{ij}(p,t)$ is the recursive pressure tensor, defined as

$$
P_{ij} = \gamma(\nabla_i v_j + \nabla_j v_i) + \eta g_{ij} \nabla_k v^k
$$

with

- $\gamma$ denoting the elasticity of recursive loops,
- $\eta$ representing resistance to bulk recursive collapse,
- $\nabla_i$ the covariant derivative with respect to the manifold's geometry.

This tensor describes the coupling between recursive dynamics and semantic curvature, in direct analogy to the role of the stress-energy tensor in general relativity.

---

### **4.4 Hetero-Recursive Coupling and Cross-Domain Mapping**

The recursive coupling tensor $R_{ijk}(p, q, t)$ operates both within and across semantic subdomains, making it possible to formalize metaphor, analogy, and cross-modal recursion.

#### **4.4.1 Domain Structure in Semantic Space**

The semantic manifold $\mathcal{M}$ is partitioned into a collection of submanifolds (domains):

$$
\mathcal{M} = \bigcup_{d=1}^{N_D} \mathcal{M}_d
$$

where

- $\mathcal{M}_d$ denotes a semantic domain with its own intrinsic metric $g_{ij}^{(d)}$,
- Domains are connected via interface regions equipped with transition functions.

Examples of such domains include linguistic, visual, embodied, logical, emotional, and narrative spaces, each characterized by distinct semantic organization.

#### **4.4.2 Self vs. Hetero-Recursive Coupling**

The recursive coupling tensor decomposes as

$$
R_{ijk}(p, q, t) = R_{ijk}^{\text{self}}(p, q, t) + R_{ijk}^{\text{hetero}}(p, q, t)
$$

where

- $R_{ijk}^{\text{self}}(p, q, t) = R_{ijk}(p, q, t) \cdot \delta_{d(p),d(q)}$ corresponds to intra-domain (self-referential) recursion,
- $R_{ijk}^{\text{hetero}}(p, q, t) = R_{ijk}(p, q, t) \cdot (1 - \delta_{d(p),d(q)})$ corresponds to inter-domain (hetero-referential) recursion,
- $d(p)$ returns the domain index of $p$,
- $\delta_{d(p),d(q)}$ is the Kronecker delta.

This decomposition separates recursive feedback within a domain from cross-domain recursive mapping.

#### **4.4.3 Cross-Domain Mapping Formalism**

Hetero-recursive coupling calls for explicit mechanisms to map between distinct semantic spaces. To address this, a domain translation tensor is introduced:

$$
T_{ij}^{(d \to d')} : T\mathcal{M}_d \to T\mathcal{M}_{d'}
$$

which maps tangent spaces between domains, allowing coherence in one domain to influence another, even when their organizational principles differ.

The cross-domain recursive coupling is then given by

$$
R_{ijk}^{\text{hetero}}(p, q, t) = \chi_{ijl}(p, q, t) \cdot T_{lk}^{(d(q) \to d(p))}
$$

where

- $\chi_{ijl}(p, q, t)$ is the latent recursive channel tensor encoding potential connectivity,
- $T_{lk}^{(d(q) \to d(p))}$ translates recursive influence from domain $d(q)$ to domain $d(p)$.

#### **4.4.4 The Role of $\chi_{ijk}$ in Cross-Domain Mapping**

The latent recursive channel tensor $\chi_{ijk}(p, q, t)$ forms the substrate for cross-domain recursion, encoding:

1. The potential connectivity between semantic regions, irrespective of domain,
2. The channel capacity for recursive flow between points,
3. The similarity structure that governs analogical mapping.

Its evolution is described by

$$
\frac{d\chi_{ijk}(p, q, t)}{dt} = \alpha \cdot S_{ij}(p, q) \cdot N_k + \beta \cdot H(p, q, t) \cdot G_{ijk} - \gamma \cdot D_{ijk}(p, q)
$$

where

- $S_{ij}(p, q)$ is the rank-2 semantic similarity tensor,
- $N_k$ is a basis vector in the $k$-dimension, promoting $S_{ij}$ to rank-3,
- $H(p, q, t)$ is the scalar historical co-activation strength,
- $G_{ijk}$ is a rank-3 geometric structure tensor distributing $H$ across dimensions,
- $D_{ijk}(p, q)$ is the rank-3 domain incompatibility tensor.

The way these terms are constructed maintains tensor rank consistency and shapes the evolution of $\chi_{ijk}$ appropriately.

---

### **4.5 Metaphor and Analogy as Hetero-Recursive Structures**

Metaphors and analogies are formalized as stable hetero-recursive mappings between domains. A metaphor $\mathcal{M}$ from source domain $\mathcal{S}$ to target domain $\mathcal{T}$ is defined as

$$
\mathcal{M}_{\mathcal{S} \to \mathcal{T}} = \{(p, q, R_{ijk}^{\text{hetero}}(p, q, t)) \mid p \in \mathcal{S},\ q \in \mathcal{T},\ \|R_{ijk}^{\text{hetero}}(p, q, t)\| > \epsilon\}
$$

The stability of the metaphoric structure is quantified by

$$
\text{Stab}(\mathcal{M}_{\mathcal{S} \to \mathcal{T}}) = \frac{\int_{\mathcal{S} \times \mathcal{T}} \|R_{ijk}^{\text{hetero}}(p, q, t)\| \cdot W(p, t) \cdot W(q, t) \, dp \, dq}{\int_{\mathcal{S} \times \mathcal{T}} \|R_{ijk}^{\text{hetero}}(p, q, t)\| \, dp \, dq}
$$

where $W(p, t)$ and $W(q, t)$ are weighting functions. High-stability metaphoric mappings persist and exert significant influence on the organization of cognitive structures across domains, corresponding to what are termed "conceptual metaphors" in cognitive linguistics.

#### **4.5.1 Cross-Domain Recursive Amplification**

When hetero-recursive coupling forms closed loops across domains, cross-amplification of coherence may arise:

$$
C_i^{(d)}(p, t+1) = f\left(C_i^{(d)}(p, t), \sum_{d' \neq d} \int_{\mathcal{M}_{d'}} R_{ijk}^{\text{hetero}}(p, q, t) \cdot C_j^{(d')}(q, t) \, dq\right)
$$

Such feedback circuits stabilize cross-domain mappings and can result in:

1. Metaphoric entrenchment: mappings that become automatic within the cognitive architecture,
2. Conceptual blending: the emergence of hybrid domains at the interface of recursive loops,
3. Semantic innovation: the formation of novel conceptual structures from previously unconnected domains.

Through these mechanisms, the tensors $R_{ijk}$ and $\chi_{ijk}$ together support the full spectrum of recursive phenomena, from self-reference to metaphor and analogical reasoning, within a unified mathematical framework.

---

<small>Next: [Semantic Mass and Attractor Dynamics](/math/05-semantic-mass/)</small>