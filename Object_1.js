var obj = {
    name:"小明",
    brith:1994,
    heigh:22,
};

console.log(obj.name);
console.log(obj.brith);
console.log(obj.heigh);

var element;
for (const key in obj) {
    if (obj.hasOwnProperty(key)) {
        element = obj[key];
        console.log(element);
        // console.log(obj[element]);
    }
}

obj.hasOwnProperty("toString");

var a = ['A', 'B', 'C'];
for (var i in a) {
    console.log(i); // '0', '1', '2'
    console.log(a[i]); // 'A', 'B', 'C'
}