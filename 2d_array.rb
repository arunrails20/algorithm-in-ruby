array = [[11,12,13,14,15],[21,22,23,24,25],[31,32,33,34,35]]


def sprial_printing(arr, row_end, col_end)
row_start = 0
col_start = 0

  while(row_start < row_end && col_start < col_end)
    
    (col_start...col_end).each do |i|
      p arr[row_start][i]
    end
    row_start +=1

  (row_start...row_end).each do |i|
      p arr[i][col_end - 1]
    end
    col_end -=1

    if row_start < row_end
      (col_end - 1).downto(col_start) do |i|
      p arr[row_end - 1][i]
      end
    row_end -=1
    end

    if col_start < col_end
      (row_end - 1).downto(row_start) do |i|
      p arr[i][col_start]
      end
      col_start += 1
    end

  end
end

sprial_printing(array, 3, 5)