//------------------------------------------------------------------------------
// main.cc
// (C) 2015-2016 Individual contributors, see AUTHORS file
//------------------------------------------------------------------------------
#include "../../../engine/config.h"
#include "exampleapp.h"
#include <iostream>
#include <sstream>

int
main(int argc, const char** argv)
{

	Example::ExampleApp app;

	std::stringstream strValue;
	strValue << argv[2];
	unsigned int temp;
	strValue >> temp;
	if (app.Open(argv[1], temp)) {
	    app.Run();
	    app.Close();
	}
	app.Exit();
	
}