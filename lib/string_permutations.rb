module StringPermutations

	def StringPermutations.permutate(str,k)
    return nil unless k.class == Fixnum && str.class == String
		arr = str.split("")
		@for_perms = []
		@result = []
		@final = []
		combination(arr,k,0,k)
		@for_perms.each{|x|
			arr = x.split("")
			permutation(arr,0,k)
		}
		@final.uniq
	end

	def self.combination(arr,len,start,k)
		if(len == 0)
			@for_perms.push(@result.join(""))
			return
		end
		for i in start..(arr.length - len)
			@result[k - len] = arr[i]
			combination(arr,len-1,i+1,k)
		end
	end	

	def self.permutation(a,i,n)
		if i==n
			@final.push(a.join(""))
		else
			for j in i..n
				a[i],a[j] = a[j],a[i]
				permutation(a,i+1,n)
				a[i],a[j] = a[j],a[i]
			end
		end
	end

end
