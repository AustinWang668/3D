#version 330 core
layout (location = 0) in vec3 aPos;       // cube vertex (unit cube centered at origin)
layout (location = 1) in mat4 iModel;     // per-instance model matrix
layout (location = 5) in vec3 iColor;     // per-instance color

uniform mat4 uView;
uniform mat4 uProj;

out vec3 vColor;

void main() {
    gl_Position = uProj * uView * iModel * vec4(aPos, 1.0);
    vColor = iColor;
}
