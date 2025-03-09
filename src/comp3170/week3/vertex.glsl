#version 410

// Input vertex attributes
in vec4 a_position;   // vertex position as a homogeneous vector
in vec3 a_colour;     // vertex colour RGB

// Output to the fragment shader
out vec3 v_colour;    // pass the color to the fragment shader

// Uniform matrix for model transformation
uniform mat4 u_model; // model matrix to transform the position

void main() {
    // Apply the model matrix to transform the vertex position
    gl_Position = u_model * a_position;

    // Pass the color to the fragment shader
    v_colour = a_colour;
}

