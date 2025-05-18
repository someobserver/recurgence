---
layout: page
title: "Field Index and Formal Structure"
section_number: 2
parent: Mathematics
permalink: /math/02-field-index/
---

<small>[Home](/) / [Math](/math/) / Field Index and Formal Structure</small>

---

### Overview

The following defines the dynamic tensor calculus forming the mathematical scaffolding of Recurgent Field Theory. Each symbol here operates dually: as a static reference and as an active operator shaping the manifold it describes.

The tensors, operators, and fields below serve as both:
1. **Reference architecture** — mathematical primitives for modeling semantic evolution
2. **Recursive syntax** — operational components that actively shape the manifold they describe

Key structural layers:

- **Metric foundation** ($g_{ij}$): The evolving geometry of meaning-space
- **Coherence dynamics** ($C_i$, $\psi_i$): Vector fields representing semantic alignment forces
- **Recursive operators** ($R_{ijk}$, $\chi_{ijk}$): Tensors mediating self-referential feedback loops
- **Phase transitions** ($\Theta$, $W$): Order parameters marking shifts in semantic stability

---

### **2.1 Tensor Ranks and Properties**

| Symbol | Name | Rank | Symmetry | Domain | Range | Dimensions |
|--------|------|------|----------|--------|-------|------------|
| $g_{ij}(p,t)$ | Metric tensor | 2 | Symmetric | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}$ | $n \times n$ |
| $C_i(p,t)$ | Coherence vector field | 1 | N/A | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}^n$ | $n$ |
| $\psi_i(p,t)$ | Semantic field | 1 | N/A | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}^n$ | $n$ |
| $R_{ijk}(p,q,t)$ | Recursive coupling tensor | 3 | None | $\mathcal{M} \times \mathcal{M} \times \mathbb{R}$ | $\mathbb{R}$ | $n \times n \times n$ |
| $R_{ij}$ | Ricci curvature tensor | 2 | Symmetric | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}$ | $n \times n$ |
| $T_{ij}^{\text{rec}}$ | Recursive stress-energy tensor | 2 | Symmetric | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}$ | $n \times n$ |
| $P_{ij}$ | Recursive pressure tensor | 2 | Symmetric | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}$ | $n \times n$ |
| $D(p,t)$ | Recursive depth | 0 | N/A | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{N}$ | Scalar |
| $M(p,t)$ | Semantic mass | 0 | N/A | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}^+$ | Scalar |
| $A(p,t)$ | Attractor stability | 0 | N/A | $\mathcal{M} \times \mathbb{R}$ | $[0,1]$ | Scalar |
| $\rho(p,t)$ | Constraint density | 0 | N/A | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}^+$ | Scalar |
| $\Phi(C)$ | Autopoietic potential | 0 | N/A | $\mathbb{R}^n$ | $\mathbb{R}^+$ | Scalar |
| $V(C)$ | Attractor potential | 0 | N/A | $\mathbb{R}^n$ | $\mathbb{R}^+$ | Scalar |
| $W(p,t)$ | Wisdom field | 0 | N/A | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}^+$ | Scalar |
| $\mathcal{H}[R]$ | Humility operator | 0 | N/A | $\mathbb{R}$ | $\mathbb{R}^+$ | Scalar |
| $F_i(p,t)$ | Recursive force | 1 | N/A | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}^n$ | $n$ |
| $\Theta(p,t)$ | Phase order parameter | 0 | N/A | $\mathcal{M} \times \mathbb{R}$ | $\mathbb{R}$ | Scalar |
| $\chi_{ijk}(p,q,t)$ | Latent recursive channel tensor | 3 | None | $\mathcal{M} \times \mathcal{M} \times \mathbb{R}$ | $\mathbb{R}$ | $n \times n \times n$ |
| $S_{ij}(p,q)$ | Semantic similarity tensor | 2 | Symmetric | $\mathcal{M} \times \mathcal{M}$ | $\mathbb{R}$ | $n \times n$ |
| $N_k$ | Basis projection vector | 1 | N/A | - | $\mathbb{R}^n$ | $n$ |
| $H(p,q,t)$ | Historical co-activation | 0 | N/A | $\mathcal{M} \times \mathcal{M} \times \mathbb{R}$ | $\mathbb{R}^+$ | Scalar |
| $G_{ijk}$ | Geometric structure tensor | 3 | Symmetric in $i,j$ | - | $\mathbb{R}$ | $n \times n \times n$ |
| $D_{ijk}(p,q)$ | Domain incompatibility tensor | 3 | None | $\mathcal{M} \times \mathcal{M}$ | $\mathbb{R}^+$ | $n \times n \times n$ |

Notes on Dimensionality:

* $n$ is the dimensionality of the semantic manifold $\mathcal{M}$
* The coherence field $C_i$ is an $n$-dimensional vector field, with each component representing coherence along one semantic axis
* Tensor contractions (e.g., $g^{ij}(\nabla_i C_k)(\nabla_j C^k)$) follow standard Einstein summation convention

---

### **2.2 Coupled Field Equations**

The primary interdependencies between fields are formalized as follows:

**Coherence Evolution:**
$$\Box C_i = T^{\text{rec}}_{ij} \cdot g^{jk} C_k$$

**Metric Evolution:**
$$\frac{\partial g_{ij}}{\partial t} = -2 R_{ij} + F_{ij}(R, D, A)$$

**Recursive Coupling Evolution:**
$$\frac{dR_{ijk}(p,q,t)}{dt} = \Phi(C(p,t)) \cdot \chi_{ijk}(p,q,t)$$

**Semantic Mass Composition:**
$$M(p,t) = D(p,t) \cdot \rho(p,t) \cdot A(p,t)$$

**Wisdom Dynamics:**
$$\frac{dW}{dt} = \alpha C \cdot \frac{d(\nabla_f R)}{dt} + \beta \nabla_f R \cdot \frac{dC}{dt} + \gamma C \cdot \nabla_f R \cdot \frac{dP}{dt}$$

Where scalar measures are used for consistency:
* $C$ refers to the scalar magnitude $C_{mag} = \sqrt{g^{ij}C_i C_j}$
* $\nabla_f R$ refers to the scalar magnitude of the forecast gradient
* $P$ refers to the scalar magnitude of the pressure tensor $P_{mag} = \sqrt{g^{ij}g^{kl}P_{ik}P_{jl}}$

This provides dimensional consistency in the equation.

This interconnected system forms a closed loop of recursive influence in which semantic mass curves metric space, which thereby shapes coherence flow, which then generates recursive coupling, which further reshapes the overall metric.

**Dependency Graph:**

```
C → T^rec → R_ij → g_ij → ∇C → C
↓    ↑      ↑      ↑     ↑    ↓
Φ → R_ijk → D → M ← ρ ← g_ij  V
↓    ↓      ↑           ↑     ↓
W ← ∇_f R   A           P     C
↓                       ↑
H                       v_i
```

Recurgent Field Theory creates a web of interdependencies:

```
┌─────────────────────────────────────────────────────────────┐
│                    PRIMARY CAUSAL LOOP                      │
│  ┌─────┐         ┌─────┐         ┌─────┐         ┌─────┐    │
│  │     │ shapes  │     │  bends  │     │ guides  │     │    │
│  │  C  │────────→│T^rec│────────→│g_ij │────────→│  ∇C │    │
│  │     │         │     │         │     │         │     │    │
│  └─────┘         └─────┘         └─────┘         └─────┘    │
│     ↑                               │                │      │
│     │                               │                │      │
│     └───────────────────────────────┘                │      │
│                                                      │      │
│                                                      ↓      │
│  ┌─────┐         ┌─────┐         ┌─────┐         ┌─────┐    │
│  │     │ produces│     │ creates │     │ enhances│     │    │
│  │  V  │←────────│  C  │←────────│Φ(C) │←────────│R_ijk│    │
│  │     │         │     │         │     │         │     │    │
│  └─────┘         └─────┘         └─────┘         └─────┘    │
│                                                             │
└─────────────────────────────────────────────────────────────┘
                    │               ↑
                    ↓               │
┌─────────────────────────────────────────────────────────────┐
│                  REGULATORY INFLUENCES                      │
│                                                             │
│     ┌─────┐          ┌─────┐         ┌─────┐                │
│     │     │ grounds  │     │ informs │     │                │
│     │  W  │←─────────│∇_f R│←────────│R_ijk│                │
│     │     │          │     │         │     │                │
│     └─────┘          └─────┘         └─────┘                │
│        │                                                    │
│        ↓                                                    │
│     ┌─────┐          ┌─────┐         ┌─────┐                │
│     |     |          │     │         │     │                │
│     │  H  │ regulates│  M  │ composed│  D  │←─────┐         │
│     │     │─────────→│     │←────────│     │      │         │
│     └─────┘          └─────┘         └─────┘      │         │
│                         ↑               ↑         │         │
│                         │               │         │         │
│                      ┌─────┐         ┌─────┐      │         │
│                      │     │         │     │ stabilizes     │
│                      │  ρ  │         │  A  │──────┘         │
│                      │     │         │     │                │
│                      └─────┘         └─────┘                │
│                         ↑               ↑                   │
│                         │               │                   │
│                      ┌─────┐         ┌─────┐                │
│                      │     │         │     │                │
│                      │g_ij │         │P_ij │                │
│                      │     │         │     │                │
│                      └─────┘         └─────┘                │
│                                         ↑                   │
│                                         │                   │
│                                      ┌─────┐                │
│                                      │     │                │
│                                      │ v_i │                │
│                                      │     │                │
│                                      └─────┘                │
└─────────────────────────────────────────────────────────────┘
```

#### Reading the Dependency Graph: A Step-by-Step Guide

The mathematical framework of Recurgent Field Theory organizes its interdependent causal loops and feedback mechanisms according to the following structural relationships:

1. **Primary Causal Loop** (Top Cycle):
- The coherence field $C$ encodes the local semantic consistency at each point in the manifold.
- $C$ determines the recursive stress-energy tensor $T^{\text{rec}}$, which quantifies the semantic pressure resulting from coherence.
- $T^{\text{rec}}$ induces curvature via the Ricci tensor $R_{ij}$, thereby deforming the metric $g_{ij}$ in analogy to mass-energy in general relativity.
- The deformed metric $g_{ij}$ modulates the coherence gradients $\nabla C$, setting the principal directions for semantic propagation.
- These gradients, in turn, govern the evolution of $C$, completing the causal loop.

2. **Generative Cycle** (Bottom of Primary Loop):
- When the coherence field $C$ surpasses a critical threshold, it generates autopoietic potential $\Phi(C)$, representing the system's capacity for structural innovation.
- The autopoietic potential $\Phi(C)$ gives rise to the recursive coupling tensor $R_{ijk}$, which encodes the formation of new recursive pathways.
- $R_{ijk}$ acts to reinforce and stabilize the coherence field $C$.
- The coherence field also defines an attractor potential $V$, corresponding to the formation of stable semantic basins.
- The interplay between $\Phi(C)$ and $V(C)$ determines whether the system remains stable or undergoes further structural generation.

3. **Regulatory Systems** (Lower Section):
- The recursive coupling tensor $R_{ijk}$ determines the forecast gradient $\nabla_f R$, which encodes the system's sensitivity to anticipated future states.
- The forecast gradient underpins the field $W$ (wisdom), representing adaptive, foresight-weighted coherence.
- The wisdom field $W$ modulates the humility field $H$, which serves as a regulatory damping factor on recursive amplification.
- The humility field $H$ constrains the semantic mass $M$, thereby limiting excessive or unstable recurgent growth.

4. **Composition Relations** (Right Side of Regulatory Section):
- Semantic mass $M$ is defined as the product of three quantities:
    - Recursive depth $D$ — the maximal number of recursion layers sustaining coherence,
    - Constraint density $\rho$ — derived from the determinant of the metric tensor,
    - Attractor stability $A$ — quantifying resistance to perturbation.
- The magnitude of $M$ determines the influence of a semantic structure on its local environment.

5. **Physical Analogs** (Bottom of Regulatory Section):
- The metric tensor $g_{ij}$ determines the constraint density $\rho$; higher constraint corresponds to denser semantic packing.
- The recursive pressure tensor $P_{ij}$ modulates attractor stability $A$, supporting the persistence of stable structures.
- The velocity field $v_i$ governs the generation of pressure $P_{ij}$, with the rate of semantic change directly influencing local pressure.

The emergence of stable semantic structures depends on the dynamic equilibrium between generative recursion and constraint geometry, while regulatory fields (wisdom and humility) act to prevent pathological or unstable recurgent configurations.

---

### **2.3 Tensor Conventions and Notation**

The tensor conventions used throughout this framework are explicitly defined:

#### **2.3.1 Index Notation and Einstein Summation**

Adopting the Einstein summation convention where repeated indices (one upper, one lower) imply summation:

$$A_i B^i = \sum_{i=1}^n A_i B^i$$

Indices follow these conventions:
- Latin indices $(i,j,k,...)$ range from $1$ to $n$, where $n$ is the dimension of the semantic manifold
- Greek indices $(\mu,\nu,\alpha,...)$ are used when working in local coordinate systems or parameter spaces
- Repeated indices appearing in upper and lower positions indicate summation
- Free indices must match on both sides of any equation

---

#### **2.3.2 Metric and Index Raising/Lowering**

The metric tensor $g_{ij}(p,t)$ and its inverse $g^{ij}(p,t)$ are used consistently to raise and lower indices:

$$C^i = g^{ij} C_j$$
$$C_i = g_{ij} C^j$$

The metric satisfies:
$$g_{ik} g^{kj} = \delta_i^j$$

Where $\delta_i^j$ is the Kronecker delta. This relationship holds at each point $p$ and time $t$, even as the metric evolves.

---

#### **2.3.3 Covariant Derivatives**

The covariant derivative $\nabla_i$ accounts for the curved geometry of the semantic manifold:

$$\nabla_i C_j = \partial_i C_j - \Gamma^k_{ij} C_k$$
$$\nabla_i C^j = \partial_i C^j + \Gamma^j_{ik} C^k$$

Where $\Gamma^k_{ij}$ are the Christoffel symbols:

$$\Gamma^k_{ij} = \frac{1}{2} g^{kl} \left( \partial_i g_{jl} + \partial_j g_{il} - \partial_l g_{ij} \right)$$

Covariant derivatives keep the tensor equations coordinate-independent across the curved semantic manifold.

---

#### **2.3.4 Functional Derivatives**

When working with the Lagrangian and action principles, functional derivatives are used, defined as:

$$\frac{\delta \mathcal{L}}{\delta C_i(p)} = \lim_{\epsilon \to 0} \frac{\mathcal{L}[C_i + \epsilon \delta_p C_i] - \mathcal{L}[C_i]}{\epsilon}$$

Where $\delta_p C_i$ represents a variation localized at point $p$. This is distinct from the partial derivative $\frac{\partial \mathcal{L}}{\partial C_i}$, which applies to the Lagrangian density as a function rather than a functional.

In discrete implementations, the functional derivative becomes:

$$\frac{\delta \mathcal{L}}{\delta C_i(p)} \approx \frac{\partial \mathcal{L}}{\partial C_i(p)} - \sum_j \nabla_j \left( \frac{\partial \mathcal{L}}{\partial (\nabla_j C_i(p))} \right)$$

This formulation properly accounts for both local and gradient terms in the Lagrangian.

---

#### **2.3.5 Tensor Symmetries**

When tensors possess symmetries, they are explicitly noted:

- Symmetric tensors: $T_{ij} = T_{ji}$ (e.g., the metric tensor $g_{ij}$)
- Antisymmetric tensors: $A_{ij} = -A_{ji}$
- Partially symmetric tensors: Symmetry only in specific index groups

These symmetries constrain the independent components and affect how contractions and operations are performed.

---

#### **2.3.6 Integration Measures**

Integrals over the semantic manifold incorporate the metric-dependent volume element:

$$\int_{\mathcal{M}} f(p) \, dV_p = \int_{\mathcal{M}} f(p) \sqrt{|\det(g_{ij})|} \, d^n p$$

This approach preserves coordinate independence of integrated quantities and properly reflects the curved geometry of semantic space.

---

#### **2.3.7 Tensor Density Weights**

Some quantities (like the constraint density $\rho$) behave as tensor densities rather than pure tensors:

$$\rho(p,t) = \frac{1}{\det(g_{ij})}$$

When integrating such densities, the appropriate transformation rules must be applied to maintain coordinate invariance.

---

#### **2.3.8 Fundamental and Derived Field Relationships**

For theoretical consistency, the relationship between fundamental and derived fields must be explicitly defined:

**Semantic Field vs. Coherence Field**:
- The semantic field $\psi_i(p,t)$ represents the fundamental state variables of the system—raw semantic content at each point
- The coherence field $C_i(p,t)$ is a derived field that measures the self-consistency of semantic patterns:
$$C_i(p,t) = \mathcal{F}_i[\psi](p,t) = \int_{\mathcal{N}(p)} K_{ij}(p,q) \psi_j(q,t) \, dq$$

Where:
- $\mathcal{F}_i$ is the coherence functional operator
- $K_{ij}(p,q)$ is a non-local kernel measuring semantic alignment between points $p$ and $q$
- $\mathcal{N}(p)$ is a neighborhood around point $p$

This relationship allows derivatives of $C$ to be expressed with respect to $\psi$:
$$\frac{\partial C_k(p,t)}{\partial \psi_i(q)} = K_{ki}(p,q)$$

And second derivatives as used in the recursive coupling tensor:
$$\frac{\partial^2 C_k(p,t)}{\partial \psi_i(p') \partial \psi_j(q')} = \frac{\partial K_{ki}(p,p')}{\partial \psi_j(q')}$$

While the action principle could be formulated directly in terms of $\psi_i$, using $C_i$ as the primary dynamical variable provides a more direct connection to semantic coherence, which is the central observable of interest. The Lagrangian is thus expressed in terms of $C_i$ with the understanding that it is functionally dependent on the underlying semantic field $\psi_i$.

For computational implementations, the distinction between $\psi_i$ and $C_i$ becomes particularly important when:
1. Initializing field configurations
2. Interpreting field evolution
3. Calculating recursive properties that depend on derivatives with respect to $\psi_i$

In simulation contexts, both fields are typically tracked simultaneously, with $\psi_i$ evolving according to its own dynamics and $C_i$ updated according to the functional relationship above.

---

#### **2.3.9 Vector Fields and Derived Scalar Measures**

To maintain consistent tensor properties throughout RFT, care must be taken when using vector fields in contexts requiring scalar values:

**Coherence Field Scalar Measures**:  
The coherence field $C_i(p,t)$ is fundamentally a vector field (rank-1 tensor), but several functions in the framework require scalar measures derived from it:

$$C_{mag}(p,t) = \sqrt{g^{ij}(p,t) C_i(p,t) C_j(p,t)}$$

This scalar magnitude measure quantifies the total coherence strength independent of direction. Additionally, a normalized coherence projection may be defined:

$$C_{proj}(p,t) = \frac{C_i(p,t) \cdot v^i(p,t)}{|v(p,t)|}$$

Where $v^i(p,t)$ is a local reference direction (often the semantic velocity field).

**Usage in Scalar Functions and Thresholds**:  
All potential functions and thresholds use these scalar measures rather than the vector field directly:

- Attractor potential: $V(C) := V(C_{mag})$
- Autopoietic potential: $\Phi(C) := \Phi(C_{mag})$
- Thresholds: $C_{mag} > C_{threshold}$

**Scalar-to-Vector Influences**:  
When scalar functions influence vector dynamics, the effect is distributed using tensor promotion mechanisms:

$$\frac{\partial \Phi(C_{mag})}{\partial C_i} = \frac{\partial \Phi}{\partial C_{mag}} \cdot \frac{\partial C_{mag}}{\partial C_i} = \frac{\partial \Phi}{\partial C_{mag}} \cdot \frac{g^{ij}C_j}{C_{mag}}$$

This allows gradients of scalar potentials to shape vector field dynamics in a way that does not depend on the choice of coordinates.

All equations in RFT should be interpreted with this convention unless explicitly stated otherwise.

---

#### **2.3.10 Status of Recursive Coupling Tensor $R_{ijk}$**

The recursive coupling tensor $R_{ijk}(p,q,t)$ requires precise characterization to avoid mathematical inconsistencies:

**Hybrid Field Status**:  
$R_{ijk}$ has a dual nature in the framework:

1. **Measurement Interpretation**: The expression in Section 2.1
$$R_{ijk}(p, q, t) = \frac{\partial^2 C_k(p,t)}{\partial \psi_i(p) \partial \psi_j(q)}$$
provides a *measurement interpretation* or *operational definition* of $R_{ijk}$—that is, how recursive coupling can be detected and measured through its effects on the coherence field.

2. **Independent Dynamical Field**: For the purposes of time evolution, $R_{ijk}$ is treated as an independent field governed by:
$$\frac{dR_{ijk}(p,q,t)}{dt} = \Phi(C_{mag}(p,t)) \cdot \chi_{ijk}(p,q,t)$$

**Resolution of Apparent Contradiction**:  
This dual perspective is reconciled by imposing a *consistency requirement*:

$$\frac{d}{dt}\left(\frac{\partial^2 C_k(p,t)}{\partial \psi_i(p) \partial \psi_j(q)}\right) = \Phi(C_{mag}(p,t)) \cdot \chi_{ijk}(p,q,t)$$

The dynamics of $C_k$ and $\psi_i$ must satisfy this constraint. In practice, the evolution of $\psi_i$ includes terms that maintain this relationship. Consistency is achieved through the coupled field system, rather than by treating $R_{ijk}$ as strictly derived.

**Lagrangian Treatment**:  
In the Lagrangian formulation, $R_{ijk}$ appears directly only through the humility operator $\mathcal{H}[R]$. Variation of the action with respect to $C_i$ incorporates the chain-rule effect through $\psi_i$, which suffices to capture the coupling relationship. This approach avoids the need to vary $R_{ijk}$ independently, while still preserving the physical interpretation of recursive coupling.

---

<small>Next: [Semantic Manifold and Metric Geometry](/math/03-semantic-manifold/)</small>
