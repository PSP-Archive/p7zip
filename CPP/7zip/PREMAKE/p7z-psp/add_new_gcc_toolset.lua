local function add_new_gcc_toolset (name, prefix)
  local gcc                         = premake.tools.gcc
  local new_toolset                 = {}  
  new_toolset.getcflags             = gcc.getcflags
  new_toolset.getcxxflags           = gcc.getcxxflags
  new_toolset.getforceincludes      = gcc.getforceincludes
  new_toolset.getldflags            = gcc.getldflags
  new_toolset.getcppflags           = gcc.getcppflags
  new_toolset.getdefines            = gcc.getdefines
  new_toolset.getincludedirs        = gcc.getincludedirs
  new_toolset.getLibraryDirectories = gcc.getLibraryDirectories
  new_toolset.getlinks              = gcc.getlinks
  new_toolset.getmakesettings       = gcc.getmakesettings
  new_toolset.toolset_prefix        = prefix

  function new_toolset.gettoolname (cfg, tool)  
    if     tool == "cc" then
      name = new_toolset.toolset_prefix .. "gcc"  
    elseif tool == "cxx" then
      name = new_toolset.toolset_prefix .. "g++"
    elseif tool == "ar" then
      name = new_toolset.toolset_prefix .. "ar"
    end
    return name
  end  

  premake.tools[name] = new_toolset
end

return add_new_gcc_toolset