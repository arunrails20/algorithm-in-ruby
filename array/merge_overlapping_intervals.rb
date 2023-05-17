=begin
find the merge overlapping intervals: input array [[1, 2], [3, 5], [4, 7], [6, 8], [9, 10]], 
output array [[1,2],[3,8],[9,10]]
1. Determine, how to find the overalapping index, Formula is current_end >= next_start, if yes there is a overallap
2. Step1 sort the input array by arr[0], first element a.sort_by {|x,y| x}
3. Creating an empty array to store the overlapping => result_arr
4. Iterate through the input_array, Find the overalapping and merge that array 
5. ex [[3, 5], [4, 7]], 5 >= 4, yes its overlapping merge it [3,7]
6. Always compare or find overlapping for in results_arr
7. 

=end