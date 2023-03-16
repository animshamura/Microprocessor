.model small 
.stack 100h
.data    

str1 db "Enter a number: $"
str2 db 13,10,"The number is even.$"
str3 db 13,10,"The number is odd.$"    

.code
main proc
    mov ax,@data
    mov ds,ax   
    
    lea dx,str1
    mov ah,9
    int 21h     
    
    mov ah,1
    int 21h
    mov bl,al    
    
    mov bl,2
    div bl
    
    cmp ah,0
    je l1
    jmp l2      
    
    l1:
    
    lea dx,str2
    mov ah,9
    int 21h    
       
    mov ah,4Ch
    int 21h
    
    l2:
    
    lea dx,str3
    mov ah,9
    int 21h   
     

    mov ah,4Ch
    int 21h
main endp
end