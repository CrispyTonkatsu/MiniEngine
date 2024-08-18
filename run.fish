#! /usr/bin/fish

switch $argv[1]
	case r
		cmake --preset release
		cmake --build ./build/Release/
		./build/Release/test-prog
		echo "Running Release"
	case '*'
		cmake --preset debug
		cmake --build ./build/Debug/
		./build/Debug/test-prog
		echo "Running Debug (default)"
end

