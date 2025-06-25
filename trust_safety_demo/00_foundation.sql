-- Foundation: Core Schema and Data Structures
-- Schema definitions and base tables for semantic field analysis
-- 
-- Implements:
--   - Manifold point representation with geometric properties
--   - Recursive coupling tensors for cross-conversation analysis
--   - Wisdom field regulatory mechanisms

-- Required PostgreSQL extensions
CREATE EXTENSION IF NOT EXISTS vector;
CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE SCHEMA IF NOT EXISTS rft_trust_safety;

-- Core Tables

-- Semantic manifold points
CREATE TABLE rft_trust_safety.manifold_points (
    id UUID PRIMARY KEY,
    conversation_id UUID,
    user_fingerprint TEXT,
    creation_timestamp TIMESTAMP WITH TIME ZONE NOT NULL,
    
    -- Semantic field vectors
    semantic_field VECTOR(2000),
    coherence_field VECTOR(2000),
    coherence_magnitude FLOAT,
    
    -- Geometric structures
    metric_tensor FLOAT[],
    metric_determinant FLOAT,
    
    -- Semantic mass components: M = D * ρ * A
    recursive_depth FLOAT,
    constraint_density FLOAT,
    attractor_stability FLOAT,
    semantic_mass FLOAT,
    
    -- Differential geometry
    christoffel_symbols FLOAT[],
    ricci_curvature FLOAT[],
    scalar_curvature FLOAT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Recursive coupling analysis
CREATE TABLE rft_trust_safety.recursive_coupling (
    id UUID PRIMARY KEY,
    point_p UUID NOT NULL REFERENCES rft_trust_safety.manifold_points(id),
    point_q UUID NOT NULL REFERENCES rft_trust_safety.manifold_points(id),
    
    -- Coupling tensors
    coupling_tensor FLOAT[],
    coupling_magnitude FLOAT,
    
    -- Coordination decomposition
    self_coupling FLOAT[],
    hetero_coupling FLOAT[],
    
    -- Temporal dynamics
    evolution_rate FLOAT,
    latent_channels FLOAT[],
    
    computed_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Wisdom field regulatory mechanisms
CREATE TABLE rft_trust_safety.wisdom_field (
    point_id UUID PRIMARY KEY REFERENCES rft_trust_safety.manifold_points(id),
    
    -- Regulation metrics
    wisdom_value FLOAT,
    forecast_sensitivity FLOAT,
    gradient_response FLOAT,
    
    -- Humility operators
    humility_factor FLOAT,
    recursion_regulation FLOAT,
    
    computed_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Utility Functions

-- Semantic mass: M(p,t) = D(p,t) * ρ(p,t) * A(p,t)
CREATE OR REPLACE FUNCTION rft_trust_safety.compute_semantic_mass(
    recursive_depth FLOAT,
    metric_determinant FLOAT,
    attractor_stability FLOAT
) RETURNS FLOAT LANGUAGE SQL AS $$
    SELECT 
        recursive_depth * 
        (1.0 / GREATEST(metric_determinant, 1e-10)) *
        attractor_stability
$$;

-- Autopoietic function: Φ(C) = α(C_mag - C_threshold)^β for C >= threshold
CREATE OR REPLACE FUNCTION rft_trust_safety.compute_autopoietic_potential(
    coherence_magnitude FLOAT,
    coherence_threshold FLOAT DEFAULT 0.7,
    alpha FLOAT DEFAULT 1.0,
    beta FLOAT DEFAULT 2.0
) RETURNS FLOAT LANGUAGE SQL AS $$
    SELECT 
        CASE 
            WHEN coherence_magnitude >= coherence_threshold
            THEN alpha * POWER(coherence_magnitude - coherence_threshold, beta)
            ELSE 0.0
        END
$$;

-- Humility operator: H[R] = |R|_F * exp(-k(|R|_F - R_optimal))
CREATE OR REPLACE FUNCTION rft_trust_safety.compute_humility_operator(
    coupling_magnitude FLOAT,
    optimal_recursion FLOAT DEFAULT 0.5,
    decay_constant FLOAT DEFAULT 2.0
) RETURNS FLOAT LANGUAGE SQL AS $$
    SELECT 
        coupling_magnitude * 
        EXP(-decay_constant * (coupling_magnitude - optimal_recursion))
$$; 