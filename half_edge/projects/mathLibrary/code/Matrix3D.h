#pragma once

#include <math.h>
#include <iostream>
#include <array>
#include <tuple>
#include "Vector3D.h"

using namespace std;

class Matrix
{
public:
	inline Matrix(float x0, float x1, float x2, float x3, float y0, float y1, float y2, float y3, float z0, float z1, float z2, float z3, float i0, float i1, float i2, float i3)
	{
		matrixValue[0] = x0;
		matrixValue[1] = x1;
		matrixValue[2] = x2;
		matrixValue[3] = x3;

		matrixValue[4] = y0;
		matrixValue[5] = y1;
		matrixValue[6] = y2;
		matrixValue[7] = y3;

		matrixValue[8] = z0;
		matrixValue[9] = z1;
		matrixValue[10] = z2;
		matrixValue[11] = z3;

		matrixValue[12] = i0;
		matrixValue[13] = i1;
		matrixValue[14] = i2;
		matrixValue[15] = i3;
	};
	Matrix(float x0, float x1, float x2, float y0, float y1, float y2, float z0, float z1, float z2)
	{
		matrixValue[0] = x0;
		matrixValue[1] = x1;
		matrixValue[2] = x2;
		matrixValue[3] = 0;

		matrixValue[4] = y0;
		matrixValue[5] = y1;
		matrixValue[6] = y2;
		matrixValue[7] = 0;

		matrixValue[8] = z0;
		matrixValue[9] = z1;
		matrixValue[10] = z2;
		matrixValue[11] = 0;

		matrixValue[12] = 0;
		matrixValue[13] = 0;
		matrixValue[14] = 0;
		matrixValue[15] = 1;
	};
	Matrix()
	{
		matrixValue[0] = 1;
		matrixValue[1] = 0;
		matrixValue[2] = 0;
		matrixValue[3] = 0;

		matrixValue[4] = 0;
		matrixValue[5] = 1;
		matrixValue[6] = 0;
		matrixValue[7] = 0;

		matrixValue[8] = 0;
		matrixValue[9] = 0;
		matrixValue[10] = 1;
		matrixValue[11] = 0;

		matrixValue[12] = 0;
		matrixValue[13] = 0;
		matrixValue[14] = 0;
		matrixValue[15] = 1;
	};
	Matrix(Matrix& matrix) 
	{
		for (int c = 0; c < 16; c++)
		{
			matrixValue[c] = matrix.matrixValue[c];
		}
	};
	~Matrix() {};
	void setA(int index, float value)
	{
		if (index >= 0 && index < 16)
		{
			matrixValue[index] = value;
		}
	}
	void addAToB(int index, float value)
	{
		if (index >= 0 && index < 16)
		{
			matrixValue[index] =+ value;
		}
	}
	void operator=(const Matrix matrix)
	{
		for (int c = 0; c < 16; c++)
		{
			matrixValue[c] = matrix.matrixValue[c];
		}
	}
	Matrix operator*(const float scale) const 
	{
		return Matrix(
			matrixValue[0] * scale, matrixValue[1] * scale, matrixValue[2] * scale, matrixValue[3] * scale,
			matrixValue[4] * scale, matrixValue[5] * scale, matrixValue[6] * scale, matrixValue[7] * scale,
			matrixValue[8] * scale, matrixValue[9] * scale, matrixValue[10] * scale, matrixValue[11] * scale,
			matrixValue[12] * scale, matrixValue[13] * scale, matrixValue[14] * scale, matrixValue[15] * scale
		);
	};
	Matrix operator*(const Matrix& matrix) const  
	{
		return Matrix
		(
		matrixValue[0] * matrix.matrixValue[0]	+	matrixValue[1] * matrix.matrixValue[4]	+	matrixValue[2] * matrix.matrixValue[8]		+	matrixValue[3] * matrix.matrixValue[12],
		matrixValue[0] * matrix.matrixValue[1]	+	matrixValue[1] * matrix.matrixValue[5]	+	matrixValue[2] * matrix.matrixValue[9]		+	matrixValue[3] * matrix.matrixValue[13],
		matrixValue[0] * matrix.matrixValue[2]	+	matrixValue[1] * matrix.matrixValue[6]	+	matrixValue[2] * matrix.matrixValue[10]		+	matrixValue[3] * matrix.matrixValue[14],
		matrixValue[0] * matrix.matrixValue[3]	+	matrixValue[1] * matrix.matrixValue[7]	+	matrixValue[2] * matrix.matrixValue[11]		+	matrixValue[3] * matrix.matrixValue[15],

		matrixValue[4] * matrix.matrixValue[0]	+	matrixValue[5] * matrix.matrixValue[4]	+	matrixValue[6] * matrix.matrixValue[8]		+	matrixValue[7] * matrix.matrixValue[12],
		matrixValue[4] * matrix.matrixValue[1]	+	matrixValue[5] * matrix.matrixValue[5]	+	matrixValue[6] * matrix.matrixValue[9]		+	matrixValue[7] * matrix.matrixValue[13],
		matrixValue[4] * matrix.matrixValue[2]	+	matrixValue[5] * matrix.matrixValue[6]	+	matrixValue[6] * matrix.matrixValue[10]		+	matrixValue[7] * matrix.matrixValue[14],
		matrixValue[4] * matrix.matrixValue[3]	+	matrixValue[5] * matrix.matrixValue[7]	+	matrixValue[6] * matrix.matrixValue[11]		+	matrixValue[7] * matrix.matrixValue[15],

		matrixValue[8] * matrix.matrixValue[0]	+	matrixValue[9] * matrix.matrixValue[4]	+	matrixValue[10] * matrix.matrixValue[8]		+	matrixValue[11] * matrix.matrixValue[12],
		matrixValue[8] * matrix.matrixValue[1]	+	matrixValue[9] * matrix.matrixValue[5]	+	matrixValue[10] * matrix.matrixValue[9]		+	matrixValue[11] * matrix.matrixValue[13],
		matrixValue[8] * matrix.matrixValue[2]	+	matrixValue[9] * matrix.matrixValue[6]	+	matrixValue[10] * matrix.matrixValue[10]	+	matrixValue[11] * matrix.matrixValue[14],
		matrixValue[8] * matrix.matrixValue[3]	+	matrixValue[9] * matrix.matrixValue[7]	+	matrixValue[10] * matrix.matrixValue[11]	+	matrixValue[11] * matrix.matrixValue[15],

		matrixValue[12] * matrix.matrixValue[0]	+	matrixValue[13] * matrix.matrixValue[4]	+	matrixValue[14] * matrix.matrixValue[8]		+	matrixValue[15] * matrix.matrixValue[12],
		matrixValue[12] * matrix.matrixValue[1]	+	matrixValue[13] * matrix.matrixValue[5]	+	matrixValue[14] * matrix.matrixValue[9]		+	matrixValue[15] * matrix.matrixValue[13],
		matrixValue[12] * matrix.matrixValue[2]	+	matrixValue[13] * matrix.matrixValue[6]	+	matrixValue[14] * matrix.matrixValue[10]	+	matrixValue[15] * matrix.matrixValue[14],
		matrixValue[12] * matrix.matrixValue[3]	+	matrixValue[13] * matrix.matrixValue[7]	+	matrixValue[14] * matrix.matrixValue[11]	+	matrixValue[15] * matrix.matrixValue[15]
		);
	};
	Vector operator*(const Vector& vect) const
	{
		return Vector
		(
		matrixValue[0] * vect.getXValue() + matrixValue[1] * vect.getYValue() + matrixValue[2] * vect.getZValeu(),
		matrixValue[4] * vect.getXValue() + matrixValue[5] * vect.getYValue() + matrixValue[6] * vect.getZValeu(),
		matrixValue[8] * vect.getXValue() + matrixValue[9] * vect.getYValue() + matrixValue[10] * vect.getZValeu()
		);
	};
	float operator[](const int index) const
	{
		return matrixValue[index];
	};
	Matrix transformation(float x, float y, float z)
	{
		return Matrix(	1, 0, 0, x, 
						0, 1, 0, y, 
						0, 0, 1, z, 
						0, 0, 0, 1);
	};
	static Matrix rotationXAxel(const float angle) /** Rotation around X axel*/
	{
		float cosValue, sinValue;
		cosValue = cos(angle);
		sinValue = sin(angle);

		Matrix rotMatrix(	
			1,			0,			0,
			0,			cosValue,	-sinValue,
			0,			sinValue,	cosValue);
		return rotMatrix;
	};
	static Matrix rotationYAxel(const float angle) /** Rotation around Y axel*/
	{
		float cosValue, sinValue;
		cosValue = cos(angle);
		sinValue = sin(angle);

		Matrix rotMatrix(	
			cosValue,	0,			sinValue,
			0,			1,			0,
			-sinValue,	0,			cosValue);
		return rotMatrix;
	}
	static Matrix rotationZAxel(const float angle) /** Rotation around Z axel*/
	{
		float cosValue, sinValue;
		cosValue = cos(angle);
		sinValue = sin(angle);

		Matrix rotMatrix(	
			cosValue,	-sinValue,	0,
			sinValue,	cosValue,	0,
			0,			0,			1);
		return rotMatrix;
	}
	static Matrix roationVectorAxel(const float angle, const Vector vect) /** Rotation around a choicen axel*/
	{
		float cosValue, sinValue, x, y, z; /** only makes the function call onces*/
		cosValue = cos(angle);
		sinValue = sin(angle);
		x = vect.getXValue();
		y = vect.getYValue();
		z = vect.getZValeu();

		Matrix rotMatrix(
			x * x + (1- x * x) * cosValue,			x * y * (1-cosValue) - x * sinValue,		x * z * (1 - cosValue) + y * sinValue,
			x * y * (1 - cosValue) + z * sinValue,	y * y + (1 + y * y) * cosValue,				x * z * (1 - cosValue) - x * sinValue,
			x * z * (1 - cosValue) - y * sinValue,	y * z * (1 - cosValue) + x * sinValue,		z * z + (1 - z * z) * cosValue
		);
		return rotMatrix;
	};
	Matrix transponat() const
	{
		return Matrix(
			matrixValue[0], matrixValue[4], matrixValue[9], matrixValue[12],
			matrixValue[1], matrixValue[5], matrixValue[10], matrixValue[13],
			matrixValue[2], matrixValue[6], matrixValue[11], matrixValue[14],
			matrixValue[3], matrixValue[7], matrixValue[12], matrixValue[15]
		);
	};
	Matrix invers3D() const
	{
		float det =
			matrixValue[0] * matrixValue[5] * matrixValue[10] +
			matrixValue[1] * matrixValue[6] * matrixValue[8] +
			matrixValue[2] * matrixValue[4] * matrixValue[9] -

			matrixValue[0] * matrixValue[6] * matrixValue[9] -
			matrixValue[1] * matrixValue[4] * matrixValue[10] -
			matrixValue[2] * matrixValue[5] * matrixValue[8];
		if (det == 0) /** Checks if there is a invers on that matrix*/
		{
			return Matrix();
		}
		else
		{
			return Matrix(
				matrixValue[5] * matrixValue[10] - matrixValue[6] * matrixValue[9], matrixValue[2] * matrixValue[9] - matrixValue[1] * matrixValue[10], matrixValue[1] * matrixValue[6] - matrixValue[2] * matrixValue[5],
				matrixValue[6] * matrixValue[8] - matrixValue[4] * matrixValue[10], matrixValue[0] * matrixValue[10] - matrixValue[2] * matrixValue[8], matrixValue[2] * matrixValue[4] - matrixValue[0] * matrixValue[6],
				matrixValue[4] * matrixValue[9] - matrixValue[5] * matrixValue[8], matrixValue[1] * matrixValue[8] - matrixValue[0] * matrixValue[9], matrixValue[0] * matrixValue[5] - matrixValue[1] * matrixValue[4]
			) * (1 / det);
		}
	};
	Matrix inverse() const
	{
		float det =
			matrixValue[0] * matrixValue[5] * matrixValue[10] * matrixValue[15]	 +	 matrixValue[0] * matrixValue[6] * matrixValue[11] * matrixValue[13]	+	 matrixValue[0] * matrixValue[7] * matrixValue[9] * matrixValue[14] +
			matrixValue[1] * matrixValue[4] * matrixValue[11] * matrixValue[14]	 +	 matrixValue[1] * matrixValue[6] * matrixValue[8] * matrixValue[15]		+	 matrixValue[1] * matrixValue[7] * matrixValue[10] * matrixValue[12] +
			matrixValue[2] * matrixValue[4] * matrixValue[9] * matrixValue[15]	 +	 matrixValue[2] * matrixValue[5] * matrixValue[11] * matrixValue[12]	+	 matrixValue[2] * matrixValue[7] * matrixValue[8] * matrixValue[13] +
			matrixValue[3] * matrixValue[4] * matrixValue[10] * matrixValue[13]	 +	 matrixValue[3] * matrixValue[5] * matrixValue[8] * matrixValue[14]		+	 matrixValue[3] * matrixValue[6] * matrixValue[9] * matrixValue[12] -

			matrixValue[0] * matrixValue[5] * matrixValue[11] * matrixValue[14]	 -	 matrixValue[0] * matrixValue[6] * matrixValue[9] * matrixValue[15]		-	 matrixValue[0] * matrixValue[7] * matrixValue[10] * matrixValue[13] -
			matrixValue[1] * matrixValue[4] * matrixValue[10] * matrixValue[15]	 -	 matrixValue[1] * matrixValue[6] * matrixValue[11] * matrixValue[12]	-	 matrixValue[1] * matrixValue[7] * matrixValue[8] * matrixValue[14] -
			matrixValue[2] * matrixValue[4] * matrixValue[11] * matrixValue[13]	 -	 matrixValue[2] * matrixValue[5] * matrixValue[8] * matrixValue[15]		-	 matrixValue[2] * matrixValue[7] * matrixValue[9] * matrixValue[12] -
			matrixValue[3] * matrixValue[4] * matrixValue[9] * matrixValue[14]	 -	 matrixValue[3] * matrixValue[5] * matrixValue[10] * matrixValue[12]	-	 matrixValue[3] * matrixValue[6] * matrixValue[8] * matrixValue[13];
		if (det == 0) /** Checks if there is a invers on that matrix*/
			return Matrix();
		else
		{
			return Matrix(
				matrixValue[5] * matrixValue[10] * matrixValue[15]		+		matrixValue[6] * matrixValue[11] * matrixValue[13]		+		matrixValue[7] * matrixValue[9] * matrixValue[14]		-		matrixValue[5] * matrixValue[11] * matrixValue[14]		-		matrixValue[6] * matrixValue[9] * matrixValue[15]		-		matrixValue[7] * matrixValue[10] * matrixValue[13],
				matrixValue[1] * matrixValue[11] * matrixValue[14]		+		matrixValue[2] * matrixValue[9] * matrixValue[15]		+		matrixValue[3] * matrixValue[10] * matrixValue[13]		-		matrixValue[1] * matrixValue[10] * matrixValue[15]		-		matrixValue[2] * matrixValue[11] * matrixValue[13]		-		matrixValue[3] * matrixValue[9] * matrixValue[14],
				matrixValue[1] * matrixValue[6] * matrixValue[15]		+		matrixValue[2] * matrixValue[7] * matrixValue[13]		+		matrixValue[3] * matrixValue[7] * matrixValue[13]		-		matrixValue[1] * matrixValue[7] * matrixValue[14]		-		matrixValue[2] * matrixValue[5] * matrixValue[15]		-		matrixValue[3] * matrixValue[6] * matrixValue[13],
				matrixValue[1] * matrixValue[7] * matrixValue[10]		+		matrixValue[2] * matrixValue[5] * matrixValue[11]		+		matrixValue[3] * matrixValue[6] * matrixValue[9]		-		matrixValue[1] * matrixValue[6] * matrixValue[11]		-		matrixValue[2] * matrixValue[7] * matrixValue[9]		-		matrixValue[3] * matrixValue[5] * matrixValue[10],

				matrixValue[4] * matrixValue[11] * matrixValue[14]		+		matrixValue[6] * matrixValue[8] * matrixValue[15]		+		matrixValue[7] * matrixValue[10] * matrixValue[12]		-		matrixValue[4] * matrixValue[10] * matrixValue[15]		-		matrixValue[6] * matrixValue[11] * matrixValue[12]		-		matrixValue[7] * matrixValue[8] * matrixValue[14],
				matrixValue[0] * matrixValue[10] * matrixValue[15]		+		matrixValue[2] * matrixValue[11] * matrixValue[12]		+		matrixValue[3] * matrixValue[8] * matrixValue[12]		-		matrixValue[0] * matrixValue[11] * matrixValue[14]		-		matrixValue[2] * matrixValue[8] * matrixValue[15]		-		matrixValue[3] * matrixValue[10] * matrixValue[12],
				matrixValue[0] * matrixValue[7] * matrixValue[14]		+		matrixValue[2] * matrixValue[4] * matrixValue[15]		+		matrixValue[3] * matrixValue[6] * matrixValue[12]		-		matrixValue[0] * matrixValue[6] * matrixValue[15]		-		matrixValue[2] * matrixValue[7] * matrixValue[12]		-		matrixValue[3] * matrixValue[4] * matrixValue[14],
				matrixValue[0] * matrixValue[6] * matrixValue[11]		+		matrixValue[2] * matrixValue[7] * matrixValue[8]		+		matrixValue[3] * matrixValue[4] * matrixValue[12]		-		matrixValue[0] * matrixValue[6] * matrixValue[10]		-		matrixValue[2] * matrixValue[4] * matrixValue[11]		-		matrixValue[3] * matrixValue[6] * matrixValue[8],

				matrixValue[4] * matrixValue[9] * matrixValue[15]		+		matrixValue[5] * matrixValue[11] * matrixValue[12]		+		matrixValue[7] * matrixValue[8] * matrixValue[13]		-		matrixValue[4] * matrixValue[10] * matrixValue[13]		-		matrixValue[5] * matrixValue[8] * matrixValue[15]		-		matrixValue[7] * matrixValue[6] * matrixValue[12],
				matrixValue[0] * matrixValue[11] * matrixValue[13]		+		matrixValue[1] * matrixValue[8] * matrixValue[15]		+		matrixValue[3] * matrixValue[9] * matrixValue[12]		-		matrixValue[0] * matrixValue[9] * matrixValue[15]		-		matrixValue[1] * matrixValue[11] * matrixValue[12]		-		matrixValue[3] * matrixValue[8] * matrixValue[13],
				matrixValue[0] * matrixValue[5] * matrixValue[15]		+		matrixValue[1] * matrixValue[7] * matrixValue[12]		+		matrixValue[3] * matrixValue[4] * matrixValue[13]		-		matrixValue[0] * matrixValue[7] * matrixValue[13]		-		matrixValue[1] * matrixValue[4] * matrixValue[15]		-		matrixValue[3] * matrixValue[5] * matrixValue[12],
				matrixValue[0] * matrixValue[7] * matrixValue[9]		+		matrixValue[1] * matrixValue[4] * matrixValue[11]		+		matrixValue[3] * matrixValue[5] * matrixValue[8]		-		matrixValue[0] * matrixValue[5] * matrixValue[11]		-		matrixValue[1] * matrixValue[7] * matrixValue[8]		-		matrixValue[3] * matrixValue[4] * matrixValue[9],

				matrixValue[4] * matrixValue[5] * matrixValue[13]		+		matrixValue[5] * matrixValue[8] * matrixValue[14]		+		matrixValue[6] * matrixValue[9] * matrixValue[12]		-		matrixValue[4] * matrixValue[9] * matrixValue[14]		-		matrixValue[5] * matrixValue[10] * matrixValue[12]		-		matrixValue[6] * matrixValue[8] * matrixValue[13],
				matrixValue[0] * matrixValue[9] * matrixValue[14]		+		matrixValue[1] * matrixValue[10] * matrixValue[12]		+		matrixValue[2] * matrixValue[8] * matrixValue[13]		-		matrixValue[0] * matrixValue[10] * matrixValue[13]		-		matrixValue[1] * matrixValue[8] * matrixValue[14]		-		matrixValue[2] * matrixValue[9] * matrixValue[12],
				matrixValue[0] * matrixValue[6] * matrixValue[13]		+		matrixValue[1] * matrixValue[4] * matrixValue[14]		+		matrixValue[2] * matrixValue[5] * matrixValue[12]		-		matrixValue[0] * matrixValue[5] * matrixValue[14]		-		matrixValue[1] * matrixValue[6] * matrixValue[12]		-		matrixValue[2] * matrixValue[4] * matrixValue[13],
				matrixValue[0] * matrixValue[5] * matrixValue[10]		+		matrixValue[1] * matrixValue[6] * matrixValue[8]		+		matrixValue[2] * matrixValue[4] * matrixValue[9]		-		matrixValue[0] * matrixValue[6] * matrixValue[9]		-		matrixValue[1] * matrixValue[4] * matrixValue[10]		-		matrixValue[2] * matrixValue[5] * matrixValue[8]
			)*(1/det);
		}

	}

	float* getValuePointer()
	{
		return matrixValue;
	}
private:
	float matrixValue[16];
};