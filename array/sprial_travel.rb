def spiral_traversal(arr)
    start_row = 0
    end_row = arr.length - 1
    start_col = 0
    end_col = arr[0].length - 1
    results = []
    # why <= there is a chance where row and col may equal
    while start_row <= end_row and start_col <= end_col
         # .. double dot to include last value
        (start_col..end_col).each do |col|
            results.push(arr[start_row][col])
        end

        # have exclude the already pushed element, so start_row + 1
        ((start_row + 1)..end_row).each do |row|
            results.push(arr[row][end_col])
        end

        break if start_col == end_col or start_row == end_row
        # ... thirpple dot to exclude last value
        (start_col...end_col).reverse_each do |col|
            results.push(arr[end_row][col])
        end
        break if start_col == end_col or start_row == end_row
        ((start_row + 1)...end_row).reverse_each do |row|
            results.push(arr[row][start_col])
            
        end
        
        start_row += 1
        end_row -= 1
        start_col += 1
        end_col -= 1
    end
    return results
end

p spiral_traversal([[1, 2, 3], [12, 13, 4], [11, 14, 5], [10, 15, 6], [9, 8, 7]])