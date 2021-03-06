#include "Assets/Pipeline/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"

#if IS_TRANSPARENT_PARTICLE && !HDRP_LIT // Fog for opaque is handled in a dedicated pass
#define USE_FOG 1
#define VFX_NEEDS_POSWS_INTERPOLATOR 1
#endif

#if HDRP_MATERIAL_TYPE_SIMPLELIT
#define HDRP_MATERIAL_TYPE_STANDARD 1
#define HDRP_MATERIAL_TYPE_SIMPLE 1
#elif HDRP_MATERIAL_TYPE_SIMPLELIT_TRANSLUCENT
#define HDRP_MATERIAL_TYPE_TRANSLUCENT 1
#define HDRP_MATERIAL_TYPE_SIMPLE 1
#endif

#if IS_TRANSPARENT_PARTICLE
#define _SURFACE_TYPE_TRANSPARENT
#endif
