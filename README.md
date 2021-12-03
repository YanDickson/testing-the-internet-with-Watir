
### Step 1
Create `Gemfile`

### Step 2
Add gems to be installed

### Step 3
Run `bundle config set --local path 'vendor/bundle'`
>> Output: vendor and .bundle folder are generated in projec

### Step 4
Run `bundle install`
>> Output: Gemfile.lock is created and dependencies are installed

### Step 5
Run `bundle exec cucumber --init`
>> Output: Cucumber is initialized and file paths are created