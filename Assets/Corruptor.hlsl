#include "Packages/jp.keijiro.noiseshader/Shader/Noise1D.hlsl"

void CorruptorMain_float
  (UnityTexture2D Source,
   float2 UV,
   UnityTexture3D LUT,
   float Distortion,
   out float3 Output)
{
    float2 p = (UV - 0.5) * 2;
    float scale = 1 - Distortion * (1 - dot(p, p));
    UV = p * scale * 0.5 + 0.5;

    float3 color = LinearToSRGB(tex2D(Source, UV).rgb);

    color = tex3D(LUT, color).rgb;

    Output = SRGBToLinear(color);
}
