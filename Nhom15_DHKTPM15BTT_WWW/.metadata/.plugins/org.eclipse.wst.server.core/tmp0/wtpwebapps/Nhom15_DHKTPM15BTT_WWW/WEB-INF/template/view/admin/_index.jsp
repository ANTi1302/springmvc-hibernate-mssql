<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<script type="text/javascript">
(function($) {
	  'use strict';
	  $(function() {
	    if ($("#audience-chart").length) {
	      var AudienceChartCanvas = $("#audience-chart").get(0).getContext("2d");
	      var AudienceChart = new Chart(AudienceChartCanvas, {
	        type: 'bar',
	        data: {
	          labels: [
	        	  <c:forEach items="${list }" var="l">
	        	  "${l[0] }",
	        	  </c:forEach>
	        	  ],
	          datasets: [
	            {
	              type: 'line',
	              fill: false,
	              data: [
	            	  <c:forEach items="${list }" var="l">
	            	  ${l[3] }, 
	            	  </c:forEach>,
	            	  ],
	              borderColor: '#ff4c5b'
	            },
	            {
	              label: 'Min Price',
	              data: [
	            	  <c:forEach items="${list }" var="l">
	            	  ${l[3] }, 
	            	  </c:forEach>
	            	  ],
	              backgroundColor: '#6640b2'
	            },
	            {
	                label: 'Max Price',
	                data: [
	                	 <c:forEach items="${list }" var="l">
		            	  ${l[4] }, 
		            	  </c:forEach>, 
	                	],
	                backgroundColor: '#1cbccd'
	              }
	          ]
	        },
	        options: {
	          responsive: true,
	          maintainAspectRatio: true,
	          layout: {
	            padding: {
	              left: 0,
	              right: 0,
	              top: 20,
	              bottom: 0
	            }
	          },
	          scales: {
	            yAxes: [{
	              display: true,
	              gridLines: {
	                display: true,
	                drawBorder: false,
	                color: "#f8f8f8",
	                zeroLineColor: "#f8f8f8"
	              },
	              ticks: {
	                display: true,
	                min: 0,
	                max: 400,
	                stepSize: 100,
	                fontColor: "#b1b0b0",
	                fontSize: 10,
	                padding: 10
	              }
	            }],
	            xAxes: [{
	              stacked: false,
	              ticks: {
	                beginAtZero: true,
	                fontColor: "#b1b0b0",
	                fontSize: 10
	              },
	              gridLines: {
	                color: "rgba(0, 0, 0, 0)",
	                display: false
	              },
	              barPercentage: .9,
	              categoryPercentage: .7,
	            }]
	          },
	          legend: {
	            display: false
	          },
	          elements: {
	            point: {
	              radius: 3,
	              backgroundColor: '#ff4c5b'
	            }
	          }
	        },
	      });
	    }
		   
	    if ($("#balance-chart").length) {
	      var areaData = {
	        labels: [
	        	<c:forEach items="${listyear }" var="y">
	        	  "${y[0] }",
	        	  </c:forEach>
	        	],
	        datasets: [
	          {
	            data: [
	            	 <c:forEach items="${listmonth}" var="y">
	            	  ${y[4] }, 
	            	  </c:forEach>, 
	            	
	            	],
	            borderColor: [
	              '#1faf47'
	            ],
	            borderWidth: 3,
	            fill: false,
	            label: "services"
	          },
	        ]
	      };
	      var areaOptions = {
	        responsive: true,
	        maintainAspectRatio: true,
	        plugins: {
	          filler: {
	            propagate: false
	          }
	        },
	        scales: {
	          xAxes: [{
	            display: true,
	            ticks: {
	              display: false,
	            },
	            gridLines: {
	              display: false,
	              drawBorder: false,
	              color: 'transparent',
	              zeroLineColor: '#eeeeee'
	            }
	          }],
	          yAxes: [{
	            display: true,
	            ticks: {
	              display: true,
	              autoSkip: false,
	              maxRotation: 0,
	              stepSize: 100,
	              fontColor: "#000",
	              fontSize: 14,
	              padding: 18,
	              stepSize: 1000,
	              max: 3000,
	              fontSize: 10,
	              fontColor: "#b1b0b0",
	              callback: function(value) {
	                var ranges = [
	                    { divider: 1e6, suffix: 'M' },
	                    { divider: 1e3, suffix: 'k' }
	                ];
	                function formatNumber(n) {
	                    for (var i = 0; i < ranges.length; i++) {
	                      if (n >= ranges[i].divider) {
	                          return (n / ranges[i].divider).toString() + ranges[i].suffix;
	                      }
	                    }
	                    return n;
	                }
	                return formatNumber(value);
	              }
	            },
	            gridLines: {
	              drawBorder: false,
	              color: "#f8f8f8",
	              zeroLineColor: "#f8f8f8"
	            }
	          }]
	        },
	        legend: {
	          display: false
	        },
	        tooltips: {
	          enabled: true
	        },
	        elements: {
	          line: {
	            tension: 0
	          },
	          point: {
	            radius: 0
	          }
	        }
	      }
	      var balanceChartCanvas = $("#balance-chart").get(0).getContext("2d");
	      var balanceChart = new Chart(balanceChartCanvas, {
	        type: 'line',
	        data: areaData,
	        options: areaOptions
	      });
	    }

	    if ($("#task-chart").length) {
	      var taskChartCanvas = $("#task-chart").get(0).getContext("2d");
	      var taskChart = new Chart(taskChartCanvas, {
	        type: 'bar',
	        data: {
	          labels: [
	        	  <c:forEach items="${listmonth }" var="y">
	        	  "${y[0] }",
	        	  </c:forEach>
	        	  ],
	          datasets: [{
	              label: 'Profit',
	              data: [
	            	  <c:forEach items="${listmonth}" var="y">
	            	  ${y[5] }, 
	            	  </c:forEach>
	            	  ],
	              backgroundColor: '#f83e37'
	            }
	          ]
	        },
	        options: {
	          responsive: true,
	          maintainAspectRatio: true,
	          layout: {
	            padding: {
	              left: 0,
	              right: 0,
	              top: 0,
	              bottom: 0
	            }
	          },
	          scales: {
	            yAxes: [{
	              display: true,
	              gridLines: {
	                drawBorder: false,
	                color: '#f1f3f9',
	                zeroLineColor: '#f1f3f9'
	              },
	              ticks: {
	                display: true,
	                fontColor: "#9fa0a2",
	                fontSize: 10,
	                padding: 0,
	                stepSize: 10,
	                min: -10,
	                max: 10
	              }
	            }],
	            xAxes: [{
	              display: false,
	              stacked: false,
	              categoryPercentage: 1,
	              ticks: {
	                display: false,
	                beginAtZero: false,
	                display: true,
	                padding: 10,
	                fontSize: 11
	              },
	              gridLines: {
	                color: "rgba(0, 0, 0, 0)",
	                display: false
	              },
	              position: 'bottom',
	              barPercentage: 0.7
	            }]
	          },
	          legend: {
	            display: false
	          },
	          elements: {
	            point: {
	              radius: 0
	            }
	          }
	        }
	      });
	    }

	    if ($("#regional-chart").length) {
	      var regionalChartCanvas = $("#regional-chart").get(0).getContext("2d");
	      var regionalChart = new Chart(regionalChartCanvas, {
	        type: 'horizontalBar',
	        data: {
	          labels: [
	        	  <c:forEach items="${listsale }" var="c">
	        	  "${c[0] }",
	        	  </c:forEach>
	        	  ],
	          datasets: [
	            {
	              label: 'Max',
	              data: [
	            	  <c:forEach items="${listsale}" var="c">
	            	  ${c[4] }, 
	            	  </c:forEach>
	            	  ],
	              backgroundColor: '#1cbccd'
	            },
	            {
	              label: 'Min',
	              data: [
	            	  <c:forEach items="${listsale}" var="c">
	            	  ${c[3] }, 
	            	  </c:forEach>
	            	  ],
	              backgroundColor: '#ffbf36'
	            }
	          ]
	        },
	        options: {
	          responsive: true,
	          maintainAspectRatio: true,
	          layout: {
	            padding: {
	              left: -7,
	              right: 0,
	              top: 0,
	              bottom: 0
	            }
	          },
	          scales: {
	            yAxes: [{
	              display: true,
	              gridLines: {
	                display: false,
	                drawBorder: false
	              },
	              ticks: {
	                display: true,
	                min: 0,
	                max: 400,
	                stepSize: 100,
	                fontColor: "#b1b0b0",
	                fontSize: 10,
	                padding: 10
	              },
	              barPercentage: 1,
	              categoryPercentage: .6,
	            }],
	            xAxes: [{
	              display: true,
	              stacked: false,
	              ticks: {
	                display: false,
	                beginAtZero: true,
	                fontColor: "#b1b0b0",
	                fontSize: 10
	              },
	              gridLines: {
	                display: true,
	                drawBorder: false,
	                lineWidth: 1,
	                color: "#f5f5f5",
	                zeroLineColor: "#f5f5f5"
	              }
	            }]
	          },
	          legend: {
	            display: false
	          },
	          elements: {
	            point: {
	              radius: 3,
	              backgroundColor: '#ff4c5b'
	            }
	          },
	          legendCallback : function(chart) {
	            var text = [];
	              text.push('<div class="item me-4 d-flex align-items-center">');
	                text.push('<div class="item-box me-2" style=" background-color: ' + chart.data.datasets[0].backgroundColor + ' "></div><p class="text-black mb-0"> ' + chart.data.datasets[0].label + '</p>');
	              text.push('</div>');
	              text.push('<div class="item d-flex align-items-center">');
	                text.push('<div class="item-box me-2" style=" background-color: ' + chart.data.datasets[1].backgroundColor + '"></div><p class="text-black mb-0"> ' + chart.data.datasets[1].label + ' </p>');
	              text.push('</div>');
	            return text.join('');
	          }
	        },
	      });
	      document.querySelector('#regional-chart-legend').innerHTML = regionalChart.generateLegend();
	    }

	    if ($("#activity-chart").length) {
	      var activityChartCanvas = $("#activity-chart").get(0).getContext("2d");
	      var activityChart = new Chart(activityChartCanvas, {
	        type: 'bar',
	        data: {
	          labels: [
	        	  <c:forEach items="${listquarter }" var="q">
	        	  "${q[0] }",
	        	  </c:forEach>
	        	  ],
	          datasets: [{
	              label: 'Profit',
	              data: [
	            	  <c:forEach items="${listquarter }" var="q">
	            	  ${q[2]},
	            	  </c:forEach>
	            	  ],
	              backgroundColor: '#ffbf36'
	            }
	          ]
	        },
	        options: {
	          responsive: true,
	          maintainAspectRatio: true,
	          layout: {
	            padding: {
	              left: 0,
	              right: 0,
	              top: 0,
	              bottom: 0
	            }
	          },
	          scales: {
	            yAxes: [{
	              display: false,
	              gridLines: {
	                display: false,
	                drawBorder: false
	              },
	              ticks: {
	                display: false,
	                min: 0,
	                max: 600,
	                stepSize: 100,
	                fontColor: "#fff"
	              }
	            }],
	            xAxes: [{
	              display: false,
	              stacked: true,
	              ticks: {
	                beginAtZero: true,
	                fontColor: "#fff"
	              },
	              gridLines: {
	                color: "rgba(0, 0, 0, 0)",
	                display: false
	              },
	              barPercentage: .8,
	              categoryPercentage: .9,
	            }]
	          },
	          legend: {
	            display: false
	          },
	          elements: {
	            point: {
	              radius: 0
	            }
	          }
	        }
	      });
	    }

	  });
	})(jQuery);

</script>
</head>
<body>

</body>
</html>