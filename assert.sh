set -o nounset -o pipefail

compile() {
        echo 'PROGRAM TEXT'
        cat $1
        echo 'GCC ERRORS'
        gcc -std=gnu99 -c $1
        echo 'CLANG ERRORS'
        clang -std=gnu99 -c $1
        echo 'END BLOCK'
        echo
} &>> errors.txt


"$@"
