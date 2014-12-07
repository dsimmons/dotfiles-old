current_path=$PATH

# "Go" ahead (hahaha) and set $GOPATH regardless.
export GOPATH=$HOME/.go

# If golang binary exists, set $GOROOT.
if command -v go >/dev/null 2>&1 ; then
  export GOROOT=`go env GOROOT`
  current_path=$current_path:$GOROOT/bin
fi

export PATH=$current_path:$GOPATH/bin
