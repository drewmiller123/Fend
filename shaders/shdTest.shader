//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
//  shColorReplaceRange
//
//      Replaces a range of colors with a second range of colors.
//      Color ranges are given by two endpoints in RGB colorspace.
//      Colors in the input range are linearly mapped to the output range.
//
//      colorIn0,1      define input color range
//      colorOut0,1     define output color range
//      colorPhase      0.0 normally, the interval [0,1.0] cycles the output for animation
//      colorRepeat     1.0 normally, other values repeat the output range by that many times
//      colorReflect    0.0 for sawtooth wave output, 1.0 for triangle wave output
//      colorTolerance  1/255 normally, greater values match colors more liberally
//      colorPerturb    0.0 to leave output range pure, other values add color matching error
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 colorIn0;
uniform vec4 colorIn1;
uniform vec4 colorOut0;
uniform vec4 colorOut1;
uniform float colorPhase;
uniform float colorRepeat;
uniform float colorReflect;
uniform float colorTolerance;
uniform float colorPerturb;

void main()
{
    vec4 colorPixel = texture2D( gm_BaseTexture, v_vTexcoord );
    vec4 delta = colorIn1 - colorIn0;
    float t = clamp( dot( colorPixel - colorIn0, delta ) / dot(delta, delta), 0.0, 0.99999 );
    vec4 colorNearest = colorIn0 + delta * t;
    vec4 result = mix(
                    colorPixel,
                    mix(
                        colorOut0, 
                        colorOut1, 
                        abs( (1.0+colorReflect) * fract(colorRepeat * t + colorPhase) - colorReflect )
                        )
                        + colorPerturb * (colorPixel - colorNearest),
                    float( distance( colorPixel, colorNearest ) < colorTolerance )
                    );
                    
    gl_FragColor = v_vColour * result;
}
