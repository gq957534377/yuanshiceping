$(function(){
//========================素质模型分析横向柱状图
var quality = echarts.init(document.getElementById('quality'));
var xAxis_data = [];
var colorList = [];
var colorLists = [];
var quality_grades_index_by_id = {};
for (var k in quality_grades) {
    quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
}
    var potential_series_data = [];
for (var k in qualities) {
    // xAxis_data.push(qualities[k].name);
    potential_series_data.push(quality_grades_index_by_id[qualities[k].id].grade);
}

    xAxis_data = [
        "抗压能力", "开拓能力","好胜性","决策能力","自信心","自控能力",
        "",
        "大局观","团队合作","沟通能力","服务意识","人际关系维系","灵活应变能力",
        "",
        "结果导向","上进心","责任心","坚韧性","细节处理能力","执行力",
        "",
        "领悟能力","总结能力","原则性","逻辑性","创新能力",
        "",
        "组织协调能力","影响说服能力","辅导培养能力","战略规划能力","团队领导能力"
    ]

for (var k in potential_series_data) {
    if (k == 6 || k == 13 || k == 20 || k == 26) {
        potential_series_data.push('');
    }
    if (k == 6) {
        potential_series_data.splice(6,0,'');
    } else if (k == 13) {
        potential_series_data.splice(13,0,'');
    } else if (k == 20) {
        potential_series_data.splice(20,0,'');
    } else if (k == 26) {
        potential_series_data.splice(26,0,'');
    }

}

    for (var k in potential_series_data) {
    if (potential_series_data[k] <= 40) {
        colorList.push('#F58CA0');
        colorLists.push('#BE324C');
    } else if (potential_series_data[k] >= 40.1 && potential_series_data[k] <= 64.9) {
        colorList.push('#0f67b2');
        colorLists.push('#489eec');
    } else if (potential_series_data[k] >= 65 && potential_series_data[k] <= 90) {
        colorList.push('#45BE6F');
        colorLists.push('#277442');
    } else if (potential_series_data[k] >= 90) {
        colorList.push('#F2B940');
        colorLists.push('#FF9806');
    }
}



    var canvas = document.createElement('canvas');
var ctx = canvas.getContext('2d');
canvas.width = canvas.height = 5;
ctx.textAlign = 'center';
ctx.textBaseline = 'middle';
ctx.globalAlpha = '';
ctx.font = '20px Microsoft Yahei';
ctx.rotate(-Math.PI / 4);

    option = {

	grid: [{
		top: '5%',
        bottom: '0',
		width: '90%',
		left: 0,
		containLabel: true,

	}],
    xAxis: [{
		type: 'value',
		position: 'top',
        splitNumber:5,
		max: "120",
		splitLine: {
			show: false
		},
		axisTick:false,
        axisLine:{
		    lineStyle:{
		        color:'#666666'
            }
        },
        nameGap:0
	}],
    yAxis: [{
        type: 'category',
        data: xAxis_data,
        axisLabel: {
            interval: 0,
        },
        splitLine: {
            show: false
        },
        axisLine:{
            lineStyle:{
                color:'#666666'
            }
        },
        axisTick:false,
        axisLabel: {
            show: true,
            textStyle: {
                fontSize:'10'
            }
        },
        nameGap:0
    }],

    series: [{
        type: 'bar',
        stack:'chart',
        barWidth:10,
        barMaxWidth:20,
        barGap:'20%',/*多个并排柱子设置柱子之间的间距*/
        barCategoryGap:'35%',
        label: {
            normal: {
                position: 'right',
                show: true
            }
        },
        itemStyle: {
            normal: {
                color: function(params) {
                    return new echarts.graphic.LinearGradient(0, 0, 1, 0,
                        [
                            {offset: 0, color: colorList[params.dataIndex]},
                            {offset: 1, color: colorLists[params.dataIndex]}
                        ]);
                }
            },
        },
        data: potential_series_data
    }]
};
    quality.setOption(option);

    // 组装雷达图数据方法
    gradeData = function(grade_value) {
        let data = [];
        for (var i = 1; i < 28; i++) {
            data.push({
                type: 'radar',
                symbol: 'none',
                emphasis: {
                    areaStyle: {
                        color: 'rgba(0,250,0,0.3)'
                    }
                },
                lineStyle: {
                    width: 1
                },
                data:[
                    {
                        value:(function () {
                            let data = [];
                            for (let k = 0 ; k < grade_value.length ; k++) {
                                data.push(grade_value[k]/28*i*4);
                            }
                            return data;
                        })()
                    }
                ]
            });
        };
        return data;
    };
    // 组装雷达图 option
    var radarOptions = function (indicator,grade_value) {
        let options = {
            visualMap: {
                color: ['rgba(236,51,35,0.8)','rgba(255,253,84,.8)',],
                show:false,
                opacity:1
            },
            radar: {
                indicator : indicator,
                name:{
                    textStyle: {
                        color: '#444',
                        fontSize: 10
                    },
                },
                radius:75,
            },
            series : gradeData(grade_value)
        };
        return options;
    };
//========================个人潜能分析雷达图
var analysisRadar = echarts.init(document.getElementById('analysisRadar'));
var indicator = [];
var potential_grades_index_by_id = {};
for (var k in potential_grades) {
    potential_grades_index_by_id[potential_grades[k].potential_id] = potential_grades[k];
}

var grade_value = [];
for (var potential_id in potentials) {
    var tmp = {
        text: potentials[potential_id].name+"\n("+potential_grades_index_by_id[potential_id].grade+")",
        max : 400
    }

    grade_value.push(potential_grades_index_by_id[potential_id].grade);
    indicator.push(tmp);
}

//雷达图
options = radarOptions(indicator,grade_value);

// 使用刚指定的配置项和数据显示图表。
analysisRadar.setOption(options);


//========================个人潜能分析-最优潜能雷达图
var potentialRadar1 = echarts.init(document.getElementById('potentialRadar1'));
    var indicator = [];
    var quality_grades_index_by_id = {};
    for (var k in quality_grades) {
        quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
    }

    var grade_value = [];
    for (var quality_id in best_potential_has_qualities) {
        var tmp = {
            text: best_potential_has_qualities[quality_id].quality_name+"\n("+quality_grades_index_by_id[quality_id].grade+")",
            max : 400
        }

        grade_value.push(quality_grades_index_by_id[quality_id].grade);
        indicator.push(tmp);
    }

//雷达图
options =radarOptions(indicator,grade_value);
potentialRadar1.setOption(options);

//========================个人潜能分析-优秀潜能雷达图
var second_potential_chart = echarts.init(document.getElementById('potentialRadar2'));
//雷达图
    var indicator = [];
    var quality_grades_index_by_id = {};
    for (var k in quality_grades) {
        quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
    }

    var grade_value = [];
    for (var quality_id in second_potential_has_qualities) {
        var tmp = {
            text: second_potential_has_qualities[quality_id].quality_name+"\n("+quality_grades_index_by_id[quality_id].grade+")",
            max : 400
        }

        grade_value.push(quality_grades_index_by_id[quality_id].grade);
        indicator.push(tmp);
    }
options = radarOptions(indicator,grade_value);
// 使用刚指定的配置项和数据显示图表。
second_potential_chart.setOption(options);

//========================个人潜能分析-较优潜能雷达图
var third_potential_chart = echarts.init(document.getElementById('potentialRadar3'));
//雷达图
    var indicator = [];
    var quality_grades_index_by_id = {};
    for (var k in quality_grades) {
        quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
    }
    var grade_value = [];
    for (var quality_id in third_potential_has_qualities) {
        var tmp = {
            text: third_potential_has_qualities[quality_id].quality_name+"\n("+quality_grades_index_by_id[quality_id].grade+")",
            max : 400
        }

        grade_value.push(quality_grades_index_by_id[quality_id].grade);
        indicator.push(tmp);
    }
    options = radarOptions(indicator,grade_value);
    third_potential_chart.setOption(options);


//========================个人潜能分析-劣势1潜能雷达图
var inferiorityRadar = echarts.init(document.getElementById('inferiorityRadar1'));
//雷达图
    var indicator = [];
    var quality_grades_index_by_id = {};
    for (var k in quality_grades) {
        quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
    }

    var grade_value = [];
    for (var quality_id in short_first_potential_has_qualities) {
        var tmp = {
            text: short_first_potential_has_qualities[quality_id].quality_name+"\n("+quality_grades_index_by_id[quality_id].grade+")",
            max : 400
        }

        grade_value.push(quality_grades_index_by_id[quality_id].grade);
        indicator.push(tmp);
    }

    options = radarOptions(indicator,grade_value);
    inferiorityRadar.setOption(options);

//========================个人潜能分析-劣势2潜能雷达图
    var short_second_potential_chart = echarts.init(document.getElementById('inferiorityRadar2'));

    var indicator = [];
    var quality_grades_index_by_id = {};
    for (var k in quality_grades) {
        quality_grades_index_by_id[quality_grades[k].quality_id] = quality_grades[k];
    }

    var grade_value = [];
    for (var quality_id in short_second_potential_has_qualities) {
        var tmp = {
            text: short_second_potential_has_qualities[quality_id].quality_name+"\n("+quality_grades_index_by_id[quality_id].grade+")",
            max : 400
        }

        grade_value.push(quality_grades_index_by_id[quality_id].grade);
        indicator.push(tmp);
    }
    options = radarOptions(indicator,grade_value);
    short_second_potential_chart.setOption(options);


//========================个人潜能分析-个人专业兴趣解析雷达图
var interestRadar = echarts.init(document.getElementById('interestRadar'));
    var indicator = [];
    var interest_grades_index_by_id = {};
    for (var k in interest_grades) {
        interest_grades_index_by_id[interest_grades[k].interest_id] = interest_grades[k];
    }

    var grade_value = [];
    for (var interest_id in interests) {
        var tmp = {
            text: interests[interest_id].name+"\n("+interest_grades_index_by_id[interest_id].grade+")",
            max : 400
        }

        grade_value.push(interest_grades_index_by_id[interest_id].grade);
        indicator.push(tmp);
    }

//雷达图
options = radarOptions(indicator,grade_value);
// 使用刚指定的配置项和数据显示图表。
interestRadar.setOption(options);


//========================最佳匹配点解析横向柱状图
var matchGraph = echarts.init(document.getElementById('matchGraph'));
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
        potential_series_data.push(Math.floor(shake_grades_index_by_id[shakes[k].id].potential_grade * 100) / 100 );
    }

    var option = {
	tooltip: {
		trigger: 'axis',
		axisPointer: {
			type: 'shadow'
		}
	},
	legend: {
		data: ['潜能', '兴趣']
	},
	grid: {
		left: '0',
		right: '10',
		bottom: '0',
		top: '6%',
		containLabel: true
	},
	xAxis: {
		type: 'value',
		position: 'top',
		boundaryGap: false,
        max : 100,
        splitLine: {
			show: false
		},
		axisTick:false,
	},
	yAxis: {
		type: 'category',

		axisTick: { //坐标轴小标记
			show: false
		},
		
		splitLine: {
			lineStyle: {
				color: ['rgba(255,255,255,0.3)']
			}
		},

		data: xAxis_data
    },
	
	series: [{
			name:'潜能',
			clickable: false,
			type: 'bar',
            barGap:'20%',/*多个并排柱子设置柱子之间的间距*/
            barCategoryGap:'35%',
			itemStyle: {
				normal: {
					color: new echarts.graphic.LinearGradient(0, 0, 1, 0, [{
						offset: 0,
						color: '#6CB6FA'
					}, {
						offset: 1,
						color: '#0F67B2'
					}]),
					
				}
			},
			data: potential_series_data
		},
		{
			name:'兴趣',
			type: 'bar',
			itemStyle: {
				normal: {
					color: new echarts.graphic.LinearGradient(0, 0, 1, 0, [{
						offset: 0,
						color: '#F694BD'
					}, {
						offset: 1,
						color: '#BD155C'
					}]),
					
				}
			},
			data: interest_series_data
		}
	]
};
// 使用刚指定的配置项和数据显示图表。
matchGraph.setOption(option);

})