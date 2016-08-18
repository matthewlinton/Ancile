@echo off
route print 2>nul >routes.tmp
findstr 2.21.16.151 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 2.21.16.151/32 0.0.0.0 >nul 2>&1
  echo  - blocked 2.21.16.151
)
findstr 2.21.236.193 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 2.21.236.193/32 0.0.0.0 >nul 2>&1
  echo  - blocked 2.21.236.193
)
findstr 2.22.70.61 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 2.22.70.61/32 0.0.0.0 >nul 2>&1
  echo  - blocked 2.22.70.61
)
findstr 2.22.71.158 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 2.22.71.158/32 0.0.0.0 >nul 2>&1
  echo  - blocked 2.22.71.158
)
findstr 2.22.75.120 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 2.22.75.120/32 0.0.0.0 >nul 2>&1
  echo  - blocked 2.22.75.120
)
findstr 2.22.77.127 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 2.22.77.127/32 0.0.0.0 >nul 2>&1
  echo  - blocked 2.22.77.127
)
findstr 2.22.87.71 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 2.22.87.71/32 0.0.0.0 >nul 2>&1
  echo  - blocked 2.22.87.71
)
findstr 2.22.245.247 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 2.22.245.247/32 0.0.0.0 >nul 2>&1
  echo  - blocked 2.22.245.247
)
findstr 4.27.253.126 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 4.27.253.126/32 0.0.0.0 >nul 2>&1
  echo  - blocked 4.27.253.126
)
findstr 4.27.253.253 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 4.27.253.253/32 0.0.0.0 >nul 2>&1
  echo  - blocked 4.27.253.253
)
findstr 4.27.254.254 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 4.27.254.254/32 0.0.0.0 >nul 2>&1
  echo  - blocked 4.27.254.254
)
findstr 8.12.223.125 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 8.12.223.125/32 0.0.0.0 >nul 2>&1
  echo  - blocked 8.12.223.125
)
findstr 8.12.223.254 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 8.12.223.254/32 0.0.0.0 >nul 2>&1
  echo  - blocked 8.12.223.254
)
findstr 8.26.206.252 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 8.26.206.252/32 0.0.0.0 >nul 2>&1
  echo  - blocked 8.26.206.252
)
findstr 8.26.207.126 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 8.26.207.126/32 0.0.0.0 >nul 2>&1
  echo  - blocked 8.26.207.126
)
findstr 8.26.209.126 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 8.26.209.126/32 0.0.0.0 >nul 2>&1
  echo  - blocked 8.26.209.126
)
findstr 8.26.210.126 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 8.26.210.126/32 0.0.0.0 >nul 2>&1
  echo  - blocked 8.26.210.126
)
findstr 8.254.56.254 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 8.254.56.254/32 0.0.0.0 >nul 2>&1
  echo  - blocked 8.254.56.254
)
findstr 8.254.233.126 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 8.254.233.126/32 0.0.0.0 >nul 2>&1
  echo  - blocked 8.254.233.126
)
findstr 8.254.240.126 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 8.254.240.126/32 0.0.0.0 >nul 2>&1
  echo  - blocked 8.254.240.126
)
findstr 8.254.248.254 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 8.254.248.254/32 0.0.0.0 >nul 2>&1
  echo  - blocked 8.254.248.254
)
findstr 13.107.4.50 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 13.107.4.50/32 0.0.0.0 >nul 2>&1
  echo  - blocked 13.107.4.50
)
findstr 23.2.16.8 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.2.16.8/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.2.16.8
)
findstr 23.2.16.10 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.2.16.10/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.2.16.10
)
findstr 23.3.59.68 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.3.59.68/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.3.59.68
)
findstr 23.3.59.213 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.3.59.213/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.3.59.213
)
findstr 23.33.25.34 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.33.25.34/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.33.25.34
)
findstr 23.33.31.59 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.33.31.59/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.33.31.59
)
findstr 23.33.106.110 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.33.106.110/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.33.106.110
)
findstr 23.46.18.40 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.46.18.40/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.46.18.40
)
findstr 23.46.19.158 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.46.19.158/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.46.19.158
)
findstr 23.73.138.65 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.73.138.65/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.73.138.65
)
findstr 23.96.212.225 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.96.212.225/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.96.212.225
)
findstr 23.98.49.14 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.98.49.14/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.98.49.14
)
findstr 23.202.16.64 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.202.16.64/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.202.16.64
)
findstr 23.202.21.236 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.202.21.236/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.202.21.236
)
findstr 23.202.58.89 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.202.58.89/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.202.58.89
)
findstr 23.202.61.139 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 23.202.61.139/32 0.0.0.0 >nul 2>&1
  echo  - blocked 23.202.61.139
)
findstr 31.13.65.2 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 31.13.65.2/32 0.0.0.0 >nul 2>&1
  echo  - blocked 31.13.65.2
)
findstr 31.13.69.193 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 31.13.69.193/32 0.0.0.0 >nul 2>&1
  echo  - blocked 31.13.69.193
)
findstr 40.114.54.223 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 40.114.54.223/32 0.0.0.0 >nul 2>&1
  echo  - blocked 40.114.54.223
)
findstr 40.117.88.112 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 40.117.88.112/32 0.0.0.0 >nul 2>&1
  echo  - blocked 40.117.88.112
)
findstr 46.33.76.33 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 46.33.76.33/32 0.0.0.0 >nul 2>&1
  echo  - blocked 46.33.76.33
)
findstr 46.33.76.57 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 46.33.76.57/32 0.0.0.0 >nul 2>&1
  echo  - blocked 46.33.76.57
)
findstr 54.243.135.126 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 54.243.135.126/32 0.0.0.0 >nul 2>&1
  echo  - blocked 54.243.135.126
)
findstr 63.148.207.70 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.148.207.70/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.148.207.70
)
findstr 63.148.207.80 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.148.207.80/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.148.207.80
)
findstr 63.148.207.88 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.148.207.88/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.148.207.88
)
findstr 63.148.207.95 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.148.207.95/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.148.207.95
)
findstr 63.148.207.97 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.148.207.97/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.148.207.97
)
findstr 63.148.207.151 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.148.207.151/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.148.207.151
)
findstr 63.241.108.111 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.241.108.111/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.241.108.111
)
findstr 63.241.108.124 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.241.108.124/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.241.108.124
)
findstr 63.243.243.34 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.243.243.34/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.243.243.34
)
findstr 63.243.243.35 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.243.243.35/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.243.243.35
)
findstr 63.243.243.48 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.243.243.48/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.243.243.48
)
findstr 63.243.243.49 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.243.243.49/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.243.243.49
)
findstr 63.243.243.58 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.243.243.58/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.243.243.58
)
findstr 63.243.243.67 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 63.243.243.67/32 0.0.0.0 >nul 2>&1
  echo  - blocked 63.243.243.67
)
findstr 64.4.6.100 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 64.4.6.100/32 0.0.0.0 >nul 2>&1
  echo  - blocked 64.4.6.100
)
findstr 64.4.54.18 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 64.4.54.18/32 0.0.0.0 >nul 2>&1
  echo  - blocked 64.4.54.18
)
findstr 64.4.54.22 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 64.4.54.22/32 0.0.0.0 >nul 2>&1
  echo  - blocked 64.4.54.22
)
findstr 64.4.54.32 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 64.4.54.32/32 0.0.0.0 >nul 2>&1
  echo  - blocked 64.4.54.32
)
findstr 64.4.54.98 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 64.4.54.98/32 0.0.0.0 >nul 2>&1
  echo  - blocked 64.4.54.98
)
findstr 64.4.54.153 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 64.4.54.153/32 0.0.0.0 >nul 2>&1
  echo  - blocked 64.4.54.153
)
findstr 64.4.54.165 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 64.4.54.165/32 0.0.0.0 >nul 2>&1
  echo  - blocked 64.4.54.165
)
findstr 64.233.185.148 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 64.233.185.148/32 0.0.0.0 >nul 2>&1
  echo  - blocked 64.233.185.148
)
findstr 64.233.185.149 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 64.233.185.149/32 0.0.0.0 >nul 2>&1
  echo  - blocked 64.233.185.149
)
findstr 65.52.100.7 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.100.7/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.100.7
)
findstr 65.52.100.9 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.100.9/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.100.9
)
findstr 65.52.100.11 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.100.11/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.100.11
)
findstr 65.52.100.91 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.100.91/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.100.91
)
findstr 65.52.100.92 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.100.92/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.100.92
)
findstr 65.52.100.93 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.100.93/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.100.93
)
findstr 65.52.100.94 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.100.94/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.100.94
)
findstr 65.52.108.2 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.2/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.2
)
findstr 65.52.108.11 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.11/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.11
)
findstr 65.52.108.27 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.27/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.27
)
findstr 65.52.108.33 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.33/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.33
)
findstr 65.52.108.52 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.52/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.52
)
findstr 65.52.108.56 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.56/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.56
)
findstr 65.52.108.59 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.59/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.59
)
findstr 65.52.108.90 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.90/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.90
)
findstr 65.52.108.92 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.92/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.92
)
findstr 65.52.108.153 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.153/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.153
)
findstr 65.52.108.154 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.154/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.154
)
findstr 65.52.108.163 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.163/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.163
)
findstr 65.52.108.251 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.251/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.251
)
findstr 65.52.108.254 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.108.254/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.108.254
)
findstr 65.52.161.64 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.52.161.64/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.52.161.64
)
findstr 65.54.192.248 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.54.192.248/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.54.192.248
)
findstr 65.54.225.167 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.54.225.167/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.54.225.167
)
findstr 65.54.226.187 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.54.226.187/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.54.226.187
)
findstr 65.55.2.2 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.2.2/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.2.2
)
findstr 65.55.29.238 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.29.238/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.29.238
)
findstr 65.55.39.10 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.39.10/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.39.10
)
findstr 65.55.44.82 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.44.82/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.44.82
)
findstr 65.55.44.85 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.44.85/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.44.85
)
findstr 65.55.44.108 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.44.108/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.44.108
)
findstr 65.55.44.109 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.44.109/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.44.109
)
findstr 65.55.52.23 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.52.23/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.52.23
)
findstr 65.55.113.11 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.113.11/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.113.11
)
findstr 65.55.113.12 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.113.12/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.113.12
)
findstr 65.55.113.13 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.113.13/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.113.13
)
findstr 65.55.128.80 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.128.80/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.128.80
)
findstr 65.55.128.81 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.128.81/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.128.81
)
findstr 65.55.138.110 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.138.110/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.138.110
)
findstr 65.55.138.111 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.138.111/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.138.111
)
findstr 65.55.149.120 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.149.120/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.149.120
)
findstr 65.55.227.188 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.227.188/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.227.188
)
findstr 65.55.252.43 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.252.43/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.252.43
)
findstr 65.55.252.63 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.252.63/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.252.63
)
findstr 65.55.252.71 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.252.71/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.252.71
)
findstr 65.55.252.93 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.252.93/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.252.93
)
findstr 65.55.252.190 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 65.55.252.190/32 0.0.0.0 >nul 2>&1
  echo  - blocked 65.55.252.190
)
findstr 66.119.144.189 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.119.144.189/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.119.144.189
)
findstr 66.119.147.131 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.119.147.131/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.119.147.131
)
findstr 66.119.152.205 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.119.152.205/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.119.152.205
)
findstr 66.235.138.193 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.235.138.193/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.235.138.193
)
findstr 66.235.138.194 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.235.138.194/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.235.138.194
)
findstr 66.235.138.195 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.235.138.195/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.235.138.195
)
findstr 66.235.139.17 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.235.139.17/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.235.139.17
)
findstr 66.235.139.18 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.235.139.18/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.235.139.18
)
findstr 66.235.139.19 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.235.139.19/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.235.139.19
)
findstr 66.235.139.205 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.235.139.205/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.235.139.205
)
findstr 66.235.139.206 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.235.139.206/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.235.139.206
)
findstr 66.235.139.207 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 66.235.139.207/32 0.0.0.0 >nul 2>&1
  echo  - blocked 66.235.139.207
)
findstr 68.67.152.56 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.56/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.56
)
findstr 68.67.152.58 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.58/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.58
)
findstr 68.67.152.61 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.61/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.61
)
findstr 68.67.152.92 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.92/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.92
)
findstr 68.67.152.94 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.94/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.94
)
findstr 68.67.152.97 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.97/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.97
)
findstr 68.67.152.103 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.103/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.103
)
findstr 68.67.152.109 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.109/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.109
)
findstr 68.67.152.110 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.110/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.110
)
findstr 68.67.152.111 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.111/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.111
)
findstr 68.67.152.112 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.112/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.112
)
findstr 68.67.152.113 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.113/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.113
)
findstr 68.67.152.120 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.120/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.120
)
findstr 68.67.152.129 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.129/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.129
)
findstr 68.67.152.131 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.131/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.131
)
findstr 68.67.152.132 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.132/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.132
)
findstr 68.67.152.172 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.172/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.172
)
findstr 68.67.152.173 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.173/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.173
)
findstr 68.67.152.174 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.174/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.174
)
findstr 68.67.152.215 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.215/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.215
)
findstr 68.67.152.218 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.218/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.218
)
findstr 68.67.152.235 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.235/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.235
)
findstr 68.67.152.236 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.236/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.236
)
findstr 68.67.152.254 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.152.254/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.152.254
)
findstr 68.67.153.37 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.37/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.37
)
findstr 68.67.153.39 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.39/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.39
)
findstr 68.67.153.40 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.40/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.40
)
findstr 68.67.153.41 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.41/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.41
)
findstr 68.67.153.44 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.44/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.44
)
findstr 68.67.153.56 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.56/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.56
)
findstr 68.67.153.87 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.87/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.87
)
findstr 68.67.153.89 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.89/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.89
)
findstr 68.67.153.148 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.148/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.148
)
findstr 68.67.153.173 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.173/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.173
)
findstr 68.67.153.180 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.180/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.180
)
findstr 68.67.153.183 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.183/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.183
)
findstr 68.67.153.188 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.188/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.188
)
findstr 68.67.153.208 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.208/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.208
)
findstr 68.67.153.209 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.209/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.209
)
findstr 68.67.153.244 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.244/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.244
)
findstr 68.67.153.248 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.248/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.248
)
findstr 68.67.153.251 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.251/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.251
)
findstr 68.67.153.253 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.153.253/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.153.253
)
findstr 68.67.176.16 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.16/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.16
)
findstr 68.67.176.47 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.47/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.47
)
findstr 68.67.176.50 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.50/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.50
)
findstr 68.67.176.51 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.51/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.51
)
findstr 68.67.176.63 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.63/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.63
)
findstr 68.67.176.68 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.68/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.68
)
findstr 68.67.176.126 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.126/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.126
)
findstr 68.67.176.129 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.129/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.129
)
findstr 68.67.176.132 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.132/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.132
)
findstr 68.67.176.145 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.145/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.145
)
findstr 68.67.176.152 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 68.67.176.152/32 0.0.0.0 >nul 2>&1
  echo  - blocked 68.67.176.152
)
findstr 72.246.43.9 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.9/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.9
)
findstr 72.246.43.10 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.10/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.10
)
findstr 72.246.43.16 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.16/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.16
)
findstr 72.246.43.25 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.25/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.25
)
findstr 72.246.43.26 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.26/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.26
)
findstr 72.246.43.33 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.33/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.33
)
findstr 72.246.43.34 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.34/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.34
)
findstr 72.246.43.40 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.40/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.40
)
findstr 72.246.43.48 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.48/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.48
)
findstr 72.246.43.56 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.56/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.56
)
findstr 72.246.43.128 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 72.246.43.128/32 0.0.0.0 >nul 2>&1
  echo  - blocked 72.246.43.128
)
findstr 74.125.21.148 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 74.125.21.148/32 0.0.0.0 >nul 2>&1
  echo  - blocked 74.125.21.148
)
findstr 74.125.21.149 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 74.125.21.149/32 0.0.0.0 >nul 2>&1
  echo  - blocked 74.125.21.149
)
findstr 93.184.215.200 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 93.184.215.200/32 0.0.0.0 >nul 2>&1
  echo  - blocked 93.184.215.200
)
findstr 94.245.121.176 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 94.245.121.176/32 0.0.0.0 >nul 2>&1
  echo  - blocked 94.245.121.176
)
findstr 94.245.121.177 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 94.245.121.177/32 0.0.0.0 >nul 2>&1
  echo  - blocked 94.245.121.177
)
findstr 94.245.121.178 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 94.245.121.178/32 0.0.0.0 >nul 2>&1
  echo  - blocked 94.245.121.178
)
findstr 94.245.121.179 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 94.245.121.179/32 0.0.0.0 >nul 2>&1
  echo  - blocked 94.245.121.179
)
findstr 95.101.128.137 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 95.101.128.137/32 0.0.0.0 >nul 2>&1
  echo  - blocked 95.101.128.137
)
findstr 95.101.128.195 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 95.101.128.195/32 0.0.0.0 >nul 2>&1
  echo  - blocked 95.101.128.195
)
findstr 96.17.204.25 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 96.17.204.25/32 0.0.0.0 >nul 2>&1
  echo  - blocked 96.17.204.25
)
findstr 96.17.204.167 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 96.17.204.167/32 0.0.0.0 >nul 2>&1
  echo  - blocked 96.17.204.167
)
findstr 104.45.136.42 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.45.136.42/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.45.136.42
)
findstr 104.69.113.196 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.69.113.196/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.69.113.196
)
findstr 104.69.140.179 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.69.140.179/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.69.140.179
)
findstr 104.69.140.181 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.69.140.181/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.69.140.181
)
findstr 104.70.210.203 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.70.210.203/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.70.210.203
)
findstr 104.73.211.105 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.73.211.105/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.73.211.105
)
findstr 104.73.211.159 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.73.211.159/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.73.211.159
)
findstr 104.73.215.154 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.73.215.154/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.73.215.154
)
findstr 104.73.217.91 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.73.217.91/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.73.217.91
)
findstr 104.73.220.170 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.73.220.170/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.73.220.170
)
findstr 104.107.13.214 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 104.107.13.214/32 0.0.0.0 >nul 2>&1
  echo  - blocked 104.107.13.214
)
findstr 107.20.234.199 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 107.20.234.199/32 0.0.0.0 >nul 2>&1
  echo  - blocked 107.20.234.199
)
findstr 107.21.246.114 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 107.21.246.114/32 0.0.0.0 >nul 2>&1
  echo  - blocked 107.21.246.114
)
findstr 131.107.113.238 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 131.107.113.238/32 0.0.0.0 >nul 2>&1
  echo  - blocked 131.107.113.238
)
findstr 131.253.14.76 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 131.253.14.76/32 0.0.0.0 >nul 2>&1
  echo  - blocked 131.253.14.76
)
findstr 131.253.14.121 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 131.253.14.121/32 0.0.0.0 >nul 2>&1
  echo  - blocked 131.253.14.121
)
findstr 131.253.14.194 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 131.253.14.194/32 0.0.0.0 >nul 2>&1
  echo  - blocked 131.253.14.194
)
findstr 131.253.34.230 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 131.253.34.230/32 0.0.0.0 >nul 2>&1
  echo  - blocked 131.253.34.230
)
findstr 131.253.40.47 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 131.253.40.47/32 0.0.0.0 >nul 2>&1
  echo  - blocked 131.253.40.47
)
findstr 131.253.40.53 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 131.253.40.53/32 0.0.0.0 >nul 2>&1
  echo  - blocked 131.253.40.53
)
findstr 131.253.40.64 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 131.253.40.64/32 0.0.0.0 >nul 2>&1
  echo  - blocked 131.253.40.64
)
findstr 131.253.40.109 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 131.253.40.109/32 0.0.0.0 >nul 2>&1
  echo  - blocked 131.253.40.109
)
findstr 134.170.30.221 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.30.221/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.30.221
)
findstr 134.170.51.248 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.51.248/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.51.248
)
findstr 134.170.52.151 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.52.151/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.52.151
)
findstr 134.170.53.29 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.53.29/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.53.29
)
findstr 134.170.53.30 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.53.30/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.53.30
)
findstr 134.170.58.121 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.58.121/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.58.121
)
findstr 134.170.58.123 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.58.123/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.58.123
)
findstr 134.170.58.125 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.58.125/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.58.125
)
findstr 134.170.58.189 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.58.189/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.58.189
)
findstr 134.170.107.176 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.107.176/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.107.176
)
findstr 134.170.109.200 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.109.200/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.109.200
)
findstr 134.170.119.140 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.119.140/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.119.140
)
findstr 134.170.184.133 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.184.133/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.184.133
)
findstr 134.170.185.125 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.185.125/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.185.125
)
findstr 134.170.188.139 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.188.139/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.188.139
)
findstr 134.170.188.248 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 134.170.188.248/32 0.0.0.0 >nul 2>&1
  echo  - blocked 134.170.188.248
)
findstr 137.117.100.176 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 137.117.100.176/32 0.0.0.0 >nul 2>&1
  echo  - blocked 137.117.100.176
)
findstr 157.55.129.21 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 157.55.129.21/32 0.0.0.0 >nul 2>&1
  echo  - blocked 157.55.129.21
)
findstr 157.56.23.91 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 157.56.23.91/32 0.0.0.0 >nul 2>&1
  echo  - blocked 157.56.23.91
)
findstr 157.56.77.139 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 157.56.77.139/32 0.0.0.0 >nul 2>&1
  echo  - blocked 157.56.77.139
)
findstr 157.56.96.54 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 157.56.96.54/32 0.0.0.0 >nul 2>&1
  echo  - blocked 157.56.96.54
)
findstr 157.56.96.80 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 157.56.96.80/32 0.0.0.0 >nul 2>&1
  echo  - blocked 157.56.96.80
)
findstr 157.56.96.208 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 157.56.96.208/32 0.0.0.0 >nul 2>&1
  echo  - blocked 157.56.96.208
)
findstr 157.56.100.83 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 157.56.100.83/32 0.0.0.0 >nul 2>&1
  echo  - blocked 157.56.100.83
)
findstr 157.56.106.189 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 157.56.106.189/32 0.0.0.0 >nul 2>&1
  echo  - blocked 157.56.106.189
)
findstr 165.254.114.10 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 165.254.114.10/32 0.0.0.0 >nul 2>&1
  echo  - blocked 165.254.114.10
)
findstr 165.254.114.34 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 165.254.114.34/32 0.0.0.0 >nul 2>&1
  echo  - blocked 165.254.114.34
)
findstr 168.61.24.141 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 168.61.24.141/32 0.0.0.0 >nul 2>&1
  echo  - blocked 168.61.24.141
)
findstr 168.62.11.145 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 168.62.11.145/32 0.0.0.0 >nul 2>&1
  echo  - blocked 168.62.11.145
)
findstr 168.62.21.207 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 168.62.21.207/32 0.0.0.0 >nul 2>&1
  echo  - blocked 168.62.21.207
)
findstr 174.129.244.227 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 174.129.244.227/32 0.0.0.0 >nul 2>&1
  echo  - blocked 174.129.244.227
)
findstr 184.28.167.143 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 184.28.167.143/32 0.0.0.0 >nul 2>&1
  echo  - blocked 184.28.167.143
)
findstr 184.29.134.49 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 184.29.134.49/32 0.0.0.0 >nul 2>&1
  echo  - blocked 184.29.134.49
)
findstr 184.29.137.155 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 184.29.137.155/32 0.0.0.0 >nul 2>&1
  echo  - blocked 184.29.137.155
)
findstr 184.30.37.150 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 184.30.37.150/32 0.0.0.0 >nul 2>&1
  echo  - blocked 184.30.37.150
)
findstr 184.31.242.141 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 184.31.242.141/32 0.0.0.0 >nul 2>&1
  echo  - blocked 184.31.242.141
)
findstr 191.232.139.210 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 191.232.139.210/32 0.0.0.0 >nul 2>&1
  echo  - blocked 191.232.139.210
)
findstr 191.232.140.76 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 191.232.140.76/32 0.0.0.0 >nul 2>&1
  echo  - blocked 191.232.140.76
)
findstr 191.236.16.12 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 191.236.16.12/32 0.0.0.0 >nul 2>&1
  echo  - blocked 191.236.16.12
)
findstr 191.238.241.80 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 191.238.241.80/32 0.0.0.0 >nul 2>&1
  echo  - blocked 191.238.241.80
)
findstr 192.229.163.249 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 192.229.163.249/32 0.0.0.0 >nul 2>&1
  echo  - blocked 192.229.163.249
)
findstr 192.243.250.72 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 192.243.250.72/32 0.0.0.0 >nul 2>&1
  echo  - blocked 192.243.250.72
)
findstr 192.243.250.88 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 192.243.250.88/32 0.0.0.0 >nul 2>&1
  echo  - blocked 192.243.250.88
)
findstr 198.78.206.253 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 198.78.206.253/32 0.0.0.0 >nul 2>&1
  echo  - blocked 198.78.206.253
)
findstr 207.46.7.252 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 207.46.7.252/32 0.0.0.0 >nul 2>&1
  echo  - blocked 207.46.7.252
)
findstr 207.46.202.114 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 207.46.202.114/32 0.0.0.0 >nul 2>&1
  echo  - blocked 207.46.202.114
)
findstr 207.46.223.94 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 207.46.223.94/32 0.0.0.0 >nul 2>&1
  echo  - blocked 207.46.223.94
)
findstr 207.68.166.254 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 207.68.166.254/32 0.0.0.0 >nul 2>&1
  echo  - blocked 207.68.166.254
)
findstr 216.38.170.128 routes.tmp >nul 2>&1
if %errorlevel% neq 0 (
  route -p add 216.38.170.128/32 0.0.0.0 >nul 2>&1
  echo  - blocked 216.38.170.128
)
findstr " 0.r.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 0.r.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked 0.r.msn.com
)
findstr " a.ads1.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 a.ads1.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked a.ads1.msn.com
)
findstr " a.ads2.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 a.ads2.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked a.ads2.msn.com
)
findstr " a.rad.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 a.rad.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked a.rad.msn.com
)
findstr " ac3.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ac3.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ac3.msn.com
)
findstr " act-3-blu.mesh.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 act-3-blu.mesh.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked act-3-blu.mesh.com
)
findstr " activesync.glbdns2.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 activesync.glbdns2.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked activesync.glbdns2.microsoft.com
)
findstr " ad.doubleclick.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ad.doubleclick.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ad.doubleclick.net
)
findstr " ads.eu.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ads.eu.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ads.eu.msn.com
)
findstr " ads.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ads.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ads.msn.com
)
findstr " ads.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ads.msn.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ads.msn.com.nsatc.net
)
findstr " ads1.msads.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ads1.msads.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ads1.msads.net
)
findstr " ads1.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ads1.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ads1.msn.com
)
findstr " ads2.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ads2.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ads2.msn.com
)
findstr " ads2.msn.com.c.footprint.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ads2.msn.com.c.footprint.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ads2.msn.com.c.footprint.net
)
findstr " adsmockarc.azurewebsites.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 adsmockarc.azurewebsites.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked adsmockarc.azurewebsites.net
)
findstr " adsyndication.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 adsyndication.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked adsyndication.msn.com
)
findstr " aidps.atdmt.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 aidps.atdmt.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked aidps.atdmt.com
)
findstr " aidps.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 aidps.msn.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked aidps.msn.com.nsatc.net
)
findstr " aka-cdn-ns.adtech.de" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 aka-cdn-ns.adtech.de >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked aka-cdn-ns.adtech.de
)
findstr " analytics.live.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 analytics.live.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked analytics.live.com
)
findstr " analytics.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 analytics.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked analytics.microsoft.com
)
findstr " analytics.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 analytics.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked analytics.msn.com
)
findstr " analytics.msnbc.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 analytics.msnbc.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked analytics.msnbc.msn.com
)
findstr " analytics.r.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 analytics.r.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked analytics.r.msn.com
)
findstr " appexmapsappupdate.blob.core.windows.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 appexmapsappupdate.blob.core.windows.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked appexmapsappupdate.blob.core.windows.net
)
findstr " arc2.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 arc2.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked arc2.msn.com
)
findstr " arc3.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 arc3.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked arc3.msn.com
)
findstr " arc9.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 arc9.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked arc9.msn.com
)
findstr " atlas.c10r.facebook.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 atlas.c10r.facebook.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked atlas.c10r.facebook.com
)
findstr " b.ads1.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 b.ads1.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked b.ads1.msn.com
)
findstr " b.rad.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 b.rad.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked b.rad.msn.com
)
findstr " bat.bing.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 bat.bing.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked bat.bing.com
)
findstr " bingads.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 bingads.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked bingads.microsoft.com
)
findstr " bl3302.storage.skyprod.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 bl3302.storage.skyprod.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked bl3302.storage.skyprod.akadns.net
)
findstr " blu.mobileads.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 blu.mobileads.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked blu.mobileads.msn.com
)
findstr " bn1-2cd.wns.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 bn1-2cd.wns.windows.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked bn1-2cd.wns.windows.com
)
findstr " bn1cd.wns.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 bn1cd.wns.windows.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked bn1cd.wns.windows.com
)
findstr " bn1wns2011508.wns.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 bn1wns2011508.wns.windows.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked bn1wns2011508.wns.windows.com
)
findstr " bn2wns1.wns.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 bn2wns1.wns.windows.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked bn2wns1.wns.windows.com
)
findstr " bn2wns1b.wns.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 bn2wns1b.wns.windows.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked bn2wns1b.wns.windows.com
)
findstr " bs.eyeblaster.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 bs.eyeblaster.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked bs.eyeblaster.akadns.net
)
findstr " bs.serving-sys.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 bs.serving-sys.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked bs.serving-sys.com
)
findstr " c.atdmt.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 c.atdmt.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked c.atdmt.com
)
findstr " c.atdmt.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 c.atdmt.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked c.atdmt.com.nsatc.net
)
findstr " c.bing.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 c.bing.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked c.bing.com
)
findstr " c.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 c.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked c.microsoft.com
)
findstr " c.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 c.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked c.msn.com
)
findstr " c.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 c.msn.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked c.msn.com.nsatc.net
)
findstr " c.ninemsn.com.au" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 c.ninemsn.com.au >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked c.ninemsn.com.au
)
findstr " c.no.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 c.no.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked c.no.msn.com
)
findstr " c1.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 c1.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked c1.microsoft.com
)
findstr " cdn.atdmt.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 cdn.atdmt.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked cdn.atdmt.com
)
findstr " cdn.content.prod.cms.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 cdn.content.prod.cms.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked cdn.content.prod.cms.msn.com
)
findstr " cds26.ams9.msecn.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 cds26.ams9.msecn.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked cds26.ams9.msecn.net
)
findstr " choice.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 choice.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked choice.microsoft.com
)
findstr " choice.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 choice.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked choice.microsoft.com.nsatc.net
)
findstr " cmsresources.windowsphone.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 cmsresources.windowsphone.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked cmsresources.windowsphone.com
)
findstr " col.mobileads.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 col.mobileads.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked col.mobileads.msn.com
)
findstr " compatexchange.cloudapp.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 compatexchange.cloudapp.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked compatexchange.cloudapp.net
)
findstr " content.windows.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 content.windows.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked content.windows.microsoft.com
)
findstr " corp.sts.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 corp.sts.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked corp.sts.microsoft.com
)
findstr " corpext.msitadfs.glbdns2.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 corpext.msitadfs.glbdns2.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked corpext.msitadfs.glbdns2.microsoft.com
)
findstr " cs1.wpc.v0cdn.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 cs1.wpc.v0cdn.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked cs1.wpc.v0cdn.net
)
findstr " dart.l.doubleclick.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 dart.l.doubleclick.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked dart.l.doubleclick.net
)
findstr " db3aqu.atdmt.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 db3aqu.atdmt.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked db3aqu.atdmt.com
)
findstr " dc.services.visualstudio.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 dc.services.visualstudio.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked dc.services.visualstudio.com
)
findstr " dev.virtualearth.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 dev.virtualearth.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked dev.virtualearth.net
)
findstr " df.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 df.telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked df.telemetry.microsoft.com
)
findstr " diagnostics.support.microsoft.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 diagnostics.support.microsoft.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked diagnostics.support.microsoft.akadns.net
)
findstr " diagnostics.support.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 diagnostics.support.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked diagnostics.support.microsoft.com
)
findstr " digg.analytics.live.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 digg.analytics.live.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked digg.analytics.live.com
)
findstr " directory.services.live.com.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 directory.services.live.com.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked directory.services.live.com.akadns.net
)
findstr " displaycatalog.md.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 displaycatalog.md.mp.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked displaycatalog.md.mp.microsoft.com
)
findstr " dl.delivery.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 dl.delivery.mp.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked dl.delivery.mp.microsoft.com
)
findstr " dmd.metaservices.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 dmd.metaservices.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked dmd.metaservices.microsoft.com
)
findstr " download-ssl.msgamestudios.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 download-ssl.msgamestudios.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked download-ssl.msgamestudios.com
)
findstr " ecn.dev.virtualearth.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ecn.dev.virtualearth.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ecn.dev.virtualearth.net
)
findstr " en-us.appex-rf.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 en-us.appex-rf.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked en-us.appex-rf.msn.com
)
findstr " fe2.update.microsoft.com.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 fe2.update.microsoft.com.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked fe2.update.microsoft.com.akadns.net
)
findstr " fe3.delivery.dsp.mp.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 fe3.delivery.dsp.mp.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked fe3.delivery.dsp.mp.microsoft.com.nsatc.net
)
findstr " fe3.delivery.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 fe3.delivery.mp.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked fe3.delivery.mp.microsoft.com
)
findstr " feedback.microsoft-hohm.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 feedback.microsoft-hohm.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked feedback.microsoft-hohm.com
)
findstr " feedback.search.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 feedback.search.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked feedback.search.microsoft.com
)
findstr " feedback.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 feedback.windows.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked feedback.windows.com
)
findstr " fesweb1.ch1d.binginternal.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 fesweb1.ch1d.binginternal.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked fesweb1.ch1d.binginternal.com
)
findstr " ff4a487e56259f4bd5831e9e30470e83.azr.msnetworkanalytics.testanalytics.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ff4a487e56259f4bd5831e9e30470e83.azr.msnetworkanalytics.testanalytics.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ff4a487e56259f4bd5831e9e30470e83.azr.msnetworkanalytics.testanalytics.net
)
findstr " flex.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 flex.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked flex.msn.com
)
findstr " flex.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 flex.msn.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked flex.msn.com.nsatc.net
)
findstr " g.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 g.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked g.msn.com
)
findstr " g.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 g.msn.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked g.msn.com.nsatc.net
)
findstr " geo-prod.do.dsp.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 geo-prod.do.dsp.mp.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked geo-prod.do.dsp.mp.microsoft.com
)
findstr " global.msads.net.c.footprint.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 global.msads.net.c.footprint.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked global.msads.net.c.footprint.net
)
findstr " h1.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 h1.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked h1.msn.com
)
findstr " h2.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 h2.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked h2.msn.com
)
findstr " help.bingads.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 help.bingads.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked help.bingads.microsoft.com
)
findstr " i1.services.social.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 i1.services.social.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked i1.services.social.microsoft.com
)
findstr " i1.services.social.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 i1.services.social.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked i1.services.social.microsoft.com.nsatc.net
)
findstr " inference.location.live.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 inference.location.live.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked inference.location.live.net
)
findstr " js.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 js.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked js.microsoft.com
)
findstr " lb1.www.ms.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 lb1.www.ms.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked lb1.www.ms.akadns.net
)
findstr " licensing.md.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 licensing.md.mp.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked licensing.md.mp.microsoft.com
)
findstr " live.rads.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 live.rads.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked live.rads.msn.com
)
findstr " livetileedge.dsx.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 livetileedge.dsx.mp.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked livetileedge.dsx.mp.microsoft.com
)
findstr " logging.windows.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 logging.windows.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked logging.windows.microsoft.com
)
findstr " m.adnxs.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 m.adnxs.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked m.adnxs.com
)
findstr " m.anycast.adnxs.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 m.anycast.adnxs.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked m.anycast.adnxs.com
)
findstr " mediadiscovery.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 mediadiscovery.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked mediadiscovery.microsoft.com
)
findstr " microsoft-hohm.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 microsoft-hohm.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked microsoft-hohm.com
)
findstr " msnportal.112.2o7.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 msnportal.112.2o7.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked msnportal.112.2o7.net
)
findstr " msntest.serving-sys.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 msntest.serving-sys.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked msntest.serving-sys.com
)
findstr " oca.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 oca.telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked oca.telemetry.microsoft.com
)
findstr " oca.telemetry.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 oca.telemetry.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked oca.telemetry.microsoft.com.nsatc.net
)
findstr " onesettings-bn2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 onesettings-bn2.metron.live.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked onesettings-bn2.metron.live.com.nsatc.net
)
findstr " onesettings-cy2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 onesettings-cy2.metron.live.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked onesettings-cy2.metron.live.com.nsatc.net
)
findstr " onesettings-db5.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 onesettings-db5.metron.live.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked onesettings-db5.metron.live.com.nsatc.net
)
findstr " onesettings-hk2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 onesettings-hk2.metron.live.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked onesettings-hk2.metron.live.com.nsatc.net
)
findstr " otf.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 otf.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked otf.msn.com
)
findstr " popup.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 popup.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked popup.msn.com
)
findstr " pre.footprintpredict.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 pre.footprintpredict.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked pre.footprintpredict.com
)
findstr " rad.live.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 rad.live.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked rad.live.com
)
findstr " rad.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 rad.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked rad.msn.com
)
findstr " rad.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 rad.msn.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked rad.msn.com.nsatc.net
)
findstr " redir.metaservices.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 redir.metaservices.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked redir.metaservices.microsoft.com
)
findstr " reports.wes.df.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 reports.wes.df.telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked reports.wes.df.telemetry.microsoft.com
)
findstr " rmads.eu.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 rmads.eu.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked rmads.eu.msn.com
)
findstr " rmads.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 rmads.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked rmads.msn.com
)
findstr " rpt.rad.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 rpt.rad.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked rpt.rad.msn.com
)
findstr " sb.scorecardresearch.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 sb.scorecardresearch.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked sb.scorecardresearch.com
)
findstr " schemas.microsoft.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 schemas.microsoft.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked schemas.microsoft.akadns.net
)
findstr " secure.adnxs.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 secure.adnxs.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked secure.adnxs.com
)
findstr " secure.anycast.adnxs.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 secure.anycast.adnxs.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked secure.anycast.adnxs.com
)
findstr " secure.flashtalking.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 secure.flashtalking.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked secure.flashtalking.com
)
findstr " services.wes.df.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 services.wes.df.telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked services.wes.df.telemetry.microsoft.com
)
findstr " settings.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 settings.data.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked settings.data.microsoft.com
)
findstr " settings-sandbox.data.glbdns2.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 settings-sandbox.data.glbdns2.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked settings-sandbox.data.glbdns2.microsoft.com
)
findstr " settings-sandbox.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 settings-sandbox.data.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked settings-sandbox.data.microsoft.com
)
findstr " settings-ssl.xboxlive.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 settings-ssl.xboxlive.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked settings-ssl.xboxlive.com
)
findstr " settings-win.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 settings-win.data.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked settings-win.data.microsoft.com
)
findstr " sgmetrics.cloudapp.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 sgmetrics.cloudapp.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked sgmetrics.cloudapp.net
)
findstr " shell.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 shell.windows.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked shell.windows.com
)
findstr " siweb.microsoft.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 siweb.microsoft.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked siweb.microsoft.akadns.net
)
findstr " skyapi.skyprod.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 skyapi.skyprod.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked skyapi.skyprod.akadns.net
)
findstr " sls.update.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 sls.update.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked sls.update.microsoft.com
)
findstr " sls.update.microsoft.com.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 sls.update.microsoft.com.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked sls.update.microsoft.com.akadns.net
)
findstr " sls.update.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 sls.update.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked sls.update.microsoft.com.nsatc.net
)
findstr " sO.2mdn.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 sO.2mdn.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked sO.2mdn.net
)
findstr " spynet.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 spynet.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked spynet.microsoft.com
)
findstr " spynet2.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 spynet2.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked spynet2.microsoft.com
)
findstr " spynetalt.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 spynetalt.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked spynetalt.microsoft.com
)
findstr " sqm.df.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 sqm.df.telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked sqm.df.telemetry.microsoft.com
)
findstr " sqm.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 sqm.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked sqm.microsoft.com
)
findstr " sqm.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 sqm.telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked sqm.telemetry.microsoft.com
)
findstr " sqm.telemetry.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 sqm.telemetry.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked sqm.telemetry.microsoft.com.nsatc.net
)
findstr " ssw.live.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ssw.live.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ssw.live.com
)
findstr " ssw.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 ssw.live.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked ssw.live.com.nsatc.net
)
findstr " static.2mdn.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 static.2mdn.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked static.2mdn.net
)
findstr " static-2mdn-net.l.google.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 static-2mdn-net.l.google.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked static-2mdn-net.l.google.com
)
findstr " statsfe1.ws.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 statsfe1.ws.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked statsfe1.ws.microsoft.com
)
findstr " statsfe1.ws.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 statsfe1.ws.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked statsfe1.ws.microsoft.com.nsatc.net
)
findstr " statsfe2.update.microsoft.com.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 statsfe2.update.microsoft.com.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked statsfe2.update.microsoft.com.akadns.net
)
findstr " statsfe2.ws.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 statsfe2.ws.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked statsfe2.ws.microsoft.com
)
findstr " statsfe2.ws.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 statsfe2.ws.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked statsfe2.ws.microsoft.com.nsatc.net
)
findstr " storeedgefd.dsx.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 storeedgefd.dsx.mp.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked storeedgefd.dsx.mp.microsoft.com
)
findstr " support.msn.microsoft.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 support.msn.microsoft.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked support.msn.microsoft.akadns.net
)
findstr " survey.watson.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 survey.watson.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked survey.watson.microsoft.com
)
findstr " t.urs.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 t.urs.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked t.urs.microsoft.com.nsatc.net
)
findstr " t0.ssl.ak.dynamic.tiles.virtualearth.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 t0.ssl.ak.dynamic.tiles.virtualearth.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked t0.ssl.ak.dynamic.tiles.virtualearth.net
)
findstr " t0.ssl.ak.tiles.virtualearth.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 t0.ssl.ak.tiles.virtualearth.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked t0.ssl.ak.tiles.virtualearth.net
)
findstr " telecommand.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 telecommand.telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked telecommand.telemetry.microsoft.com
)
findstr " telecommand.telemetry.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 telecommand.telemetry.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked telecommand.telemetry.microsoft.com.nsatc.net
)
findstr " telemetry.appex.bing.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 telemetry.appex.bing.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked telemetry.appex.bing.net
)
findstr " telemetry.appex.search.prod.ms.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 telemetry.appex.search.prod.ms.akadns.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked telemetry.appex.search.prod.ms.akadns.net
)
findstr " telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked telemetry.microsoft.com
)
findstr " telemetry.urs.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 telemetry.urs.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked telemetry.urs.microsoft.com
)
findstr " tile-service.weather.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 tile-service.weather.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked tile-service.weather.microsoft.com
)
findstr " tlu.dl.delivery.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 tlu.dl.delivery.mp.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked tlu.dl.delivery.mp.microsoft.com
)
findstr " udc.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 udc.msn.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked udc.msn.com
)
findstr " urs.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 urs.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked urs.microsoft.com
)
findstr " version.hybrid.api.here.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 version.hybrid.api.here.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked version.hybrid.api.here.com
)
findstr " view.atdmt.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 view.atdmt.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked view.atdmt.com
)
findstr " vortex.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 vortex.data.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked vortex.data.microsoft.com
)
findstr " vortex-bn2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 vortex-bn2.metron.live.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked vortex-bn2.metron.live.com.nsatc.net
)
findstr " vortex-cy2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 vortex-cy2.metron.live.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked vortex-cy2.metron.live.com.nsatc.net
)
findstr " vortex-hk2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 vortex-hk2.metron.live.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked vortex-hk2.metron.live.com.nsatc.net
)
findstr " vortex-sandbox.data.glbdns2.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 vortex-sandbox.data.glbdns2.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked vortex-sandbox.data.glbdns2.microsoft.com
)
findstr " vortex-sandbox.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 vortex-sandbox.data.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked vortex-sandbox.data.microsoft.com
)
findstr " vortex-win.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 vortex-win.data.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked vortex-win.data.microsoft.com
)
findstr " w3.b.cap-mii.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 w3.b.cap-mii.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked w3.b.cap-mii.net
)
findstr " watson.live.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 watson.live.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked watson.live.com
)
findstr " watson.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 watson.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked watson.microsoft.com
)
findstr " watson.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 watson.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked watson.microsoft.com.nsatc.net
)
findstr " watson.ppe.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 watson.ppe.telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked watson.ppe.telemetry.microsoft.com
)
findstr " watson.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 watson.telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked watson.telemetry.microsoft.com
)
findstr " watson.telemetry.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 watson.telemetry.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked watson.telemetry.microsoft.com.nsatc.net
)
findstr " wes.df.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 wes.df.telemetry.microsoft.com >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked wes.df.telemetry.microsoft.com
)
findstr " win10.ipv6.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 win10.ipv6.microsoft.com.nsatc.net >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked win10.ipv6.microsoft.com.nsatc.net
)
findstr " www.modern.ie" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% neq 0 (
  echo 0.0.0.0 www.modern.ie >>%systemdrive%\windows\system32\drivers\etc\hosts
  echo  - blocked www.modern.ie
)
del /f /q routes.tmp >nul 2>&1
exit