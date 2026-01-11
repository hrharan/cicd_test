# 1. Start with a lightweight Linux system that has Python 3.9 installed
FROM python:3.9-slim

# 2. Create a folder inside the box for our app
WORKDIR /app

# 3. Copy our requirement file into the box
COPY requirements.txt .

# 4. Install the dependencies inside the box
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of our code into the box
COPY . .

# 6. Tell the box to run this command when it starts
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
