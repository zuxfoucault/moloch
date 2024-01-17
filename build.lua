#!/usr/bin/env texlua

module = "moloch"

sourcefiledir = "src"
typesetfiles = { "doc/moloch.tex" }
checkengines = { "pdftex" }
checksuppfiles = { "*.tex" }

maxprintline = 9999

function update_tag(file, content, tagname, tagdate)
  if string.match(file, "%.dtx$") then
    local pattern = "\\ProvidesPackage{(.-)}%[([^%]]-) v([^%]]-) ([^%]]-)%]"
    return content:gsub(
      pattern,
      function(package_name, old_date, old_version, description)
        -- if tagdate is nil, use old_date
        if tagname == nil then
          tagname = old_version
        end

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
