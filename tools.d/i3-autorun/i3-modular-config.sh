cat ~/.tools/tools.d/i3-autorun/config.d/config.base \
    ~/.tools/tools.d/i3-autorun/config.d/config.display > ~/.tools/tools.d/i3-autorun/config.d/i3/config

i3-msg reload
i3-msg restart
