// 基于准备好的dom，初始化echarts图表
var myChart = echarts.init(document.getElementById('main'));

var option = {


    calculable : true,
    polar : [
        {
            indicator : [

                {text : '体能<br>\n <span class="blue">(11)</span>', max  : 100},
                {text : '速度', max  : 100},
                {text : '力量', max  : 100},
                {text : '技巧', max  : 100}
            ],
            radius : 130
        }
    ],
    series : [
        {
            name: '完全实况球员数据',
            type: 'radar',
            itemStyle: {
                normal: {
                    areaStyle: {
                        type: 'default'
                    }
                }
            },
            data : [
                {
                    value : [97, 42, 88, 94],
                    name : '舍普琴科'
                },
                {
                    value : [97, 32, 74, 95],
                    name : '罗纳尔多'
                }
            ]
        }
    ]
};

// 为echarts对象加载数据
myChart.setOption(option);