require_relative '../graph'

describe Graph do

 it "search" do
    adj_matrix = [
      [0, 0, 1, 0, 1, 0],
      [0, 0, 1, 0, 0, 1],
      [0, 0, 0, 1, 0, 0],
      [0, 0, 0, 0, 1, 1],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0]
    ]

    expect(Graph.depth_first_search(adj_matrix, 0, 4)).to be true
    expect(Graph.breadth_first_search(adj_matrix, 0, 4)).to be true
 end


end