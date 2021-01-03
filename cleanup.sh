if which swiftformat >/dev/null; then
`which swiftformat` "Sources" --config .swiftformat --quiet
`which swiftformat` "Tests" --config .swiftformat --quiet
`which swiftformat` "Package.swift" --config .swiftformat --quiet
`which swiftformat` "RxOptionalExample.playground/Contents.swift" --config .swiftformat --quiet
else
echo "error: swiftformat not installed, do `sh setup.sh` to install swiftformat."
exit 1
fi

if which swiftlint >/dev/null; then
`which swiftlint` autocorrect --quiet
else
echo "error: SwiftLint not installed, do `sh setup.sh` to install SwiftLint."
exit 1
fi

if which xcodegen >/dev/null; then
`which xcodegen`
else
echo "error: XcodeGen not installed, do `sh setup.sh` to install XcodeGen."
exit 1
fi