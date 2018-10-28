import java.util.*;

class Hungarian {
    private Map<String, Integer> m_numbers = new HashMap<String, Integer>();
    private List<String> m_marked_Y = new ArrayList<String>();
    private Map<String, String> m_matched_Y = new HashMap<String, String>();

    private void bigraph_dfs(String point, Map<String, Map<String, Float>> weights, int num){
        for(Map.Entry<String, Float> x : weights.get(point).entrySet()){
            if(m_numbers.containsKey(x.getKey())) continue;
            if(x.getValue() <= 0) continue;
            m_numbers.put(x.getKey(), num + 1);
            bigraph_dfs(x.getKey(), weights, num + 1);
        }
    }

    public void bigraph(List<String> points, Map<String, Map<String, Float>> weights, List<String> graph_X, List<String> graph_Y){
        if(points.size() <= 0) return ;
        m_numbers.clear();
        graph_X.clear();
        graph_Y.clear();
        //numbering
        for(int i=0; i<points.size(); i++){
            String point = points.get(i);
            if(m_numbers.containsKey(point)) continue;
            m_numbers.put(point, 1);
            if(! weights.containsKey(point)) continue;
            //dfs numbering
            bigraph_dfs(point, weights, 1);
        }
        //split
        for(Map.Entry<String, Integer> x: m_numbers.entrySet()){
            if(x.getValue() % 2 == 0){
                graph_X.add(x.getKey());
            }else{
                graph_Y.add(x.getKey());
            }
        }
    }

    private int hungarian_dfs_process(String x, Map<String, Map<String, Float>> weights){
        if(!weights.containsKey(x)) return 0;
        int res = 0;
        for(Map.Entry<String, Float> p : weights.get(x).entrySet()){
            String y = p.getKey();
            if(m_marked_Y.contains(y)) continue;
            if(!m_matched_Y.containsKey(y)){
                m_matched_Y.put(y, x);
                m_marked_Y.add(y);
                return 1;
            }else{
                String t = m_matched_Y.get(y);
                m_matched_Y.put(y, x);
                m_marked_Y.add(y);
                res += hungarian_dfs_process(t, weights);
                if(res > 0) break;
                else m_matched_Y.put(y, t);
            }
        }
        return res;
    }

    public Map<String, String> hungarian_dfs(List<String> points, Map<String, Map<String, Float>> weights){
        Map<String, String> matched_results = new HashMap<String, String>();
        List<String> X = new ArrayList<String>();
        List<String> Y = new ArrayList<String>();

        bigraph(points, weights, X, Y);

        for(String x : X){
            m_marked_Y.clear();
            hungarian_dfs_process(x, weights);
        }
        return m_matched_Y;
    }

    public static void main(String[] args){
        List<String> points = Arrays.asList("x1", "x2", "x3", "x4", "y1", "y2", "y3", "y4");
        Map<String, Map<String, Float>> weights = new HashMap<String, Map<String, Float>>();
        for(String s : points){
            weights.put(s, new HashMap<String, Float>());
        }
        weights.get("x1").put("y1", 1F);
        weights.get("x1").put("y2", 1F);
        weights.get("x2").put("y1", 1F);
        weights.get("x2").put("y3", 1F);
        weights.get("x3").put("y2", 1F);
        weights.get("x3").put("y4", 1F);
        weights.get("x4").put("y2", 1F);
        weights.get("x4").put("y3", 1F);
        weights.get("y1").put("x1", 1F);
        weights.get("y1").put("x2", 1F);
        weights.get("y2").put("x1", 1F);
        weights.get("y2").put("x3", 1F);
        weights.get("y2").put("x4", 1F);
        weights.get("y3").put("x2", 1F);
        weights.get("y3").put("x4", 1F);
        weights.get("y4").put("x3", 1F);
        Hungarian hungarian = new Hungarian();
        Map<String, String> res = hungarian.hungarian_dfs(points, weights);
        for (Map.Entry<String, String> p : res.entrySet()){
            System.out.println(p.getKey() + "--" + p.getValue());
        }
    }
}
