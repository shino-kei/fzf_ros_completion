export ROS_FZF_PREFIX="--bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all"

_fzf_complete_rostopic () {
    _fzf_complete "$ros_fzf_prefix -m" "$@" < <(
        rostopic list  2>/dev/null
    )
}

_fzf_complete_rosnode () {
    _fzf_complete "$ros_fzf_prefix -m" "$@" < <(
        rosnode list 2>/dev/null
    )
}

_fzf_complete_rosservice () {
    _fzf_complete "$ros_fzf_prefix -m" "$@" < <(
        rosservice list 2>/dev/null
    )
}

_fzf_complete_rosparam () {
    _fzf_complete "$ros_fzf_prefix -m" "$@" < <(
        rosparam list 2>/dev/null
    )
}
