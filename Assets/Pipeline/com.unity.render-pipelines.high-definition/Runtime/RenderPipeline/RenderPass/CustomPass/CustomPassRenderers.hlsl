#ifndef CUSTOM_PASS_RENDERERS
#define CUSTOM_PASS_RENDERERS

#define SHADERPASS SHADERPASS_FORWARD_UNLIT

//-------------------------------------------------------------------------------------
// Define
//-------------------------------------------------------------------------------------

#include "Assets/Pipeline/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/UnlitProperties.hlsl"

#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/VaryingMesh.hlsl"

#include "Assets/Pipeline/com.unity.render-pipelines.core/ShaderLibrary/Sampling/SampleUVMapping.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
#include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"

float _CustomPassInjectionPoint;
float _FadeValue;

#endif // CUSTOM_PASS_RENDERERS