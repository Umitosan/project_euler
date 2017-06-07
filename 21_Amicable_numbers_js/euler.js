
function basic_arr(bot,top) {
  var arr = [];
  for (i = bot; i < (top+1); i++) {
    arr.push(i);
  }
  return arr;
}

function proper_div(num) {
  var proper_div_arr = [];
  for (var i = 1; i < ((num/2)+1); i++) {
    if ((num % i) === 0) {
      proper_div_arr.push(i);
      // console.log("YES! - ",i);
    }
  }
  // console.log("proper_div = ", proper_div_arr);
  return proper_div_arr;
}


function sum_arr(myArr) {
  var sum = 0;
  for (var n in myArr) {
    sum += myArr[n];
  }
  return sum;
}


function is_amicable(num1, num2) {
  var amicable = 0;
  // console.log(sum_arr(proper_div("sum_arr(proper_div( " , num1)));
  if (((sum_arr(proper_div(num1)) === num2) && (sum_arr(proper_div(num2)) === num1)) && (num1 !== num2)) {
    amicable = 1;
  }
  return amicable;
}


function myMain(num) {
  var found_arr = [];
  var arr1 = basic_arr(1 ,num);
  for (n1 in arr1) {
    if ((n1 % 1000) === 0) {
      console.log("----1000----");
    }
    var arr2 = basic_arr(n1 ,num);
    for (n2 in arr2) {
      if (is_amicable(arr1[n1], arr2[n2]) === 1) {
        console.log("found amicable", arr1[n1], "< & >", arr2[n2] );
        found_arr.push(arr1[n1], arr2[n2]);
      }
    }
  }
  console.log("found_arr: ", found_arr);
  return found_arr;
}


$(document).ready(function(){
  $('#found').append(myMain(10000).join(" , "));
  $('#ans').append();
});

// ANSWER:
// [220,284,1184,1210,2620,2924,5020,5564,6232,6368] =
// solution:  31626
