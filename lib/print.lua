local Print = {}

Print.TYPE_DEFAULT = "[gEngine] "
Print.TYPE_INFO    = "[gInfo] "
Print.TYPE_WARNING = "[gWarning] "
Print.TYPE_ERROR   = "[gError] "

local indentIndex = 0
local printType = Print.TYPE_DEFAULT

local function GetIndent()
    return string.rep("\t", indentIndex)
end

local PrintMeta = {
    __call = function(self, ...)
        local indent = GetIndent()
        local printString = indent .. printType
        local extras = {...}
        
        for k, v in pairs(extras) do
            printString = printString .. tostring(v) .. "\t"
        end
        
        print(printString)
    end
}

function Print.SetPrintType(newPrintType)
    printType = newPrintType
end

function Print.Indent()
    indentIndex = indentIndex + 1
end

function Print.Unindent()
    if indentIndex <= 0 then indentIndex = 0 return end
    indentIndex = indentIndex - 1
end

function Print.ResetIndent()
    indentIndex = 0
end


setmetatable(Print, PrintMeta)
return Print