.model small   
.stack 100h        
.data    

str db 'ab'
   

.code
main proc
   mov ax,@data
   mov ds,ax 
    
   mov si, offset str 
   
   push [si]  
   inc si
   push [si]        
   
   pop dx
   mov ah,02h
   int 21h
      
   pop dx
   mov ah,02h
   int 21h
    
      
main endp
end