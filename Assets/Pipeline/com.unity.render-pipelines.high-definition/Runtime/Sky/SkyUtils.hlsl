#ifndef __SKYUTILS_H__
#define __SKYUTILS_H__

#include "Assets/Pipeline/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"

float4x4 _PixelCoordToViewDirWS;

#if defined(USING_STEREO_MATRICES)
    #define _PixelCoordToViewDirWS  _XRPixelCoordToViewDirWS[unity_StereoEyeIndex]
#endif

// Generates a world-space view direction for sky and atmospheric effects
float3 GetSkyViewDirWS(float2 positionCS)
{
    float4 viewDirWS = mul(float4(positionCS.xy + _TaaJitterStrength.xy, 1.0f, 1.0f), _PixelCoordToViewDirWS);
    return normalize(viewDirWS.xyz);
}

#endif // __SKYUTILS_H__
