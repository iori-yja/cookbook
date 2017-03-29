VERSION=5.3.1
SRC=http://www.lua.org/ftp/lua-$VERSION.tar.gz
DIR=lua-$VERSION

function recipe_version {
    echo "$VERSION"
    return 1
}

function recipe_update {
    echo "skipping update"
    return 1
}

function recipe_build {
    make generic
    return 1
}

function recipe_test {
    echo "skipping test"
    return 1
}

function recipe_clean {
    make clean
    return 1
}

function recipe_stage {
    mkdir -pv "$1/bin"
    cp src/lua src/luac "$1/bin"
    return 1
}
