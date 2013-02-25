require "remember_xwindow/version"
require 'bini'
require 'bini/optparser'

module RememberXwindow
  extend self

  attr_accessor :search
  attr_accessor :execute

  def is_visible?
    return true if `xdotool search --onlyvisible #{RememberXwindow.search}` != ""
    return false
  end

  def is_focus?
    return true if window == `xprop -root _NET_ACTIVE_WINDOW`.split(" ").last.to_i(16)
    return false
  end

  def hide
    `xdotool windowunmap #{window} --sync`
  end

  def show
    `xdotool windowmap #{window} --sync`
  end

  def focus
    `xdotool windowfocus #{window}`
  end

  def raisew
    `xdotool windowraise #{window}`
  end

  def window_ids
    if !@window_ids
      @window_ids = `xdotool search #{RememberXwindow.search}`.split
    end
    return @window_ids if @window_ids
    return nil
  end

  def window
    return window_ids[0].to_i if window_ids.any?
    return nil
  end
end

