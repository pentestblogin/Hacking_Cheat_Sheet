# create or add this to ur ~/.tmux.conf 

#set prefix
set -g prefix C-a
bind C-a send-prefix
unbind C-b

# C-c quickly open a new window
unbind C-t
bind -n C-t new-window 


# C-p quickly open a previos window
unbind C-p
bind -n C-p previous-window 

#C-n quickly open a next window
unbind C-n
bind -n C-n next-window


#cursor movement
bind -n S-Left select-pane -L
bind -n S-Right select-pane -R
bind -n S-Up select-pane -U
bind -n S-Down select-pane -D


#set -g mouse on 
#setw -g  mode-keys vi
setw -g monitor-activity on
set -g visual-activity on



#copy limit
set -g history-limit 100000


# C-z zoom current pane
unbind C-M-z
bind -n C-M-z resize-pane -Z


# C-[ quickly copy mode
unbind C-[
bind -n C-[ copy-mode


#split tmux terminal
 
bind -n C-M-v split-window -v
bind -n C-M-g split-window -h
bind -n C-M-x kill-pane 

#set color

#set -g status-bg dark-black
#set -g status-fg white 

#panes, window coloring system 

#  modes

setw -g clock-mode-colour colour6
setw -g mode-style 'fg=colour1 bg=colour18 bold'

# panes

set -g pane-border-style 'fg=colour19 bg=colour0'
set -g pane-active-border-style 'bg=colour0 fg=colour9'

# statusbar

set -g status-position bottom
set -g status-justify left
set -g status-style 'bg=colour18 fg=colour137 dim'
set -g status-left ''
set -g status-right '#[fg=colour233,bg=colour19] %d/%m #[fg=colour233,bg=colour8] %H:%M:%S '
set -g status-right-length 50
set -g status-left-length 20

setw -g window-status-current-style 'fg=colour1 bg=colour19 bold'
setw -g window-status-current-format ' #I#[fg=colour249]:#[fg=colour255]#W#[fg=colour249]#F '
setw -g window-status-style 'fg=colour9 bg=colour18'
setw -g window-status-format ' #I#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '
setw -g window-status-bell-style 'fg=colour255 bg=colour1 bold'

# messages

set -g message-style 'fg=colour200 bg=colour20 bold'

#clock "pentestblog"
unbind C-M-c
bind -n C-M-c clock



set -sg escape-time 0
