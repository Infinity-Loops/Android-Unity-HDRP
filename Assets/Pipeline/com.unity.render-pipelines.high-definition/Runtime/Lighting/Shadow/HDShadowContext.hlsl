#ifndef HD_SHADOW_CONTEXT_HLSL
#define HD_SHADOW_CONTEXT_HLSL

#include "Assets/Pipeline/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/Lighting/Shadow/HDShadowManager.cs.hlsl"

struct HDShadowContext
{
    StructuredBuffer<HDShadowData>  shadowDatas;
    HDDirectionalShadowData         directionalShadowData;
};

// HD shadow sampling bindings
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/Lighting/Shadow/HDShadowSampling.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/Lighting/Shadow/HDShadowAlgorithms.hlsl"

TEXTURE2D(_ShadowmapAtlas);
TEXTURE2D(_ShadowmapCascadeAtlas);
TEXTURE2D(_AreaShadowmapAtlas);
TEXTURE2D(_AreaShadowmapMomentAtlas);

StructuredBuffer<HDShadowData>              _HDShadowDatas;
// Only the first element is used since we only support one directional light
StructuredBuffer<HDDirectionalShadowData>   _HDDirectionalShadowData;

HDShadowContext InitShadowContext()
{
    HDShadowContext         sc;

    sc.shadowDatas = _HDShadowDatas;
    sc.directionalShadowData = _HDDirectionalShadowData[0];

    return sc;
}

#endif // HD_SHADOW_CONTEXT_HLSL
