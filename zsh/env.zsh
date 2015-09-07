# "Go" ahead (hahaha) and set $GOPATH regardless.
export GOPATH=$HOME/.go

# Add $GOPATH/bin to our PATH so that binaries installed with go are available.
export PATH=$PATH:$GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
source '/Users/dsimmons/google-cloud-sdk/path.zsh.inc'

# The next line enables zsh completion for gcloud.
source '/Users/dsimmons/google-cloud-sdk/completion.zsh.inc'
