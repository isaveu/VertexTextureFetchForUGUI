﻿Shader "Unlit/VertexColor"
{
	Properties
	{
	}
	SubShader
	{
		Tags
		{
			"Queue" = "Background"
			"IgnoreProjector" = "True"
			"RenderType" = "Opaque"
			"PreviewType" = "Plane"
		}

		LOD 100
		Cull Off
		Lighting Off
		ZWrite Off

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				half4 vertex : POSITION;
				fixed4 color : COLOR;
			};

			struct v2f
			{
				half4 vertex : SV_POSITION;
				fixed4 color : COLOR;
			};

			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = v.vertex;
				o.color = v.color;
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				return i.color;
			}
			ENDCG
		}
	}
}
