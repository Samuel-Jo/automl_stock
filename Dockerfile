# Python 3.10-slim 기반 이미지 사용
FROM python:3.10-slim
# 작업 디렉토리 설정
WORKDIR /app
# 필요한 패키지 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# stock_analysis_autogluon.py 파일 복사
COPY . .
# stock_analysis_autogluon.py 실행
CMD ["python", "stock_analysis_autogluon.py"]