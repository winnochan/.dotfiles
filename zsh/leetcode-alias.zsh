alias lc="leetgo"

# leetcode 每日一题
ldt() {
    if [ "$1" = "" ]; then
        leetgo edit today
    else
        leetgo edit "today-$1"
    fi
}

lpt() {
    if [ "$1" = "" ]; then
        leetgo pick today
    else
        leetgo pick "today-$1"
    fi
}

ltt() {
    if [ "$1" = "" ]; then
        leetgo test today
    else
        leetgo test "today-$1"
    fi
}

lst() {
    if [ "$1" = "" ]; then
        leetgo submit today
    else
        leetgo submit "today-$1"
    fi
}

# leetcode 常规题目
lcc() {
    leetgo contest $1
}

lce() {
    leetgo edit $1
}

lcp() {
    leetgo pick $1
}

lct() {
    leetgo test $1
}

lcs() {
    leetgo submit $1
}
