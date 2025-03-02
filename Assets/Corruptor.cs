using UnityEngine;
using Klak.TestTools;

public sealed class Corruptor : MonoBehaviour
{
    [SerializeField] ImageSource _source = null;
    [SerializeField] RenderTexture _output = null;

    [SerializeField, HideInInspector] Material _material = null;

    void LateUpdate()
    {
        Graphics.Blit(_source.AsTexture, _output, _material);
    }
}
