//
//  baitap.swift
//  baitapbuoi3
//
//  Created by Toan on 1/2/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import Foundation
//func sapxep(){
//   var   mang : [Int] = [0,1,5,7,12,6,4]
//    var  max : Int = mang[0]
//    var min : Int = mang[0]
//    for i  in 0...mang.count{
//        for j in i+1...mang.count{
//            if mang[i] < mang[j] {
//                max = mang[i]
//                mang[i] = mang[j]
//                mang[j] = max
//            }
//        }
//    }
//    for n in mang {
//        print(n)
//    }
//}
func timso(){
    var so :Int
    print(" nhap so can  tim")
    so = Int(readLine() ?? "0") ?? 0 
    if(so > 10000){
        timso()
    }else{
        var nghin = so/1000
        var tram =  (so%1000)/100
        var chuc = ((so%1000)%100)/10
        var  du = so % 10
         
        var  mang :[Int] = [nghin,tram,chuc,du]
        var max1 = mang[0]
        var max2 = mang[0]
        for n in mang {
            if max1<n   {
                max2 = max1
                
                max1 = n
            } else  if  max2 < n && n < max1
            {
                
                max2 = n
            }
            print(" \(max1) : \(max2)")
        }
        print(" so lon thu 2 la \(max2)")
    }
}
func lietke( so :Int){
     var mang : [Int] = []
    for i in 1...so
    {
        if so % i == 0 {
            mang.append(i)
        }
        
        }
    for j in mang {
    print(j)
        
    }
    
}
//In ra họ và tên của một họ tên cho trước. (Ví dụ Phan Thanh Hoa -> In ra: Phan Hoa)
func Hoten( ){
    print("nhap ho ten muon dao nguoc")
    var hoten = readLine() ?? "0"
    var mang : [ Character] = []
    var mangho : [Character] = []
   var mangten : [Character] = []
    for i in hoten {
        mang.append(i)
    }
    for  j in 0...mang.count-1{
        if( mang[j] == " ") {
            for ho  in 0...j-1{
                mangho.append(mang[ho])
            }
           
            for h in j...mang.count-1  {
                mangten.append(mang[h])
            }
            
        }
    }
   let tensau = String(mangho)
    let tentruoc_ = String(mangten)
    print( tentruoc_ + " " + tensau )
    
}
func TimUoc( so : Int){
   var mang : [Int] = []
    for n in 0...so+1{
        if(so%n == 0){
            mang.append(n )
        }
    }
    for i in mang {
        print(i )
    }
}
func CauHoi(){
    print("Đâu không phải là một ngôn ngữ lập trình? \n  a  - Golang \n b - Swift \n c - Ruby \n d - Daily)")
    var luachon :String = readLine() ?? "0"
    switch luachon {
    case "a" :
        print("lua chon sai")
        CauHoi()
    case "b" :
        print("lua chon sai")
           
        CauHoi()
    case "c" :
        print("lua chon sai")
             CauHoi()
    case "d" :
        print("cau tra loi cua ban la dung")
        
    default:
        print("ban nhap sai dap an")
        CauHoi()
    }
}
func SoHoanHao( so :Int  ){
    var mang :[Int] = []
    var tong :Int = 0
    var mang2 :[Int] = []
    for  n in 1...so{
        for i in  1...n{
            if n%i == 0 {
                mang.append(i)
            }
            for j in mang {
                tong  += j
            }
            
        
                if(tong < so  ){
                          mang2.append(n)
                      }    }
       
}
  for k in mang2 {
      print(k)
  }}

//Btvn
func b1( dai :Int , rong:Int){
    for n in 0...dai{
        for i in 0...rong{
            print("*",terminator:" ")
        }
        print(" ")
    }
}

    
func b2( dai :Int , rong:Int){
    for n in 1...rong{
        for i in 1...dai{
            if(n>1 && i>1 && n < dai-1 && i < dai)
            {
                print(" ",terminator : " ")
            }else  {
                print("*",terminator : " ")
            }
        }
    
    
        print(" ")
    }
}
func b3( dai :Int , rong:Int){
    for i in 1...dai{
        for j in 0...i-1{
            print("*",terminator : " ")
        }
        print("")
    }
    
}
