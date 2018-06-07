// 潜能图
var potential_gradesChart = echarts.init(document.getElementById('potential_grades'));
var indicator = [];
var potential_grades_index_by_id = {};
for (var k in potential_grades) {
    potential_grades_index_by_id[potential_grades[k].potential_id] = potential_grades[k];
}

var grade_value = [];
    for (var potential_id in potentials) {
        var tmp = {
            text: potentials[potential_id].name+"\n("+potential_grades_index_by_id[potential_id].grade+")",
            max : 100
        }

        grade_value.push(potential_grades_index_by_id[potential_id].grade);
        indicator.push(tmp);
    }

var grades_data = [
    {
        value: grade_value
    }
];


var option = {


    calculable : true,
    polar : [
        {
            indicator : indicator,
            radius : 130
        }
    ],
    series : [
        {
            name: '',
            type: 'radar',
            itemStyle: {
                normal: {
                    areaStyle: {
                        type: 'default'
                    }
                }
            },
            data :  grades_data

        }
    ]
};
potential_gradesChart.setOption(option);
//////////////////////////////////////////////////
// 兴趣图
var interest_gradesChart = echarts.init(document.getElementById('interest_grades'));
var indicator = [];
var interest_grades_index_by_id = {};
for (var k in interest_grades) {
    interest_grades_index_by_id[interest_grades[k].interest_id] = interest_grades[k];
}

var grade_value = [];
for (var interest_id in interests) {
    var tmp = {
        text: interests[interest_id].name+"\n("+interest_grades_index_by_id[interest_id].grade+")",
        max : 100
    }

    grade_value.push(interest_grades_index_by_id[interest_id].grade);
    indicator.push(tmp);
}

var grades_data = [
    {
        value: grade_value
    }
];


var option = {


    calculable : true,
    polar : [
        {
            indicator : indicator,
            radius : 130
        }
    ],
    series : [
        {
            name: '',
            type: 'radar',
            itemStyle: {
                normal: {
                    areaStyle: {
                        type: 'default'
                    }
                }
            },
            data :  grades_data

        }
    ]
};
interest_gradesChart.setOption(option);
/////////////////////////////////////////////////////////

// 最佳潜能
var best_potential_chart = echarts.init(document.getElementById('best_potential'));

var indicator = [];
var quality_grades_index_by_id = {};
for (var k in quality_grades) {
    quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
}

var grade_value = [];
for (var quality_id in best_potential_has_qualities) {
    var tmp = {
        text: best_potential_has_qualities[quality_id].quality_name+"\n("+quality_grades_index_by_id[quality_id].grade+")",
        max : 100
    }

    grade_value.push(quality_grades_index_by_id[quality_id].grade);
    indicator.push(tmp);
}

var grades_data = [
    {
        value: grade_value
    }
];

var option = {


    calculable : true,
    polar : [
        {
            indicator : indicator,
            radius : 130
        }
    ],
    series : [
        {
            name: '',
            type: 'radar',
            itemStyle: {
                normal: {
                    areaStyle: {
                        type: 'default'
                    }
                }
            },
            data : grades_data
        }
    ]
};

best_potential_chart.setOption(option);

/////////////////////////////////////////////////////////

// 第二潜能
var second_potential_chart = echarts.init(document.getElementById('second_potential'));

var indicator = [];
var quality_grades_index_by_id = {};
for (var k in quality_grades) {
    quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
}

var grade_value = [];
for (var quality_id in second_potential_has_qualities) {
    var tmp = {
        text: second_potential_has_qualities[quality_id].quality_name+"\n("+quality_grades_index_by_id[quality_id].grade+")",
        max : 100
    }

    grade_value.push(quality_grades_index_by_id[quality_id].grade);
    indicator.push(tmp);
}

var grades_data = [
    {
        value: grade_value
    }
];

var option = {


    calculable : true,
    polar : [
        {
            indicator : indicator,
            radius : 130
        }
    ],
    series : [
        {
            name: '',
            type: 'radar',
            itemStyle: {
                normal: {
                    areaStyle: {
                        type: 'default'
                    }
                }
            },
            data : grades_data
        }
    ]
};

// 为echarts对象加载数据
second_potential_chart.setOption(option);

/////////////////////////////////////////////////////////
// 第三潜能
//////////////
var third_potential_chart = echarts.init(document.getElementById('third_potential'));

var indicator = [];
var quality_grades_index_by_id = {};
for (var k in quality_grades) {
    quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
}

var grade_value = [];
for (var quality_id in third_potential_has_qualities) {
    var tmp = {
        text: third_potential_has_qualities[quality_id].quality_name+"\n("+quality_grades_index_by_id[quality_id].grade+")",
        max : 100
    }

    grade_value.push(quality_grades_index_by_id[quality_id].grade);
    indicator.push(tmp);
}

var grades_data = [
    {
        value: grade_value
    }
];

var option = {


    calculable : true,
    polar : [
        {
            indicator : indicator,
            radius : 130
        }
    ],
    series : [
        {
            name: '',
            type: 'radar',
            itemStyle: {
                normal: {
                    areaStyle: {
                        type: 'default'
                    }
                }
            },
            data : grades_data
        }
    ]
};

// 为echarts对象加载数据
third_potential_chart.setOption(option);
/////////////////////////////////////////////////////////
// 短板第一潜能
//////////////
var short_first_potential_chart = echarts.init(document.getElementById('short_first_potential'));

var indicator = [];
var quality_grades_index_by_id = {};
for (var k in quality_grades) {
    quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
}

var grade_value = [];
for (var quality_id in short_first_potential_has_qualities) {
    var tmp = {
        text: short_first_potential_has_qualities[quality_id].quality_name+"\n("+quality_grades_index_by_id[quality_id].grade+")",
        max : 100
    }

    grade_value.push(quality_grades_index_by_id[quality_id].grade);
    indicator.push(tmp);
}

var grades_data = [
    {
        value: grade_value
    }
];

var option = {


    calculable : true,
    polar : [
        {
            indicator : indicator,
            radius : 130
        }
    ],
    series : [
        {
            name: '',
            type: 'radar',
            itemStyle: {
                normal: {
                    areaStyle: {
                        type: 'default'
                    }
                }
            },
            data : grades_data
        }
    ]
};

// 为echarts对象加载数据
short_first_potential_chart.setOption(option);
/////////////////////////////////////////////////////////
// 短板第二潜能
//////////////
var short_second_potential_chart = echarts.init(document.getElementById('short_second_potential'));

var indicator = [];
var quality_grades_index_by_id = {};
for (var k in quality_grades) {
    quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
}

var grade_value = [];
for (var quality_id in short_second_potential_has_qualities) {
    var tmp = {
        text: short_second_potential_has_qualities[quality_id].quality_name+"\n("+quality_grades_index_by_id[quality_id].grade+")",
        max : 100
    }

    grade_value.push(quality_grades_index_by_id[quality_id].grade);
    indicator.push(tmp);
}

var grades_data = [
    {
        value: grade_value
    }
];

var option = {


    calculable : true,
    polar : [
        {
            indicator : indicator,
            radius : 130
        }
    ],
    series : [
        {
            name: '',
            type: 'radar',
            itemStyle: {
                normal: {
                    areaStyle: {
                        type: 'default'
                    }
                }
            },
            data : grades_data
        }
    ]
};

// 为echarts对象加载数据
short_second_potential_chart.setOption(option);

//////////////////////////////////
//型格分数
var shake_chart = echarts.init(document.getElementById('shake'));
var xAxis_data = [];

var shake_grades_index_by_id = {};
for (var k in shake_grades) {
    shake_grades_index_by_id[shake_grades[k].shake_id] = shake_grades[k];
}
var interest_series_data = [];
var potential_series_data = [];
for (var k in shakes) {
    xAxis_data.push(shakes[k].name);
    interest_series_data.push(shake_grades_index_by_id[shakes[k].id].interest_grade);
    potential_series_data.push(shake_grades_index_by_id[shakes[k].id].potential_grade);
}
for (var k in shake_grades) {

}


option = {
    grid: {
        // x:0,
        // y:0,
        x2:10,
        // y2:0
    },

    tooltip : {
        trigger: 'axis',
        show:false,
    },
    legend: {
        data:['潜能', '兴趣']
    },

    calculable : false,
    xAxis : [
        {
            type : 'value',
            boundaryGap : [0, 0.01]
        }
    ],
    yAxis : [
        {
            type : 'category',
            data : xAxis_data
        }
    ],
    series : [
        {
            clickable:false,
            name:'潜能',
            type:'bar',
            data:potential_series_data
        },
        {
            clickable:false,
            name:'兴趣',
            type:'bar',
            data:interest_series_data
        }
    ]
};

shake_chart.setOption(option);


//////////////////////////////////
//28个素质模型
var quality_chart = echarts.init(document.getElementById('quality'));
var xAxis_data = [];

var quality_grades_index_by_id = {};
for (var k in quality_grades) {
    quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
}

var potential_series_data = [];
for (var k in qualities) {
    xAxis_data.push(qualities[k].name);
    potential_series_data.push(quality_grades_index_by_id[qualities[k].id].grade);
}
for (var k in quality_grades) {

}


option = {
    grid: {
        // x:0,
        // y:0,
        x2:10,
        // y2:0
    },

    tooltip : {
        trigger: 'axis',
        show:false,
    },
    legend: {
        data:[]
    },

    calculable : false,
    xAxis : [

        {
            position: "top",
            type : 'value',
            boundaryGap : [0, 0.01]
        }
    ],
    yAxis : [
        {
            type : 'category',
            data : xAxis_data
        }
    ],
    series : [
        {

            clickable:false,
            name:'兴趣',
            type:'bar',
            itemStyle: {
                normal: {
                    //好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                    color: function(params) {
                        // build a color map as your need.
                        var colorList = [
                            '#3283d6','#3283d6','#3283d6','#3283d6','#3283d6','#3283d6',
                            '#17b3c1','#17b3c1','#17b3c1','#17b3c1','#17b3c1','#17b3c1',
                            '#6fc117','#6fc117','#6fc117','#6fc117','#6fc117','#6fc117',
                            '#ff8400','#ff8400','#ff8400','#ff8400','#ff8400',
                            '#ff5b68','#ff5b68','#ff5b68','#ff5b68','#ff5b68',
                        ];
                        return colorList[params.dataIndex]
                    },
                    //以下为是否显示，显示位置和显示格式的设置了
                    label: {
                        show: true,
                        position: 'right',
//                             formatter: '{c}'
                        formatter: '{c}'
                    }
                }
            },
            data:potential_series_data
        }
    ]
};
console.log(potential_series_data);
quality_chart.setOption(option);