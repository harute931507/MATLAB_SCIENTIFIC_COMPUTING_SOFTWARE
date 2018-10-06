function S=picture8(a1,a2,a3,a4,a5,a6,a7,a8)

a1=imread('1.jpg');
a2=imread('2.jpg');
a3=imread('3.jpg');
a4=imread('4.jpg');
a5=imread('5.jpg');
a6=imread('6.jpg');
a7=imread('7.jpg');
a8=imread('8.jpg');

a1=imresize(a1,2);
a2=imresize(a2,2);
a3=imresize(a3,2);
a4=imresize(a4,2);
a5=imresize(a5,2);
a6=imresize(a6,2);
a7=imresize(a7,2);
a8=imresize(a8,2);

N=size(a1,2)/8;

for i=1:N;
    S(:,8*i-7,:)=a1(:,8*i-7,:);
    S(:,8*i-6,:)=a2(:,8*i-6,:);
    S(:,8*i-5,:)=a3(:,8*i-5,:);
    S(:,8*i-4,:)=a4(:,8*i-4,:);
    S(:,8*i-3,:)=a5(:,8*i-3,:);
    S(:,8*i-2,:)=a6(:,8*i-2,:);
    S(:,8*i-1,:)=a7(:,8*i-1,:);
    S(:,8*i,:)=a8(:,8*i,:);
    
end

imwrite(S,'368.tiff','resolution',368)
    
    

