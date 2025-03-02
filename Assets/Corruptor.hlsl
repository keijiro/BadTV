void CorruptorMain_float(UnityTexture2D Source, float2 UV, out float3 Output)
{
    float2 grid = UV * float2(300, 100) + float2(0, _Time.y * 200);

    float hoffs = 0;

    float3 color = LinearToSRGB(tex2D(Source, UV + float2(0, hoffs)).rgb);

    float2 wave = abs(sin(grid * PI));

    color *= wave.x * wave.y;

    Output = SRGBToLinear(color);
}
