#!/usr/bin/env texlua

module = "moloch"

sourcefiledir = "src"
typesetfiles = { "doc/moloch.tex" }

function update_tag(file, content, tagname, tagdate)
  if string.match(file, "%.dtx$") then
    local pattern = "\\ProvidesPackage{(.-)}%[([^%]]-) v([^%]]-) ([^%]]-)%]"
    return content:gsub(
      pattern,
      function(package_name, old_date, old_version, description)
        return string.format(
          "\\ProvidesPackage{%s}[%s v%s %s]",
          package_name,
          tagdate,
          tagname,
          description
        )
      end
    )
  end

  return content
end
