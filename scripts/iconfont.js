function camelCase(text, separator) {
    const arr = text.split(separator);
    for(let i = 1; i < arr.length; i++) {
        const s = arr[i].slice(0, 1).toUpperCase();
        const h = arr[i].slice(1);
        arr[i] = s + h;
    }
    return arr.join('')
}

const iconItems = document.getElementsByClassName('icon-item')
let result = {}
for(const item of iconItems) {
    let name = item.getElementsByClassName('icon-name')[0].innerHTML
    const n = name.search(/[0-9]/);
    if(n === 0) {
        name = '_' + name
    }

    name = camelCase(name, ' ')
    name = camelCase(name, '-')
    let code = item.getElementsByClassName('icon-code')[0].innerHTML
    code = code.replace('&amp;#x', '')
    code = code.replace(';', '')
    result[name] = code
}

const sortedName = Object.keys(result).sort()

let resultStr = ''

for(const name of sortedName) {
    resultStr = resultStr + "case " + name + " = " + "\"\\u{" + result[name] + "}\"" + "\n"
}

console.log(resultStr)
