#ifdef SHADER_VARIABLES_INCLUDE_CB
    #include "Assets/Pipeline/com.unity.render-pipelines.high-definition/Runtime/Lighting/ScreenSpaceLighting/ShaderVariablesScreenSpaceLighting.cs.hlsl"
#else
    TEXTURE2D_X(_AmbientOcclusionTexture);
    TEXTURE2D_X(_CameraMotionVectorsTexture);
    TEXTURE2D_X(_SsrLightingTexture);
#endif
