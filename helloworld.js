var arr = ['小明', '小红', '大军', '阿黄'];
arr.sort();
console.log(arr);
var arr1 = arr.splice(0,3);
console.log(arr1.join(",")+"和"+arr[arr.length-1]);