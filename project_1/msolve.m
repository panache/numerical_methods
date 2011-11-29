function [x] = msolve(A,b)

n = size(A);
if (n(1)~=n(2))
    return;
end
n = n(1);
aug = A;
aug(:,n+1) = b;

for i=1:n,
    if (aug(i,i)==0)
        for k=i:n,
            if (aug(k,i)~=0)
                temp=aug(k,:);
                aug(k,:)=aug(i,:);
                aug(i,:)=temp;
            end
        end
    end
    if (aug(i,i)~=1)
        aug(i,:)=aug(i,:)./aug(i,i);
    end
    for j=i+1:n,
        if (aug(j,i)~=0)
            aug(j,:)=aug(j,:)./aug(j,i) - aug (i,:);
        end
    end
end

%curr_diag defines the diagonal we are going to reduce to 0's above the 1
%diagonal

for curr_diag = 1:n-1,
    for k = curr_diag:n-1,
        curr_row = n-k;
        aug (curr_row,:)=aug(curr_row,:) - (aug(curr_row+curr_diag,:).*aug(curr_row,curr_row+curr_diag));
    end
end

x = aug(:,n+1);