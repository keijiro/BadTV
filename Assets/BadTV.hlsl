void BadTVMain_float(UnityTexture2D Texture, float2 UV, out float3 Output)
{
    UV.x = (UV.x - 0.5) / 3 * 4 * 380 / 640 + 0.5;

    float sc = UV.y * 300 * PI;

    float wh = (sin(sc) + 1) / 2;

    Output = tex2D(Texture, UV).rgb * wh;
}
