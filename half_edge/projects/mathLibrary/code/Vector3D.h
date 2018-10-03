#pragma once

#include <iostream>
#include <array>
#include <tuple>
using namespace std;

class Vector
{
public:
	Vector(float x, float y, float z, float i)
	{
		vectorValue[0] = x;
		vectorValue[1] = y;
		vectorValue[2] = z;
		vectorValue[3] = i;
	};
	Vector(float x, float y, float z)
	{
		vectorValue[0] = x;
		vectorValue[1] = y;
		vectorValue[2] = z;
		vectorValue[3] = 1;
	};
	Vector(const Vector& vect)
	{
		vectorValue[0] = vect.vectorValue[0];
		vectorValue[1] = vect.vectorValue[1];
		vectorValue[2] = vect.vectorValue[2];
		vectorValue[3] = vect.vectorValue[3];
	};
	Vector()
	{
		vectorValue[0] = 0;
		vectorValue[1] = 0;
		vectorValue[2] = 0;
		vectorValue[3] = 1;
	};
	Vector(Vector& vect)
	{
		for (int c = 0; c < 4;c++)
		{
			vectorValue[c] = vect.vectorValue[c];
		}
	};
	~Vector()
	{
	};
	void setVector(float x, float y, float z)
	{
		vectorValue[0] = x;
		vectorValue[1] = y;
		vectorValue[2] = z;
		vectorValue[3] = 1;
	};
	void operator=(const Vector vect)
	{
		vectorValue[0] = vect.vectorValue[0];
		vectorValue[1] = vect.vectorValue[1];
		vectorValue[2] = vect.vectorValue[2];
		vectorValue[3] = vect.vectorValue[3];
	}

	Vector operator+(const Vector& vect) const
	{
		Vector newVect = Vector(this->vectorValue[0] + vect.vectorValue[0], this->vectorValue[1] + vect.vectorValue[1], this->vectorValue[2] + vect.vectorValue[2], 1.0F);
		return newVect;
	};
	Vector operator-(const Vector& vect) const
	{
		Vector newVect = Vector(this->vectorValue[0] - vect.vectorValue[0], this->vectorValue[1] - vect.vectorValue[1], this->vectorValue[2] - vect.vectorValue[2], 1.0F);
		return newVect;
	};
	Vector operator*(float scale)
	{
		Vector newVect = Vector(this->vectorValue[0] * scale, this->vectorValue[1] * scale, this->vectorValue[2] * scale, this->vectorValue[3]);
		return newVect;
	};
	float operator*(const Vector& vect) const /** Dot product */
	{
		return vectorValue[0] * vect.vectorValue[0] + vectorValue[1] * vect.vectorValue[1] + vectorValue[2] * vect.vectorValue[2] + vectorValue[3] * vect.vectorValue[3];
	};
	Vector operator%(const Vector& vect) const /** cross product */
	{
		return Vector(vectorValue[1]*vect.vectorValue[2] - vectorValue[2]*vect.vectorValue[1],
					 vectorValue[2]*vect.vectorValue[0] - vectorValue[0]*vect.vectorValue[2],
					 vectorValue[0]*vect.vectorValue[1] - vectorValue[1]*vect.vectorValue[0]);
	};
	float vectorLength() const
	{
		return sqrt(vectorValue[0] * vectorValue[0] + vectorValue[1] * vectorValue[1] + vectorValue[2] * vectorValue[2]);
	};
	Vector vectorNormalize() const
	{
		float x, y, z;
		float vLenght = this->vectorLength();
		x = vectorValue[0] / vLenght;
		y = vectorValue[1] / vLenght;
		z = vectorValue[2] / vLenght;
		return Vector(x, y, z, 1.0F);
	};
	float getXValue() const
	{
		return vectorValue[0];
	};
	float getYValue() const
	{
		return vectorValue[1];
	};
	float getZValeu() const
	{
		return vectorValue[2];
	};

private:
	float vectorValue[4];
};