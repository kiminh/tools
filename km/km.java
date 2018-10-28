import java.util.*;

import static java.util.Collections.max;

class KuhnMunkres {
    private Map<String, Float> pole_X = new HashMap<String, Float>();
    private Map<String, Float> pole_Y = new HashMap<String, Float>();
    private Map<String, List<String>> edge_X = new HashMap<String, List<String>>();
    private Map<String, List<String>> edge_Y = new HashMap<String, List<String>>();
    private Map<String, String> matched_Y = new HashMap<String, String>();
    private List<String> marked_X = new ArrayList<String>();
    private List<String> marked_Y = new ArrayList<String>();

    private List<String> list_union(List<String> X, List<String> Y){
        Set<String> hs = new HashSet<String>();
        hs.addAll(X);
        hs.addAll(Y);
        return new ArrayList<String>(hs);
    }

    private List<String> list_intersection(List<String> X, List<String> Y){
        Set<String> hs = new HashSet<String>();
        hs.addAll(X);
        hs.retainAll(Y);
        return new ArrayList<String>(hs);
    }

    private List<String> list_substract(List<String> X, List<String> Y){
        Set<String> hs = new HashSet<String>();
        hs.addAll(X);
        hs.removeAll(Y);
        return new ArrayList<String>(hs);
    }

    private int km_dfs_process(String x, Map<String, List<String>> t_edge_X, Map<String, Map<String, Float>> weights){
        if(!weights.containsKey(x) || !t_edge_X.containsKey(x)) return 0;
        for(String y : t_edge_X.get(x)){
            if(marked_Y.contains(y)) continue;
            if(!matched_Y.containsKey(y)){
                matched_Y.put(y, x);
                marked_Y.add(y);
                return 1;
            }else{
                //try hungarian match
                String t = matched_Y.get(y);
                matched_Y.put(y, x);
                marked_Y.add(y);
                int res = km_dfs_process(t, t_edge_X, weights);
                if(res > 0) return 1;
                else matched_Y.put(y, t);
            }
        }
        return 0;
    }

    public float km_dfs(List<String> X, List<String> Y, Map<String, Map<String, Float>> weights, Map<String, String> matched_result){
        pole_X.clear();
        pole_Y.clear();
        edge_X.clear();
        edge_Y.clear();
        matched_Y.clear();
        marked_X.clear();
        marked_Y.clear();

        float matched_weight = 0;
        //pole init
        for(String x : X){
            if(!weights.containsKey(x)) continue;
            pole_X.put(x, max(weights.get(x).values()));
        }
        for(String y : Y){
            pole_Y.put(y, 0F);
        }
        //search
        for(String x : X){
            //cal d
            SortedMap<Float, Map<String, String>> d_arr = new TreeMap<Float, Map<String, String>>();
            for(String i : list_union(marked_X, Arrays.asList(x))){
                for (String j : list_substract(Y, new ArrayList<String>(matched_Y.keySet()))){
                    if (!weights.containsKey(i) || !weights.containsKey(j)) continue;
                    float w = pole_X.get(i) + pole_Y.get(j) - weights.get(i).get(j);
                    if(!d_arr.containsKey(w)) d_arr.put(w, new HashMap<String, String>());
                    d_arr.get(w).put(i, j);
                }
            }
            for(SortedMap.Entry<Float, Map<String, String>> p : d_arr.entrySet()){
                Float d = p.getKey();
                Map<String, Float> t_pole_X = new HashMap<String, Float>();
                Map<String, Float> t_pole_Y = new HashMap<String, Float>();
                t_pole_X.putAll(pole_X);
                t_pole_Y.putAll(pole_Y);
                //adjust pole value
                if(d > 0){
                    for(Map.Entry<String, Float> q : t_pole_X.entrySet()){
                        if(list_union(marked_X, new ArrayList<String>(matched_Y.keySet())).contains(q.getKey())
                                || list_intersection(edge_X.get(q.getKey()), new ArrayList<String>(matched_Y.keySet())).size() > 0){
                            t_pole_X.put(q.getKey(), t_pole_X.get(q.getKey())-d);
                        }
                    }
                    for(Map.Entry<String, Float> q : t_pole_Y.entrySet()){
                        if(matched_Y.containsKey(q.getKey())) t_pole_Y.put(q.getKey(), t_pole_Y.get(q.getKey()) + d);
                    }
                }
                //achieve viability edge
                Map<String, List<String>> t_edge_X = new HashMap<String, List<String>>();
                Map<String, List<String>> t_edge_Y = new HashMap<String, List<String>>();
                for(String i : X){
                    for(String j : Y){
                        if(!weights.containsKey(i) || !weights.get(i).containsKey(j)) continue;
                        if(t_pole_X.get(i) + t_pole_Y.get(j) != weights.get(i).get(j)) continue;
                        if(!t_edge_X.containsKey(i)) t_edge_X.put(i, new ArrayList<String>());
                        if(!t_edge_X.get(i).contains(j)) t_edge_X.get(i).add(j);
                    }
                }
                //do km match
                marked_Y.clear();
                int res = km_dfs_process(x, t_edge_X, weights);
                if(res > 0){
                    marked_X.add(x);
                    edge_X.clear();
                    edge_X.putAll(t_edge_X);
                    pole_X.clear();
                    pole_X.putAll(t_pole_X);
                    pole_Y.clear();
                    pole_Y.putAll(t_pole_Y);
                    break;
                }
            }
        }

        matched_result.clear();
        matched_result.putAll(matched_Y);
        for(Map.Entry<String, String> p : matched_result.entrySet()){
            matched_weight += weights.get(p.getKey()).get(p.getValue());
        }
        return matched_weight;
    }

    public static void main(String[] args){
        Map<String, Map<String, Float>> weights = new HashMap<String, Map<String, Float>>();
        weights.put("x0", new HashMap<String, Float>());
        weights.put("x1", new HashMap<String, Float>());
        weights.put("x2", new HashMap<String, Float>());
        weights.put("x3", new HashMap<String, Float>());
        weights.put("x4", new HashMap<String, Float>());
        weights.put("y0", new HashMap<String, Float>());
        weights.put("y1", new HashMap<String, Float>());
        weights.put("y2", new HashMap<String, Float>());
        weights.put("y3", new HashMap<String, Float>());
        weights.put("y4", new HashMap<String, Float>());
        weights.get("x0").put("y0", 3F);
        weights.get("x0").put("y1", 4F);
        weights.get("x0").put("y2", 6F);
        weights.get("x0").put("y3", 4F);
        weights.get("x0").put("y4", 9F);
        weights.get("x1").put("y0", 6F);
        weights.get("x1").put("y1", 4F);
        weights.get("x1").put("y2", 5F);
        weights.get("x1").put("y3", 3F);
        weights.get("x1").put("y4", 8F);
        weights.get("x2").put("y0", 7F);
        weights.get("x2").put("y1", 5F);
        weights.get("x2").put("y2", 3F);
        weights.get("x2").put("y3", 4F);
        weights.get("x2").put("y4", 2F);
        weights.get("x3").put("y0", 6F);
        weights.get("x3").put("y1", 3F);
        weights.get("x3").put("y2", 2F);
        weights.get("x3").put("y3", 2F);
        weights.get("x3").put("y4", 5F);
        weights.get("x4").put("y0", 8F);
        weights.get("x4").put("y1", 4F);
        weights.get("x4").put("y2", 5F);
        weights.get("x4").put("y3", 4F);
        weights.get("x4").put("y4", 7F);
        weights.get("y0").put("x0", 3F);
        weights.get("y0").put("x1", 6F);
        weights.get("y0").put("x2", 7F);
        weights.get("y0").put("x3", 6F);
        weights.get("y0").put("x4", 8F);
        weights.get("y1").put("x0", 4F);
        weights.get("y1").put("x1", 4F);
        weights.get("y1").put("x2", 5F);
        weights.get("y1").put("x3", 3F);
        weights.get("y1").put("x4", 4F);
        weights.get("y2").put("x0", 6F);
        weights.get("y2").put("x1", 5F);
        weights.get("y2").put("x2", 3F);
        weights.get("y2").put("x3", 2F);
        weights.get("y2").put("x4", 5F);
        weights.get("y3").put("x0", 4F);
        weights.get("y3").put("x1", 3F);
        weights.get("y3").put("x2", 4F);
        weights.get("y3").put("x3", 2F);
        weights.get("y3").put("x4", 4F);
        weights.get("y4").put("x0", 9F);
        weights.get("y4").put("x1", 8F);
        weights.get("y4").put("x2", 2F);
        weights.get("y4").put("x3", 5F);
        weights.get("y4").put("x4", 7F);
        List<String> X = new ArrayList<String>();
        List<String> Y = new ArrayList<String>();
        X.add("x0");
        X.add("x1");
        X.add("x2");
        X.add("x3");
        X.add("x4");
        Y.add("y0");
        Y.add("y1");
        Y.add("y2");
        Y.add("y3");
        Y.add("y4");
        KuhnMunkres km = new KuhnMunkres();
        Map<String, String> matched_result = new HashMap<String, String>();
        float matched_weight = km.km_dfs(X, Y, weights, matched_result);
        System.out.println(matched_weight);
        for (Map.Entry<String, String> p : matched_result.entrySet()){
            System.out.println(p.getKey() + "--" + p.getValue());
        }
    }
}
