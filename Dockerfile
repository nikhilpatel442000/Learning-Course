# Use an official Ruby runtime as the base image
FROM ruby:3.2.2

# Set the working directory in the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    postgresql-client && \
    rm -rf var/lib/apt/lists/*


# Install Ruby dependencies
COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install --jobs 4 --retry 3

# Copy the Rails application code into the container
COPY . .

# Expose port 4000 for the Rails server
EXPOSE 3000

# Start the Rails server when the container starts
CMD ["rails", "server", "-b", "0.0.0.0"]