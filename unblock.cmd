@echo off
route print 2>nul >routes.tmp
findstr 2.21.16.151 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 2.21.16.151 >nul 2>&1
  echo  - unblocked 2.21.16.151
)
findstr 2.21.236.193 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 2.21.236.193 >nul 2>&1
  echo  - unblocked 2.21.236.193
)
findstr 2.22.70.61 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 2.22.70.61 >nul 2>&1
  echo  - unblocked 2.22.70.61
)
findstr 2.22.71.158 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 2.22.71.158 >nul 2>&1
  echo  - unblocked 2.22.71.158
)
findstr 2.22.75.120 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 2.22.75.120 >nul 2>&1
  echo  - unblocked 2.22.75.120
)
findstr 2.22.77.127 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 2.22.77.127 >nul 2>&1
  echo  - unblocked 2.22.77.127
)
findstr 2.22.87.71 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 2.22.87.71 >nul 2>&1
  echo  - unblocked 2.22.87.71
)
findstr 2.22.245.247 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 2.22.245.247 >nul 2>&1
  echo  - unblocked 2.22.245.247
)
findstr 4.27.253.126 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 4.27.253.126 >nul 2>&1
  echo  - unblocked 4.27.253.126
)
findstr 4.27.253.253 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 4.27.253.253 >nul 2>&1
  echo  - unblocked 4.27.253.253
)
findstr 4.27.254.254 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 4.27.254.254 >nul 2>&1
  echo  - unblocked 4.27.254.254
)
findstr 8.12.223.125 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 8.12.223.125 >nul 2>&1
  echo  - unblocked 8.12.223.125
)
findstr 8.12.223.254 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 8.12.223.254 >nul 2>&1
  echo  - unblocked 8.12.223.254
)
findstr 8.26.206.252 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 8.26.206.252 >nul 2>&1
  echo  - unblocked 8.26.206.252
)
findstr 8.26.207.126 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 8.26.207.126 >nul 2>&1
  echo  - unblocked 8.26.207.126
)
findstr 8.26.209.126 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 8.26.209.126 >nul 2>&1
  echo  - unblocked 8.26.209.126
)
findstr 8.26.210.126 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 8.26.210.126 >nul 2>&1
  echo  - unblocked 8.26.210.126
)
findstr 8.254.56.254 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 8.254.56.254 >nul 2>&1
  echo  - unblocked 8.254.56.254
)
findstr 8.254.233.126 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 8.254.233.126 >nul 2>&1
  echo  - unblocked 8.254.233.126
)
findstr 8.254.240.126 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 8.254.240.126 >nul 2>&1
  echo  - unblocked 8.254.240.126
)
findstr 8.254.248.254 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 8.254.248.254 >nul 2>&1
  echo  - unblocked 8.254.248.254
)
findstr 13.107.4.50 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 13.107.4.50 >nul 2>&1
  echo  - unblocked 13.107.4.50
)
findstr 23.2.16.8 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.2.16.8 >nul 2>&1
  echo  - unblocked 23.2.16.8
)
findstr 23.2.16.10 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.2.16.10 >nul 2>&1
  echo  - unblocked 23.2.16.10
)
findstr 23.3.59.68 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.3.59.68 >nul 2>&1
  echo  - unblocked 23.3.59.68
)
findstr 23.3.59.213 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.3.59.213 >nul 2>&1
  echo  - unblocked 23.3.59.213
)
findstr 23.33.25.34 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.33.25.34 >nul 2>&1
  echo  - unblocked 23.33.25.34
)
findstr 23.33.31.59 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.33.31.59 >nul 2>&1
  echo  - unblocked 23.33.31.59
)
findstr 23.33.106.110 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.33.106.110 >nul 2>&1
  echo  - unblocked 23.33.106.110
)
findstr 23.46.18.40 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.46.18.40 >nul 2>&1
  echo  - unblocked 23.46.18.40
)
findstr 23.46.19.158 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.46.19.158 >nul 2>&1
  echo  - unblocked 23.46.19.158
)
findstr 23.73.138.65 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.73.138.65 >nul 2>&1
  echo  - unblocked 23.73.138.65
)
findstr 23.96.212.225 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.96.212.225 >nul 2>&1
  echo  - unblocked 23.96.212.225
)
findstr 23.98.49.14 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.98.49.14 >nul 2>&1
  echo  - unblocked 23.98.49.14
)
findstr 23.202.16.64 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.202.16.64 >nul 2>&1
  echo  - unblocked 23.202.16.64
)
findstr 23.202.21.236 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.202.21.236 >nul 2>&1
  echo  - unblocked 23.202.21.236
)
findstr 23.202.58.89 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.202.58.89 >nul 2>&1
  echo  - unblocked 23.202.58.89
)
findstr 23.202.61.139 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 23.202.61.139 >nul 2>&1
  echo  - unblocked 23.202.61.139
)
findstr 31.13.65.2 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 31.13.65.2 >nul 2>&1
  echo  - unblocked 31.13.65.2
)
findstr 31.13.69.193 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 31.13.69.193 >nul 2>&1
  echo  - unblocked 31.13.69.193
)
findstr 40.114.54.223 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 40.114.54.223 >nul 2>&1
  echo  - unblocked 40.114.54.223
)
findstr 40.117.88.112 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 40.117.88.112 >nul 2>&1
  echo  - unblocked 40.117.88.112
)
findstr 46.33.76.33 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 46.33.76.33 >nul 2>&1
  echo  - unblocked 46.33.76.33
)
findstr 46.33.76.57 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 46.33.76.57 >nul 2>&1
  echo  - unblocked 46.33.76.57
)
findstr 54.243.135.126 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 54.243.135.126 >nul 2>&1
  echo  - unblocked 54.243.135.126
)
findstr 63.148.207.70 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.148.207.70 >nul 2>&1
  echo  - unblocked 63.148.207.70
)
findstr 63.148.207.80 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.148.207.80 >nul 2>&1
  echo  - unblocked 63.148.207.80
)
findstr 63.148.207.88 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.148.207.88 >nul 2>&1
  echo  - unblocked 63.148.207.88
)
findstr 63.148.207.95 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.148.207.95 >nul 2>&1
  echo  - unblocked 63.148.207.95
)
findstr 63.148.207.97 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.148.207.97 >nul 2>&1
  echo  - unblocked 63.148.207.97
)
findstr 63.148.207.151 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.148.207.151 >nul 2>&1
  echo  - unblocked 63.148.207.151
)
findstr 63.241.108.111 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.241.108.111 >nul 2>&1
  echo  - unblocked 63.241.108.111
)
findstr 63.241.108.124 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.241.108.124 >nul 2>&1
  echo  - unblocked 63.241.108.124
)
findstr 63.243.243.34 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.243.243.34 >nul 2>&1
  echo  - unblocked 63.243.243.34
)
findstr 63.243.243.35 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.243.243.35 >nul 2>&1
  echo  - unblocked 63.243.243.35
)
findstr 63.243.243.48 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.243.243.48 >nul 2>&1
  echo  - unblocked 63.243.243.48
)
findstr 63.243.243.49 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.243.243.49 >nul 2>&1
  echo  - unblocked 63.243.243.49
)
findstr 63.243.243.58 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.243.243.58 >nul 2>&1
  echo  - unblocked 63.243.243.58
)
findstr 63.243.243.67 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 63.243.243.67 >nul 2>&1
  echo  - unblocked 63.243.243.67
)
findstr 64.4.6.100 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 64.4.6.100 >nul 2>&1
  echo  - unblocked 64.4.6.100
)
findstr 64.4.54.18 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 64.4.54.18 >nul 2>&1
  echo  - unblocked 64.4.54.18
)
findstr 64.4.54.22 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 64.4.54.22 >nul 2>&1
  echo  - unblocked 64.4.54.22
)
findstr 64.4.54.32 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 64.4.54.32 >nul 2>&1
  echo  - unblocked 64.4.54.32
)
findstr 64.4.54.98 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 64.4.54.98 >nul 2>&1
  echo  - unblocked 64.4.54.98
)
findstr 64.4.54.153 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 64.4.54.153 >nul 2>&1
  echo  - unblocked 64.4.54.153
)
findstr 64.4.54.165 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 64.4.54.165 >nul 2>&1
  echo  - unblocked 64.4.54.165
)
findstr 64.233.185.148 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 64.233.185.148 >nul 2>&1
  echo  - unblocked 64.233.185.148
)
findstr 64.233.185.149 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 64.233.185.149 >nul 2>&1
  echo  - unblocked 64.233.185.149
)
findstr 65.52.100.7 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.100.7 >nul 2>&1
  echo  - unblocked 65.52.100.7
)
findstr 65.52.100.9 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.100.9 >nul 2>&1
  echo  - unblocked 65.52.100.9
)
findstr 65.52.100.11 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.100.11 >nul 2>&1
  echo  - unblocked 65.52.100.11
)
findstr 65.52.100.91 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.100.91 >nul 2>&1
  echo  - unblocked 65.52.100.91
)
findstr 65.52.100.92 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.100.92 >nul 2>&1
  echo  - unblocked 65.52.100.92
)
findstr 65.52.100.93 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.100.93 >nul 2>&1
  echo  - unblocked 65.52.100.93
)
findstr 65.52.100.94 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.100.94 >nul 2>&1
  echo  - unblocked 65.52.100.94
)
findstr 65.52.108.2 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.2 >nul 2>&1
  echo  - unblocked 65.52.108.2
)
findstr 65.52.108.11 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.11 >nul 2>&1
  echo  - unblocked 65.52.108.11
)
findstr 65.52.108.27 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.27 >nul 2>&1
  echo  - unblocked 65.52.108.27
)
findstr 65.52.108.33 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.33 >nul 2>&1
  echo  - unblocked 65.52.108.33
)
findstr 65.52.108.52 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.52 >nul 2>&1
  echo  - unblocked 65.52.108.52
)
findstr 65.52.108.56 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.56 >nul 2>&1
  echo  - unblocked 65.52.108.56
)
findstr 65.52.108.59 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.59 >nul 2>&1
  echo  - unblocked 65.52.108.59
)
findstr 65.52.108.90 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.90 >nul 2>&1
  echo  - unblocked 65.52.108.90
)
findstr 65.52.108.92 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.92 >nul 2>&1
  echo  - unblocked 65.52.108.92
)
findstr 65.52.108.153 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.153 >nul 2>&1
  echo  - unblocked 65.52.108.153
)
findstr 65.52.108.154 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.154 >nul 2>&1
  echo  - unblocked 65.52.108.154
)
findstr 65.52.108.163 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.163 >nul 2>&1
  echo  - unblocked 65.52.108.163
)
findstr 65.52.108.251 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.251 >nul 2>&1
  echo  - unblocked 65.52.108.251
)
findstr 65.52.108.254 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.108.254 >nul 2>&1
  echo  - unblocked 65.52.108.254
)
findstr 65.52.161.64 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.52.161.64 >nul 2>&1
  echo  - unblocked 65.52.161.64
)
findstr 65.54.192.248 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.54.192.248 >nul 2>&1
  echo  - unblocked 65.54.192.248
)
findstr 65.54.225.167 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.54.225.167 >nul 2>&1
  echo  - unblocked 65.54.225.167
)
findstr 65.54.226.187 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.54.226.187 >nul 2>&1
  echo  - unblocked 65.54.226.187
)
findstr 65.55.2.2 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.2.2 >nul 2>&1
  echo  - unblocked 65.55.2.2
)
findstr 65.55.29.238 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.29.238 >nul 2>&1
  echo  - unblocked 65.55.29.238
)
findstr 65.55.39.10 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.39.10 >nul 2>&1
  echo  - unblocked 65.55.39.10
)
findstr 65.55.44.82 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.44.82 >nul 2>&1
  echo  - unblocked 65.55.44.82
)
findstr 65.55.44.85 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.44.85 >nul 2>&1
  echo  - unblocked 65.55.44.85
)
findstr 65.55.44.108 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.44.108 >nul 2>&1
  echo  - unblocked 65.55.44.108
)
findstr 65.55.44.109 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.44.109 >nul 2>&1
  echo  - unblocked 65.55.44.109
)
findstr 65.55.52.23 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.52.23 >nul 2>&1
  echo  - unblocked 65.55.52.23
)
findstr 65.55.113.11 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.113.11 >nul 2>&1
  echo  - unblocked 65.55.113.11
)
findstr 65.55.113.12 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.113.12 >nul 2>&1
  echo  - unblocked 65.55.113.12
)
findstr 65.55.113.13 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.113.13 >nul 2>&1
  echo  - unblocked 65.55.113.13
)
findstr 65.55.128.80 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.128.80 >nul 2>&1
  echo  - unblocked 65.55.128.80
)
findstr 65.55.128.81 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.128.81 >nul 2>&1
  echo  - unblocked 65.55.128.81
)
findstr 65.55.138.110 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.138.110 >nul 2>&1
  echo  - unblocked 65.55.138.110
)
findstr 65.55.138.111 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.138.111 >nul 2>&1
  echo  - unblocked 65.55.138.111
)
findstr 65.55.149.120 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.149.120 >nul 2>&1
  echo  - unblocked 65.55.149.120
)
findstr 65.55.227.188 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.227.188 >nul 2>&1
  echo  - unblocked 65.55.227.188
)
findstr 65.55.252.43 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.252.43 >nul 2>&1
  echo  - unblocked 65.55.252.43
)
findstr 65.55.252.63 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.252.63 >nul 2>&1
  echo  - unblocked 65.55.252.63
)
findstr 65.55.252.71 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.252.71 >nul 2>&1
  echo  - unblocked 65.55.252.71
)
findstr 65.55.252.93 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.252.93 >nul 2>&1
  echo  - unblocked 65.55.252.93
)
findstr 65.55.252.190 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 65.55.252.190 >nul 2>&1
  echo  - unblocked 65.55.252.190
)
findstr 66.119.144.189 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.119.144.189 >nul 2>&1
  echo  - unblocked 66.119.144.189
)
findstr 66.119.147.131 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.119.147.131 >nul 2>&1
  echo  - unblocked 66.119.147.131
)
findstr 66.119.152.205 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.119.152.205 >nul 2>&1
  echo  - unblocked 66.119.152.205
)
findstr 66.235.138.193 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.235.138.193 >nul 2>&1
  echo  - unblocked 66.235.138.193
)
findstr 66.235.138.194 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.235.138.194 >nul 2>&1
  echo  - unblocked 66.235.138.194
)
findstr 66.235.138.195 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.235.138.195 >nul 2>&1
  echo  - unblocked 66.235.138.195
)
findstr 66.235.139.17 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.235.139.17 >nul 2>&1
  echo  - unblocked 66.235.139.17
)
findstr 66.235.139.18 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.235.139.18 >nul 2>&1
  echo  - unblocked 66.235.139.18
)
findstr 66.235.139.19 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.235.139.19 >nul 2>&1
  echo  - unblocked 66.235.139.19
)
findstr 66.235.139.205 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.235.139.205 >nul 2>&1
  echo  - unblocked 66.235.139.205
)
findstr 66.235.139.206 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.235.139.206 >nul 2>&1
  echo  - unblocked 66.235.139.206
)
findstr 66.235.139.207 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 66.235.139.207 >nul 2>&1
  echo  - unblocked 66.235.139.207
)
findstr 68.67.152.56 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.56 >nul 2>&1
  echo  - unblocked 68.67.152.56
)
findstr 68.67.152.58 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.58 >nul 2>&1
  echo  - unblocked 68.67.152.58
)
findstr 68.67.152.61 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.61 >nul 2>&1
  echo  - unblocked 68.67.152.61
)
findstr 68.67.152.92 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.92 >nul 2>&1
  echo  - unblocked 68.67.152.92
)
findstr 68.67.152.94 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.94 >nul 2>&1
  echo  - unblocked 68.67.152.94
)
findstr 68.67.152.97 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.97 >nul 2>&1
  echo  - unblocked 68.67.152.97
)
findstr 68.67.152.103 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.103 >nul 2>&1
  echo  - unblocked 68.67.152.103
)
findstr 68.67.152.109 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.109 >nul 2>&1
  echo  - unblocked 68.67.152.109
)
findstr 68.67.152.110 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.110 >nul 2>&1
  echo  - unblocked 68.67.152.110
)
findstr 68.67.152.111 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.111 >nul 2>&1
  echo  - unblocked 68.67.152.111
)
findstr 68.67.152.112 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.112 >nul 2>&1
  echo  - unblocked 68.67.152.112
)
findstr 68.67.152.113 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.113 >nul 2>&1
  echo  - unblocked 68.67.152.113
)
findstr 68.67.152.120 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.120 >nul 2>&1
  echo  - unblocked 68.67.152.120
)
findstr 68.67.152.129 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.129 >nul 2>&1
  echo  - unblocked 68.67.152.129
)
findstr 68.67.152.131 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.131 >nul 2>&1
  echo  - unblocked 68.67.152.131
)
findstr 68.67.152.132 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.132 >nul 2>&1
  echo  - unblocked 68.67.152.132
)
findstr 68.67.152.172 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.172 >nul 2>&1
  echo  - unblocked 68.67.152.172
)
findstr 68.67.152.173 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.173 >nul 2>&1
  echo  - unblocked 68.67.152.173
)
findstr 68.67.152.174 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.174 >nul 2>&1
  echo  - unblocked 68.67.152.174
)
findstr 68.67.152.215 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.215 >nul 2>&1
  echo  - unblocked 68.67.152.215
)
findstr 68.67.152.218 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.218 >nul 2>&1
  echo  - unblocked 68.67.152.218
)
findstr 68.67.152.235 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.235 >nul 2>&1
  echo  - unblocked 68.67.152.235
)
findstr 68.67.152.236 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.236 >nul 2>&1
  echo  - unblocked 68.67.152.236
)
findstr 68.67.152.254 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.152.254 >nul 2>&1
  echo  - unblocked 68.67.152.254
)
findstr 68.67.153.37 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.37 >nul 2>&1
  echo  - unblocked 68.67.153.37
)
findstr 68.67.153.39 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.39 >nul 2>&1
  echo  - unblocked 68.67.153.39
)
findstr 68.67.153.40 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.40 >nul 2>&1
  echo  - unblocked 68.67.153.40
)
findstr 68.67.153.41 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.41 >nul 2>&1
  echo  - unblocked 68.67.153.41
)
findstr 68.67.153.44 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.44 >nul 2>&1
  echo  - unblocked 68.67.153.44
)
findstr 68.67.153.56 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.56 >nul 2>&1
  echo  - unblocked 68.67.153.56
)
findstr 68.67.153.87 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.87 >nul 2>&1
  echo  - unblocked 68.67.153.87
)
findstr 68.67.153.89 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.89 >nul 2>&1
  echo  - unblocked 68.67.153.89
)
findstr 68.67.153.148 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.148 >nul 2>&1
  echo  - unblocked 68.67.153.148
)
findstr 68.67.153.173 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.173 >nul 2>&1
  echo  - unblocked 68.67.153.173
)
findstr 68.67.153.180 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.180 >nul 2>&1
  echo  - unblocked 68.67.153.180
)
findstr 68.67.153.183 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.183 >nul 2>&1
  echo  - unblocked 68.67.153.183
)
findstr 68.67.153.188 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.188 >nul 2>&1
  echo  - unblocked 68.67.153.188
)
findstr 68.67.153.208 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.208 >nul 2>&1
  echo  - unblocked 68.67.153.208
)
findstr 68.67.153.209 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.209 >nul 2>&1
  echo  - unblocked 68.67.153.209
)
findstr 68.67.153.244 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.244 >nul 2>&1
  echo  - unblocked 68.67.153.244
)
findstr 68.67.153.248 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.248 >nul 2>&1
  echo  - unblocked 68.67.153.248
)
findstr 68.67.153.251 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.251 >nul 2>&1
  echo  - unblocked 68.67.153.251
)
findstr 68.67.153.253 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.153.253 >nul 2>&1
  echo  - unblocked 68.67.153.253
)
findstr 68.67.176.16 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.16 >nul 2>&1
  echo  - unblocked 68.67.176.16
)
findstr 68.67.176.47 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.47 >nul 2>&1
  echo  - unblocked 68.67.176.47
)
findstr 68.67.176.50 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.50 >nul 2>&1
  echo  - unblocked 68.67.176.50
)
findstr 68.67.176.51 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.51 >nul 2>&1
  echo  - unblocked 68.67.176.51
)
findstr 68.67.176.63 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.63 >nul 2>&1
  echo  - unblocked 68.67.176.63
)
findstr 68.67.176.68 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.68 >nul 2>&1
  echo  - unblocked 68.67.176.68
)
findstr 68.67.176.126 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.126 >nul 2>&1
  echo  - unblocked 68.67.176.126
)
findstr 68.67.176.129 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.129 >nul 2>&1
  echo  - unblocked 68.67.176.129
)
findstr 68.67.176.132 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.132 >nul 2>&1
  echo  - unblocked 68.67.176.132
)
findstr 68.67.176.145 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.145 >nul 2>&1
  echo  - unblocked 68.67.176.145
)
findstr 68.67.176.152 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 68.67.176.152 >nul 2>&1
  echo  - unblocked 68.67.176.152
)
findstr 72.246.43.9 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.9 >nul 2>&1
  echo  - unblocked 72.246.43.9
)
findstr 72.246.43.10 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.10 >nul 2>&1
  echo  - unblocked 72.246.43.10
)
findstr 72.246.43.16 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.16 >nul 2>&1
  echo  - unblocked 72.246.43.16
)
findstr 72.246.43.25 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.25 >nul 2>&1
  echo  - unblocked 72.246.43.25
)
findstr 72.246.43.26 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.26 >nul 2>&1
  echo  - unblocked 72.246.43.26
)
findstr 72.246.43.33 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.33 >nul 2>&1
  echo  - unblocked 72.246.43.33
)
findstr 72.246.43.34 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.34 >nul 2>&1
  echo  - unblocked 72.246.43.34
)
findstr 72.246.43.40 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.40 >nul 2>&1
  echo  - unblocked 72.246.43.40
)
findstr 72.246.43.48 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.48 >nul 2>&1
  echo  - unblocked 72.246.43.48
)
findstr 72.246.43.56 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.56 >nul 2>&1
  echo  - unblocked 72.246.43.56
)
findstr 72.246.43.128 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 72.246.43.128 >nul 2>&1
  echo  - unblocked 72.246.43.128
)
findstr 74.125.21.148 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 74.125.21.148 >nul 2>&1
  echo  - unblocked 74.125.21.148
)
findstr 74.125.21.149 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 74.125.21.149 >nul 2>&1
  echo  - unblocked 74.125.21.149
)
findstr 93.184.215.200 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 93.184.215.200 >nul 2>&1
  echo  - unblocked 93.184.215.200
)
findstr 94.245.121.176 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 94.245.121.176 >nul 2>&1
  echo  - unblocked 94.245.121.176
)
findstr 94.245.121.177 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 94.245.121.177 >nul 2>&1
  echo  - unblocked 94.245.121.177
)
findstr 94.245.121.178 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 94.245.121.178 >nul 2>&1
  echo  - unblocked 94.245.121.178
)
findstr 94.245.121.179 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 94.245.121.179 >nul 2>&1
  echo  - unblocked 94.245.121.179
)
findstr 95.101.128.137 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 95.101.128.137 >nul 2>&1
  echo  - unblocked 95.101.128.137
)
findstr 95.101.128.195 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 95.101.128.195 >nul 2>&1
  echo  - unblocked 95.101.128.195
)
findstr 96.17.204.25 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 96.17.204.25 >nul 2>&1
  echo  - unblocked 96.17.204.25
)
findstr 96.17.204.167 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 96.17.204.167 >nul 2>&1
  echo  - unblocked 96.17.204.167
)
findstr 104.45.136.42 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.45.136.42 >nul 2>&1
  echo  - unblocked 104.45.136.42
)
findstr 104.69.113.196 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.69.113.196 >nul 2>&1
  echo  - unblocked 104.69.113.196
)
findstr 104.69.140.179 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.69.140.179 >nul 2>&1
  echo  - unblocked 104.69.140.179
)
findstr 104.69.140.181 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.69.140.181 >nul 2>&1
  echo  - unblocked 104.69.140.181
)
findstr 104.70.210.203 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.70.210.203 >nul 2>&1
  echo  - unblocked 104.70.210.203
)
findstr 104.73.211.105 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.73.211.105 >nul 2>&1
  echo  - unblocked 104.73.211.105
)
findstr 104.73.211.159 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.73.211.159 >nul 2>&1
  echo  - unblocked 104.73.211.159
)
findstr 104.73.215.154 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.73.215.154 >nul 2>&1
  echo  - unblocked 104.73.215.154
)
findstr 104.73.217.91 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.73.217.91 >nul 2>&1
  echo  - unblocked 104.73.217.91
)
findstr 104.73.220.170 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.73.220.170 >nul 2>&1
  echo  - unblocked 104.73.220.170
)
findstr 104.107.13.214 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 104.107.13.214 >nul 2>&1
  echo  - unblocked 104.107.13.214
)
findstr 107.20.234.199 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 107.20.234.199 >nul 2>&1
  echo  - unblocked 107.20.234.199
)
findstr 107.21.246.114 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 107.21.246.114 >nul 2>&1
  echo  - unblocked 107.21.246.114
)
findstr 131.107.113.238 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 131.107.113.238 >nul 2>&1
  echo  - unblocked 131.107.113.238
)
findstr 131.253.14.76 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 131.253.14.76 >nul 2>&1
  echo  - unblocked 131.253.14.76
)
findstr 131.253.14.121 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 131.253.14.121 >nul 2>&1
  echo  - unblocked 131.253.14.121
)
findstr 131.253.14.194 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 131.253.14.194 >nul 2>&1
  echo  - unblocked 131.253.14.194
)
findstr 131.253.34.230 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 131.253.34.230 >nul 2>&1
  echo  - unblocked 131.253.34.230
)
findstr 131.253.40.47 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 131.253.40.47 >nul 2>&1
  echo  - unblocked 131.253.40.47
)
findstr 131.253.40.53 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 131.253.40.53 >nul 2>&1
  echo  - unblocked 131.253.40.53
)
findstr 131.253.40.64 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 131.253.40.64 >nul 2>&1
  echo  - unblocked 131.253.40.64
)
findstr 131.253.40.109 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 131.253.40.109 >nul 2>&1
  echo  - unblocked 131.253.40.109
)
findstr 134.170.30.221 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.30.221 >nul 2>&1
  echo  - unblocked 134.170.30.221
)
findstr 134.170.51.248 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.51.248 >nul 2>&1
  echo  - unblocked 134.170.51.248
)
findstr 134.170.52.151 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.52.151 >nul 2>&1
  echo  - unblocked 134.170.52.151
)
findstr 134.170.53.29 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.53.29 >nul 2>&1
  echo  - unblocked 134.170.53.29
)
findstr 134.170.53.30 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.53.30 >nul 2>&1
  echo  - unblocked 134.170.53.30
)
findstr 134.170.58.121 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.58.121 >nul 2>&1
  echo  - unblocked 134.170.58.121
)
findstr 134.170.58.123 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.58.123 >nul 2>&1
  echo  - unblocked 134.170.58.123
)
findstr 134.170.58.125 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.58.125 >nul 2>&1
  echo  - unblocked 134.170.58.125
)
findstr 134.170.58.189 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.58.189 >nul 2>&1
  echo  - unblocked 134.170.58.189
)
findstr 134.170.107.176 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.107.176 >nul 2>&1
  echo  - unblocked 134.170.107.176
)
findstr 134.170.109.200 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.109.200 >nul 2>&1
  echo  - unblocked 134.170.109.200
)
findstr 134.170.119.140 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.119.140 >nul 2>&1
  echo  - unblocked 134.170.119.140
)
findstr 134.170.184.133 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.184.133 >nul 2>&1
  echo  - unblocked 134.170.184.133
)
findstr 134.170.185.125 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.185.125 >nul 2>&1
  echo  - unblocked 134.170.185.125
)
findstr 134.170.188.139 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.188.139 >nul 2>&1
  echo  - unblocked 134.170.188.139
)
findstr 134.170.188.248 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 134.170.188.248 >nul 2>&1
  echo  - unblocked 134.170.188.248
)
findstr 137.117.100.176 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 137.117.100.176 >nul 2>&1
  echo  - unblocked 137.117.100.176
)
findstr 157.55.129.21 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 157.55.129.21 >nul 2>&1
  echo  - unblocked 157.55.129.21
)
findstr 157.56.23.91 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 157.56.23.91 >nul 2>&1
  echo  - unblocked 157.56.23.91
)
findstr 157.56.77.139 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 157.56.77.139 >nul 2>&1
  echo  - unblocked 157.56.77.139
)
findstr 157.56.96.54 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 157.56.96.54 >nul 2>&1
  echo  - unblocked 157.56.96.54
)
findstr 157.56.96.80 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 157.56.96.80 >nul 2>&1
  echo  - unblocked 157.56.96.80
)
findstr 157.56.96.208 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 157.56.96.208 >nul 2>&1
  echo  - unblocked 157.56.96.208
)
findstr 157.56.100.83 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 157.56.100.83 >nul 2>&1
  echo  - unblocked 157.56.100.83
)
findstr 157.56.106.189 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 157.56.106.189 >nul 2>&1
  echo  - unblocked 157.56.106.189
)
findstr 165.254.114.10 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 165.254.114.10 >nul 2>&1
  echo  - unblocked 165.254.114.10
)
findstr 165.254.114.34 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 165.254.114.34 >nul 2>&1
  echo  - unblocked 165.254.114.34
)
findstr 168.61.24.141 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 168.61.24.141 >nul 2>&1
  echo  - unblocked 168.61.24.141
)
findstr 168.62.11.145 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 168.62.11.145 >nul 2>&1
  echo  - unblocked 168.62.11.145
)
findstr 168.62.21.207 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 168.62.21.207 >nul 2>&1
  echo  - unblocked 168.62.21.207
)
findstr 174.129.244.227 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 174.129.244.227 >nul 2>&1
  echo  - unblocked 174.129.244.227
)
findstr 184.28.167.143 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 184.28.167.143 >nul 2>&1
  echo  - unblocked 184.28.167.143
)
findstr 184.29.134.49 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 184.29.134.49 >nul 2>&1
  echo  - unblocked 184.29.134.49
)
findstr 184.29.137.155 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 184.29.137.155 >nul 2>&1
  echo  - unblocked 184.29.137.155
)
findstr 184.30.37.150 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 184.30.37.150 >nul 2>&1
  echo  - unblocked 184.30.37.150
)
findstr 184.31.242.141 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 184.31.242.141 >nul 2>&1
  echo  - unblocked 184.31.242.141
)
findstr 191.232.139.210 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 191.232.139.210 >nul 2>&1
  echo  - unblocked 191.232.139.210
)
findstr 191.232.140.76 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 191.232.140.76 >nul 2>&1
  echo  - unblocked 191.232.140.76
)
findstr 191.236.16.12 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 191.236.16.12 >nul 2>&1
  echo  - unblocked 191.236.16.12
)
findstr 191.238.241.80 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 191.238.241.80 >nul 2>&1
  echo  - unblocked 191.238.241.80
)
findstr 192.229.163.249 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 192.229.163.249 >nul 2>&1
  echo  - unblocked 192.229.163.249
)
findstr 192.243.250.72 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 192.243.250.72 >nul 2>&1
  echo  - unblocked 192.243.250.72
)
findstr 192.243.250.88 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 192.243.250.88 >nul 2>&1
  echo  - unblocked 192.243.250.88
)
findstr 198.78.206.253 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 198.78.206.253 >nul 2>&1
  echo  - unblocked 198.78.206.253
)
findstr 207.46.7.252 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 207.46.7.252 >nul 2>&1
  echo  - unblocked 207.46.7.252
)
findstr 207.46.202.114 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 207.46.202.114 >nul 2>&1
  echo  - unblocked 207.46.202.114
)
findstr 207.46.223.94 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 207.46.223.94 >nul 2>&1
  echo  - unblocked 207.46.223.94
)
findstr 207.68.166.254 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 207.68.166.254 >nul 2>&1
  echo  - unblocked 207.68.166.254
)
findstr 216.38.170.128 routes.tmp >nul 2>&1
if %errorlevel% equ 0 (
  route delete 216.38.170.128 >nul 2>&1
  echo  - unblocked 216.38.170.128
)
findstr " 0.r.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/0.r.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked 0.r.msn.com
)
findstr " a.ads1.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/a.ads1.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked a.ads1.msn.com
)
findstr " a.ads2.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/a.ads2.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked a.ads2.msn.com
)
findstr " a.rad.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/a.rad.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked a.rad.msn.com
)
findstr " ac3.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ac3.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ac3.msn.com
)
findstr " act-3-blu.mesh.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/act-3-blu.mesh.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked act-3-blu.mesh.com
)
findstr " activesync.glbdns2.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/activesync.glbdns2.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked activesync.glbdns2.microsoft.com
)
findstr " ad.doubleclick.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ad.doubleclick.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ad.doubleclick.net
)
findstr " ads.eu.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ads.eu.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ads.eu.msn.com
)
findstr " ads.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ads.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ads.msn.com
)
findstr " ads.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ads.msn.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ads.msn.com.nsatc.net
)
findstr " ads1.msads.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ads1.msads.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ads1.msads.net
)
findstr " ads1.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ads1.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ads1.msn.com
)
findstr " ads2.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ads2.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ads2.msn.com
)
findstr " ads2.msn.com.c.footprint.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ads2.msn.com.c.footprint.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ads2.msn.com.c.footprint.net
)
findstr " adsmockarc.azurewebsites.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/adsmockarc.azurewebsites.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked adsmockarc.azurewebsites.net
)
findstr " adsyndication.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/adsyndication.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked adsyndication.msn.com
)
findstr " aidps.atdmt.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/aidps.atdmt.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked aidps.atdmt.com
)
findstr " aidps.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/aidps.msn.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked aidps.msn.com.nsatc.net
)
findstr " aka-cdn-ns.adtech.de" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/aka-cdn-ns.adtech.de/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked aka-cdn-ns.adtech.de
)
findstr " analytics.live.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/analytics.live.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked analytics.live.com
)
findstr " analytics.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/analytics.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked analytics.microsoft.com
)
findstr " analytics.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/analytics.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked analytics.msn.com
)
findstr " analytics.msnbc.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/analytics.msnbc.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked analytics.msnbc.msn.com
)
findstr " analytics.r.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/analytics.r.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked analytics.r.msn.com
)
findstr " appexmapsappupdate.blob.core.windows.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/appexmapsappupdate.blob.core.windows.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked appexmapsappupdate.blob.core.windows.net
)
findstr " arc2.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/arc2.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked arc2.msn.com
)
findstr " arc3.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/arc3.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked arc3.msn.com
)
findstr " arc9.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/arc9.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked arc9.msn.com
)
findstr " atlas.c10r.facebook.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/atlas.c10r.facebook.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked atlas.c10r.facebook.com
)
findstr " b.ads1.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/b.ads1.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked b.ads1.msn.com
)
findstr " b.rad.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/b.rad.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked b.rad.msn.com
)
findstr " bat.bing.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/bat.bing.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked bat.bing.com
)
findstr " bingads.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/bingads.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked bingads.microsoft.com
)
findstr " bl3302.storage.skyprod.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/bl3302.storage.skyprod.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked bl3302.storage.skyprod.akadns.net
)
findstr " blu.mobileads.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/blu.mobileads.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked blu.mobileads.msn.com
)
findstr " bn1-2cd.wns.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/bn1-2cd.wns.windows.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked bn1-2cd.wns.windows.com
)
findstr " bn1cd.wns.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/bn1cd.wns.windows.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked bn1cd.wns.windows.com
)
findstr " bn1wns2011508.wns.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/bn1wns2011508.wns.windows.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked bn1wns2011508.wns.windows.com
)
findstr " bn2wns1.wns.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/bn2wns1.wns.windows.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked bn2wns1.wns.windows.com
)
findstr " bn2wns1b.wns.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/bn2wns1b.wns.windows.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked bn2wns1b.wns.windows.com
)
findstr " bs.eyeblaster.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/bs.eyeblaster.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked bs.eyeblaster.akadns.net
)
findstr " bs.serving-sys.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/bs.serving-sys.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked bs.serving-sys.com
)
findstr " c.atdmt.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/c.atdmt.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked c.atdmt.com
)
findstr " c.atdmt.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/c.atdmt.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked c.atdmt.com.nsatc.net
)
findstr " c.bing.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/c.bing.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked c.bing.com
)
findstr " c.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/c.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked c.microsoft.com
)
findstr " c.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/c.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked c.msn.com
)
findstr " c.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/c.msn.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked c.msn.com.nsatc.net
)
findstr " c.ninemsn.com.au" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/c.ninemsn.com.au/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked c.ninemsn.com.au
)
findstr " c.no.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/c.no.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked c.no.msn.com
)
findstr " c1.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/c1.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked c1.microsoft.com
)
findstr " cdn.atdmt.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/cdn.atdmt.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked cdn.atdmt.com
)
findstr " cdn.content.prod.cms.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/cdn.content.prod.cms.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked cdn.content.prod.cms.msn.com
)
findstr " cds26.ams9.msecn.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/cds26.ams9.msecn.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked cds26.ams9.msecn.net
)
findstr " choice.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/choice.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked choice.microsoft.com
)
findstr " choice.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/choice.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked choice.microsoft.com.nsatc.net
)
findstr " cmsresources.windowsphone.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/cmsresources.windowsphone.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked cmsresources.windowsphone.com
)
findstr " col.mobileads.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/col.mobileads.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked col.mobileads.msn.com
)
findstr " compatexchange.cloudapp.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/compatexchange.cloudapp.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked compatexchange.cloudapp.net
)
findstr " content.windows.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/content.windows.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked content.windows.microsoft.com
)
findstr " corp.sts.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/corp.sts.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked corp.sts.microsoft.com
)
findstr " corpext.msitadfs.glbdns2.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/corpext.msitadfs.glbdns2.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked corpext.msitadfs.glbdns2.microsoft.com
)
findstr " cs1.wpc.v0cdn.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/cs1.wpc.v0cdn.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked cs1.wpc.v0cdn.net
)
findstr " dart.l.doubleclick.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/dart.l.doubleclick.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked dart.l.doubleclick.net
)
findstr " db3aqu.atdmt.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/db3aqu.atdmt.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked db3aqu.atdmt.com
)
findstr " dc.services.visualstudio.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/dc.services.visualstudio.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked dc.services.visualstudio.com
)
findstr " dev.virtualearth.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/dev.virtualearth.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked dev.virtualearth.net
)
findstr " df.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/df.telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked df.telemetry.microsoft.com
)
findstr " diagnostics.support.microsoft.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/diagnostics.support.microsoft.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked diagnostics.support.microsoft.akadns.net
)
findstr " diagnostics.support.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/diagnostics.support.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked diagnostics.support.microsoft.com
)
findstr " digg.analytics.live.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/digg.analytics.live.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked digg.analytics.live.com
)
findstr " directory.services.live.com.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/directory.services.live.com.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked directory.services.live.com.akadns.net
)
findstr " displaycatalog.md.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/displaycatalog.md.mp.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked displaycatalog.md.mp.microsoft.com
)
findstr " dl.delivery.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/dl.delivery.mp.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked dl.delivery.mp.microsoft.com
)
findstr " dmd.metaservices.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/dmd.metaservices.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked dmd.metaservices.microsoft.com
)
findstr " download-ssl.msgamestudios.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/download-ssl.msgamestudios.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked download-ssl.msgamestudios.com
)
findstr " ecn.dev.virtualearth.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ecn.dev.virtualearth.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ecn.dev.virtualearth.net
)
findstr " en-us.appex-rf.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/en-us.appex-rf.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked en-us.appex-rf.msn.com
)
findstr " fe2.update.microsoft.com.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/fe2.update.microsoft.com.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked fe2.update.microsoft.com.akadns.net
)
findstr " fe3.delivery.dsp.mp.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/fe3.delivery.dsp.mp.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked fe3.delivery.dsp.mp.microsoft.com.nsatc.net
)
findstr " fe3.delivery.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/fe3.delivery.mp.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked fe3.delivery.mp.microsoft.com
)
findstr " feedback.microsoft-hohm.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/feedback.microsoft-hohm.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked feedback.microsoft-hohm.com
)
findstr " feedback.search.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/feedback.search.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked feedback.search.microsoft.com
)
findstr " feedback.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/feedback.windows.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked feedback.windows.com
)
findstr " fesweb1.ch1d.binginternal.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/fesweb1.ch1d.binginternal.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked fesweb1.ch1d.binginternal.com
)
findstr " ff4a487e56259f4bd5831e9e30470e83.azr.msnetworkanalytics.testanalytics.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ff4a487e56259f4bd5831e9e30470e83.azr.msnetworkanalytics.testanalytics.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ff4a487e56259f4bd5831e9e30470e83.azr.msnetworkanalytics.testanalytics.net
)
findstr " flex.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/flex.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked flex.msn.com
)
findstr " flex.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/flex.msn.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked flex.msn.com.nsatc.net
)
findstr " g.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/g.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked g.msn.com
)
findstr " g.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/g.msn.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked g.msn.com.nsatc.net
)
findstr " geo-prod.do.dsp.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/geo-prod.do.dsp.mp.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked geo-prod.do.dsp.mp.microsoft.com
)
findstr " global.msads.net.c.footprint.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/global.msads.net.c.footprint.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked global.msads.net.c.footprint.net
)
findstr " h1.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/h1.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked h1.msn.com
)
findstr " h2.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/h2.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked h2.msn.com
)
findstr " help.bingads.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/help.bingads.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked help.bingads.microsoft.com
)
findstr " i1.services.social.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/i1.services.social.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked i1.services.social.microsoft.com
)
findstr " i1.services.social.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/i1.services.social.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked i1.services.social.microsoft.com.nsatc.net
)
findstr " inference.location.live.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/inference.location.live.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked inference.location.live.net
)
findstr " js.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/js.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked js.microsoft.com
)
findstr " lb1.www.ms.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/lb1.www.ms.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked lb1.www.ms.akadns.net
)
findstr " licensing.md.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/licensing.md.mp.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked licensing.md.mp.microsoft.com
)
findstr " live.rads.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/live.rads.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked live.rads.msn.com
)
findstr " livetileedge.dsx.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/livetileedge.dsx.mp.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked livetileedge.dsx.mp.microsoft.com
)
findstr " logging.windows.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/logging.windows.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked logging.windows.microsoft.com
)
findstr " m.adnxs.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/m.adnxs.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked m.adnxs.com
)
findstr " m.anycast.adnxs.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/m.anycast.adnxs.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked m.anycast.adnxs.com
)
findstr " mediadiscovery.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/mediadiscovery.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked mediadiscovery.microsoft.com
)
findstr " microsoft-hohm.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/microsoft-hohm.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked microsoft-hohm.com
)
findstr " msnportal.112.2o7.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/msnportal.112.2o7.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked msnportal.112.2o7.net
)
findstr " msntest.serving-sys.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/msntest.serving-sys.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked msntest.serving-sys.com
)
findstr " oca.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/oca.telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked oca.telemetry.microsoft.com
)
findstr " oca.telemetry.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/oca.telemetry.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked oca.telemetry.microsoft.com.nsatc.net
)
findstr " onesettings-bn2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/onesettings-bn2.metron.live.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked onesettings-bn2.metron.live.com.nsatc.net
)
findstr " onesettings-cy2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/onesettings-cy2.metron.live.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked onesettings-cy2.metron.live.com.nsatc.net
)
findstr " onesettings-db5.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/onesettings-db5.metron.live.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked onesettings-db5.metron.live.com.nsatc.net
)
findstr " onesettings-hk2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/onesettings-hk2.metron.live.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked onesettings-hk2.metron.live.com.nsatc.net
)
findstr " otf.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/otf.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked otf.msn.com
)
findstr " popup.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/popup.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked popup.msn.com
)
findstr " pre.footprintpredict.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/pre.footprintpredict.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked pre.footprintpredict.com
)
findstr " rad.live.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/rad.live.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked rad.live.com
)
findstr " rad.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/rad.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked rad.msn.com
)
findstr " rad.msn.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/rad.msn.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked rad.msn.com.nsatc.net
)
findstr " redir.metaservices.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/redir.metaservices.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked redir.metaservices.microsoft.com
)
findstr " reports.wes.df.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/reports.wes.df.telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked reports.wes.df.telemetry.microsoft.com
)
findstr " rmads.eu.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/rmads.eu.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked rmads.eu.msn.com
)
findstr " rmads.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/rmads.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked rmads.msn.com
)
findstr " rpt.rad.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/rpt.rad.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked rpt.rad.msn.com
)
findstr " sb.scorecardresearch.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/sb.scorecardresearch.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked sb.scorecardresearch.com
)
findstr " schemas.microsoft.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/schemas.microsoft.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked schemas.microsoft.akadns.net
)
findstr " secure.adnxs.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/secure.adnxs.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked secure.adnxs.com
)
findstr " secure.anycast.adnxs.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/secure.anycast.adnxs.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked secure.anycast.adnxs.com
)
findstr " secure.flashtalking.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/secure.flashtalking.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked secure.flashtalking.com
)
findstr " services.wes.df.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/services.wes.df.telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked services.wes.df.telemetry.microsoft.com
)
findstr " settings.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/settings.data.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked settings.data.microsoft.com
)
findstr " settings-sandbox.data.glbdns2.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/settings-sandbox.data.glbdns2.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked settings-sandbox.data.glbdns2.microsoft.com
)
findstr " settings-sandbox.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/settings-sandbox.data.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked settings-sandbox.data.microsoft.com
)
findstr " settings-ssl.xboxlive.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/settings-ssl.xboxlive.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked settings-ssl.xboxlive.com
)
findstr " settings-win.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/settings-win.data.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked settings-win.data.microsoft.com
)
findstr " sgmetrics.cloudapp.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/sgmetrics.cloudapp.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked sgmetrics.cloudapp.net
)
findstr " shell.windows.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/shell.windows.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked shell.windows.com
)
findstr " siweb.microsoft.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/siweb.microsoft.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked siweb.microsoft.akadns.net
)
findstr " skyapi.skyprod.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/skyapi.skyprod.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked skyapi.skyprod.akadns.net
)
findstr " sls.update.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/sls.update.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked sls.update.microsoft.com
)
findstr " sls.update.microsoft.com.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/sls.update.microsoft.com.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked sls.update.microsoft.com.akadns.net
)
findstr " sls.update.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/sls.update.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked sls.update.microsoft.com.nsatc.net
)
findstr " sO.2mdn.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/sO.2mdn.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked sO.2mdn.net
)
findstr " spynet.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/spynet.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked spynet.microsoft.com
)
findstr " spynet2.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/spynet2.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked spynet2.microsoft.com
)
findstr " spynetalt.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/spynetalt.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked spynetalt.microsoft.com
)
findstr " sqm.df.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/sqm.df.telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked sqm.df.telemetry.microsoft.com
)
findstr " sqm.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/sqm.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked sqm.microsoft.com
)
findstr " sqm.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/sqm.telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked sqm.telemetry.microsoft.com
)
findstr " sqm.telemetry.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/sqm.telemetry.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked sqm.telemetry.microsoft.com.nsatc.net
)
findstr " ssw.live.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ssw.live.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ssw.live.com
)
findstr " ssw.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/ssw.live.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked ssw.live.com.nsatc.net
)
findstr " static.2mdn.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/static.2mdn.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked static.2mdn.net
)
findstr " static-2mdn-net.l.google.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/static-2mdn-net.l.google.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked static-2mdn-net.l.google.com
)
findstr " statsfe1.ws.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/statsfe1.ws.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked statsfe1.ws.microsoft.com
)
findstr " statsfe1.ws.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/statsfe1.ws.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked statsfe1.ws.microsoft.com.nsatc.net
)
findstr " statsfe2.update.microsoft.com.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/statsfe2.update.microsoft.com.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked statsfe2.update.microsoft.com.akadns.net
)
findstr " statsfe2.ws.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/statsfe2.ws.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked statsfe2.ws.microsoft.com
)
findstr " statsfe2.ws.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/statsfe2.ws.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked statsfe2.ws.microsoft.com.nsatc.net
)
findstr " storeedgefd.dsx.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/storeedgefd.dsx.mp.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked storeedgefd.dsx.mp.microsoft.com
)
findstr " support.msn.microsoft.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/support.msn.microsoft.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked support.msn.microsoft.akadns.net
)
findstr " survey.watson.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/survey.watson.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked survey.watson.microsoft.com
)
findstr " t.urs.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/t.urs.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked t.urs.microsoft.com.nsatc.net
)
findstr " t0.ssl.ak.dynamic.tiles.virtualearth.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/t0.ssl.ak.dynamic.tiles.virtualearth.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked t0.ssl.ak.dynamic.tiles.virtualearth.net
)
findstr " t0.ssl.ak.tiles.virtualearth.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/t0.ssl.ak.tiles.virtualearth.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked t0.ssl.ak.tiles.virtualearth.net
)
findstr " telecommand.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/telecommand.telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked telecommand.telemetry.microsoft.com
)
findstr " telecommand.telemetry.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/telecommand.telemetry.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked telecommand.telemetry.microsoft.com.nsatc.net
)
findstr " telemetry.appex.bing.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/telemetry.appex.bing.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked telemetry.appex.bing.net
)
findstr " telemetry.appex.search.prod.ms.akadns.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/telemetry.appex.search.prod.ms.akadns.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked telemetry.appex.search.prod.ms.akadns.net
)
findstr " telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked telemetry.microsoft.com
)
findstr " telemetry.urs.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/telemetry.urs.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked telemetry.urs.microsoft.com
)
findstr " tile-service.weather.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/tile-service.weather.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked tile-service.weather.microsoft.com
)
findstr " tlu.dl.delivery.mp.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/tlu.dl.delivery.mp.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked tlu.dl.delivery.mp.microsoft.com
)
findstr " udc.msn.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/udc.msn.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked udc.msn.com
)
findstr " urs.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/urs.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked urs.microsoft.com
)
findstr " version.hybrid.api.here.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/version.hybrid.api.here.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked version.hybrid.api.here.com
)
findstr " view.atdmt.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/view.atdmt.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked view.atdmt.com
)
findstr " vortex.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/vortex.data.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked vortex.data.microsoft.com
)
findstr " vortex-bn2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/vortex-bn2.metron.live.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked vortex-bn2.metron.live.com.nsatc.net
)
findstr " vortex-cy2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/vortex-cy2.metron.live.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked vortex-cy2.metron.live.com.nsatc.net
)
findstr " vortex-hk2.metron.live.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/vortex-hk2.metron.live.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked vortex-hk2.metron.live.com.nsatc.net
)
findstr " vortex-sandbox.data.glbdns2.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/vortex-sandbox.data.glbdns2.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked vortex-sandbox.data.glbdns2.microsoft.com
)
findstr " vortex-sandbox.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/vortex-sandbox.data.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked vortex-sandbox.data.microsoft.com
)
findstr " vortex-win.data.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/vortex-win.data.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked vortex-win.data.microsoft.com
)
findstr " w3.b.cap-mii.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/w3.b.cap-mii.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked w3.b.cap-mii.net
)
findstr " watson.live.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/watson.live.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked watson.live.com
)
findstr " watson.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/watson.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked watson.microsoft.com
)
findstr " watson.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/watson.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked watson.microsoft.com.nsatc.net
)
findstr " watson.ppe.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/watson.ppe.telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked watson.ppe.telemetry.microsoft.com
)
findstr " watson.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/watson.telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked watson.telemetry.microsoft.com
)
findstr " watson.telemetry.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/watson.telemetry.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked watson.telemetry.microsoft.com.nsatc.net
)
findstr " wes.df.telemetry.microsoft.com" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/wes.df.telemetry.microsoft.com/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked wes.df.telemetry.microsoft.com
)
findstr " win10.ipv6.microsoft.com.nsatc.net" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/win10.ipv6.microsoft.com.nsatc.net/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked win10.ipv6.microsoft.com.nsatc.net
)
findstr " www.modern.ie" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
if %errorlevel% equ 0 (
  "%~dp0sed.exe" -i "/www.modern.ie/d" "%systemdrive%\windows\system32\drivers\etc\hosts" >nul 2>&1
  echo  - unblocked www.modern.ie
)
del /f /q routes.tmp >nul 2>&1
exit