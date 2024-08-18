#! /usr/bin/fish

switch $argv[1]
	case r
		cmake --preset release
		cmake --build ./build/Release/
		echo "Building Release"
	case '*'
		cmake --preset debug
		cmake --build ./build/Debug/
		echo "Building Debug (default)"
end
