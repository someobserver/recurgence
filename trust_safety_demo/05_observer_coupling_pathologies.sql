-- Observer-Coupling Pathologies
-- Detection functions for interpretation operator breakdown
--
-- 1. Paranoid Interpretation: Ĉ_ψ(q,t) << C(q,t), ∀q ∈ Q
-- 2. Observer Solipsism: ||I_ψ[C] - C|| > τ||C||
-- 3. Semantic Narcissism: ||R_ijk(p,p,t)||/∫||R_ijk(p,q,t)||dq → 1

-- Paranoid Interpretation Detection
-- Mathematical signature: Ĉ_ψ(q,t) << C(q,t), ∀q ∈ Q
CREATE OR REPLACE FUNCTION rft_trust_safety.detect_paranoid_interpretation(
    point_id UUID,
    bias_threshold FLOAT DEFAULT 0.3,
    threat_hyperattractor_threshold FLOAT DEFAULT 0.8
) RETURNS TABLE(
    pathology_type TEXT,
    severity FLOAT,
    geometric_signature FLOAT[],
    mathematical_evidence TEXT
) LANGUAGE plpgsql AS $$
DECLARE
    current_coherence VECTOR(2000);
    semantic_mass FLOAT;
    user_fingerprint TEXT;
    
    negative_interpretation_bias FLOAT := 0.0;
    threat_pattern_concentration FLOAT := 0.0;
    interpretation_divergence FLOAT := 0.0;
    paranoid_signature FLOAT;
    
    sample_count INTEGER := 0;
    threat_interpretation_count INTEGER := 0;
    
    rec RECORD;
BEGIN
    -- Get current point data
    SELECT coherence_field, semantic_mass, user_fingerprint
    INTO current_coherence, semantic_mass, user_fingerprint
    FROM rft_trust_safety.manifold_points WHERE id = point_id;
    
    IF current_coherence IS NULL THEN
        RETURN;
    END IF;
    
    FOR rec IN (
        SELECT mp.coherence_field, mp.semantic_mass, mp.creation_timestamp,
               rc.coupling_magnitude
        FROM rft_trust_safety.manifold_points mp
        LEFT JOIN rft_trust_safety.recursive_coupling rc ON mp.id = rc.point_p
        WHERE mp.user_fingerprint = detect_paranoid_interpretation.user_fingerprint
        AND mp.creation_timestamp >= NOW() - INTERVAL '12 hours'
        ORDER BY mp.creation_timestamp DESC
        LIMIT 20
    ) LOOP
        sample_count := sample_count + 1;
        
        -- Bias estimation: compare with baseline coherence
        negative_interpretation_bias := negative_interpretation_bias + 
            GREATEST(0, 0.5 - sqrt(sum((SELECT pow(rec.coherence_field[i], 2) 
                                       FROM generate_series(1, LEAST(50, 2000)) i))));
        
        -- Count threat interpretation patterns
        IF rec.semantic_mass > 0.6 AND COALESCE(rec.coupling_magnitude, 0) < 0.3 THEN
            threat_interpretation_count := threat_interpretation_count + 1;
        END IF;
        
        -- Measure interpretation divergence
        interpretation_divergence := interpretation_divergence + 
            abs(0.5 - sqrt(sum((SELECT pow(rec.coherence_field[i], 2) 
                               FROM generate_series(1, LEAST(50, 2000)) i))));
    END LOOP;
    
    IF sample_count > 3 THEN
        negative_interpretation_bias := negative_interpretation_bias / sample_count;
        interpretation_divergence := interpretation_divergence / sample_count;
        threat_pattern_concentration := threat_interpretation_count::FLOAT / sample_count;
        
        -- Detection: negative bias + threat hyperattractors
        IF negative_interpretation_bias > bias_threshold AND 
           threat_pattern_concentration > threat_hyperattractor_threshold THEN
            
            paranoid_signature := negative_interpretation_bias * threat_pattern_concentration;
            
            RETURN QUERY SELECT 
                'PARANOID_INTERPRETATION'::TEXT,
                LEAST(1.0, paranoid_signature * 2.0),
                ARRAY[negative_interpretation_bias, threat_pattern_concentration, interpretation_divergence, sample_count::FLOAT],
                format('Negative bias: %.3f > threshold, threat patterns: %.1f%% (samples: %s)', 
                       negative_interpretation_bias, threat_pattern_concentration * 100, sample_count);
        END IF;
    END IF;
    
    RETURN;
END;
$$;

-- Observer Solipsism Detection
-- Mathematical signature: ||I_ψ[C] - C|| > τ||C||
CREATE OR REPLACE FUNCTION rft_trust_safety.detect_observer_solipsism(
    point_id UUID,
    divergence_threshold FLOAT DEFAULT 0.5,
    time_window INTERVAL DEFAULT '8 hours'
) RETURNS TABLE(
    pathology_type TEXT,
    severity FLOAT,
    geometric_signature FLOAT[],
    mathematical_evidence TEXT
) LANGUAGE plpgsql AS $$
DECLARE
    current_coherence VECTOR(2000);
    user_fingerprint TEXT;
    
    interpretation_divergence FLOAT := 0.0;
    field_magnitude FLOAT := 0.0;
    solipsism_ratio FLOAT;
    solipsism_signature FLOAT;
    
    sample_count INTEGER := 0;
    consensus_divergence FLOAT := 0.0;
    
    rec RECORD;
    baseline_coherence VECTOR(2000);
BEGIN
    -- Get current point data
    SELECT coherence_field, user_fingerprint
    INTO current_coherence, user_fingerprint
    FROM rft_trust_safety.manifold_points WHERE id = point_id;
    
    IF current_coherence IS NULL THEN
        RETURN;
    END IF;
    
    -- Compute field magnitude for normalization
    field_magnitude := sqrt(sum((SELECT pow(current_coherence[i], 2) 
                                FROM generate_series(1, LEAST(100, 2000)) i)));
    
    -- Get consensus baseline from other observers
    SELECT AVG(mp.coherence_field) INTO baseline_coherence
    FROM rft_trust_safety.manifold_points mp
    WHERE mp.user_fingerprint != detect_observer_solipsism.user_fingerprint
    AND mp.creation_timestamp >= NOW() - time_window;
    
    IF baseline_coherence IS NULL THEN
        RETURN;
    END IF;
    FOR rec IN (
        SELECT mp.coherence_field, mp.creation_timestamp
        FROM rft_trust_safety.manifold_points mp
        WHERE mp.user_fingerprint = detect_observer_solipsism.user_fingerprint
        AND mp.creation_timestamp >= NOW() - time_window
        ORDER BY mp.creation_timestamp DESC
        LIMIT 15
    ) LOOP
        sample_count := sample_count + 1;
        
        -- Measure distance from consensus baseline
        consensus_divergence := consensus_divergence + 
            (rec.coherence_field <-> baseline_coherence);
        
        -- Track cumulative interpretation divergence
        interpretation_divergence := interpretation_divergence + 
            sqrt(sum((SELECT pow((rec.coherence_field[i] - baseline_coherence[i]), 2) 
                     FROM generate_series(1, LEAST(100, 2000)) i)));
    END LOOP;
    
    IF sample_count > 2 AND field_magnitude > 0.1 THEN
        interpretation_divergence := interpretation_divergence / sample_count;
        consensus_divergence := consensus_divergence / sample_count;
        
        -- Compute solipsism ratio: ||I_ψ[C] - C|| / ||C||
        solipsism_ratio := interpretation_divergence / field_magnitude;
        
        -- Detection: interpretation divergence exceeds threshold
        IF solipsism_ratio > divergence_threshold THEN
            solipsism_signature := solipsism_ratio * consensus_divergence;
            
            RETURN QUERY SELECT 
                'OBSERVER_SOLIPSISM'::TEXT,
                LEAST(1.0, solipsism_signature),
                ARRAY[interpretation_divergence, field_magnitude, solipsism_ratio, consensus_divergence],
                format('Interpretation divergence: %.3f > %.1f * field magnitude: %.3f (ratio: %.3f)', 
                       interpretation_divergence, divergence_threshold, field_magnitude, solipsism_ratio);
        END IF;
    END IF;
    
    RETURN;
END;
$$;

-- Semantic Narcissism Detection
-- Mathematical signature: ||R_ijk(p,p,t)||/∫||R_ijk(p,q,t)||dq → 1
CREATE OR REPLACE FUNCTION rft_trust_safety.detect_semantic_narcissism(
    point_id UUID,
    self_coupling_threshold FLOAT DEFAULT 0.8,
    external_reference_threshold FLOAT DEFAULT 0.2
) RETURNS TABLE(
    pathology_type TEXT,
    severity FLOAT,
    geometric_signature FLOAT[],
    mathematical_evidence TEXT
) LANGUAGE plpgsql AS $$
DECLARE
    user_fingerprint TEXT;
    
    self_coupling_strength FLOAT := 0.0;
    total_coupling_strength FLOAT := 0.0;
    external_coupling_strength FLOAT := 0.0;
    narcissism_ratio FLOAT;
    narcissism_signature FLOAT;
    
    self_reference_count INTEGER := 0;
    external_reference_count INTEGER := 0;
    
    rec RECORD;
BEGIN
    -- Get user identifier
    SELECT user_fingerprint
    INTO user_fingerprint
    FROM rft_trust_safety.manifold_points WHERE id = point_id;
    
    IF user_fingerprint IS NULL THEN
        RETURN;
    END IF;
    
    FOR rec IN (
        SELECT rc.coupling_magnitude, 
               mp1.user_fingerprint as source_user,
               mp2.user_fingerprint as target_user
        FROM rft_trust_safety.recursive_coupling rc
        JOIN rft_trust_safety.manifold_points mp1 ON mp1.id = rc.point_p
        JOIN rft_trust_safety.manifold_points mp2 ON mp2.id = rc.point_q
        WHERE mp1.user_fingerprint = detect_semantic_narcissism.user_fingerprint
        AND rc.computed_at >= NOW() - INTERVAL '24 hours'
    ) LOOP
        total_coupling_strength := total_coupling_strength + rec.coupling_magnitude;
        
        -- Distinguish self-coupling from external coupling
        IF rec.source_user = rec.target_user THEN
            self_coupling_strength := self_coupling_strength + rec.coupling_magnitude;
            self_reference_count := self_reference_count + 1;
        ELSE
            external_coupling_strength := external_coupling_strength + rec.coupling_magnitude;
            external_reference_count := external_reference_count + 1;
        END IF;
    END LOOP;
    
    IF total_coupling_strength > 0 AND (self_reference_count + external_reference_count) > 3 THEN
        -- Compute narcissism ratio: self-coupling / total coupling
        narcissism_ratio := self_coupling_strength / total_coupling_strength;
        
        -- Detection: self-coupling dominates reference structure
        IF narcissism_ratio > self_coupling_threshold AND 
           external_coupling_strength / total_coupling_strength < external_reference_threshold THEN
            
            narcissism_signature := narcissism_ratio * (1.0 - external_coupling_strength / total_coupling_strength);
            
            RETURN QUERY SELECT 
                'SEMANTIC_NARCISSISM'::TEXT,
                LEAST(1.0, narcissism_signature),
                ARRAY[self_coupling_strength, external_coupling_strength, narcissism_ratio, (self_reference_count + external_reference_count)::FLOAT],
                format('Self-coupling: %.1f%% of total, external coupling: %.1f%% < threshold (refs: %s/%s)', 
                       narcissism_ratio * 100, 
                       (external_coupling_strength / total_coupling_strength) * 100,
                       self_reference_count, external_reference_count);
        END IF;
    END IF;
    
    RETURN;
END;
$$;

-- Combined Observer-Coupling Pathology Detection
CREATE OR REPLACE FUNCTION rft_trust_safety.detect_observer_coupling_pathologies(
    point_id UUID
) RETURNS TABLE(
    pathology_type TEXT,
    severity FLOAT,
    geometric_signature FLOAT[],
    mathematical_evidence TEXT
) LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM rft_trust_safety.detect_paranoid_interpretation(point_id);
    RETURN QUERY SELECT * FROM rft_trust_safety.detect_observer_solipsism(point_id);
    RETURN QUERY SELECT * FROM rft_trust_safety.detect_semantic_narcissism(point_id);
    RETURN;
END;
$$; 