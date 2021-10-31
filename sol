class Solution {
    public int[] findBuildings(int[] heights) {
        if (heights.length == 1) {
            return new int[] {0};
        }
        int n = heights.length;
        int maxHeight = Integer.MIN_VALUE;
        List<Integer> list = new ArrayList<>();
        // System.out.println("check point");
        for (int i = n - 1; i >= 0; i--) {
            if (heights[i] > maxHeight) {
                list.add(i);
                maxHeight = heights[i];
            }
        }
        
        int[] result = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            result[i] = list.get(list.size() - i - 1);
        }
        
        return result;
    }
}
