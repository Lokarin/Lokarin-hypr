---@module 'hl'

--############
--## INPUT ###
--############

hl.config({
    input = {
        kb_layout = "br",
        follow_mouse = 1,
        sensitivity = 0,
        -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = true,
            disable_while_typing = false,
            scroll_factor = 0.5,
        },
        numlock_by_default = true,
    },
})

--hl.config({
--    gestures = {
--        gesture = { 3, "horizontal", "workspace" },
--        gesture = { 3, "up", "fullscreen" },
--        workspace_swipe_touch = true,
--        workspace_swipe_forever = true,
--        workspace_swipe_distance = 200,
--        workspace_swipe_min_speed_to_force = 1,
--    },
--})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

hl.gesture({
    fingers = 3,
    direction = "up",
    action = "fullscreen"
})

hl.device({
    name = "logitech-g203-lightsync-gaming-mouse",
    sensitivity = -0.5,
})
