#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec3 ourColor;

void main()
{
    float newX = aPos.x;
    float newY = aPos.y;
    gl_Position = vec4(newX, newY, aPos.z, 1.0);
    ourColor = aPos;
}