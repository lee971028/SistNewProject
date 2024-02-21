function randomColor(){
    //rgb색상얻기

    var r=parseInt(Math.random()*256); //0~255
    var g=parseInt(Math.random()*256); //0~255
    var b=parseInt(Math.random()*256); //0~255

    var color="rgb("+r+","+g+","+b+")";

    return color;
}