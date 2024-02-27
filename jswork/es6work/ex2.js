//const: 상수

//객체선언 가능
const pp={
    "name":"홍길도",
    "addr":"서울시 서초구"
}

console.log("이름: "+pp.name);
console.log("주소: "+pp.addr);

//객체타입일 경우 멤버는 변경가능
pp.name="이효리";
pp.addr="제주시";

console.log("이름: "+pp.name);
console.log("주소: "+pp.addr);

//pp={} 객체값 자체변경은 에러