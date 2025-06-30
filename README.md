<div align="center">
    <p>
        <h1>
            A simple way to create a single-script structure.
        </h1>
    </p>
</div>

  *This loader helps you automatically require and initialize modules organized under a single script, making your codebase cleaner and easier to manage.*

---

## 🚀 Usage

### 🛠️ Server: Requiring Services

```lua
-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--@dependencie/s
local Loader = require(ReplicatedStorage.Packages:WaitForChild("loader"))

Loader.LoadDescendants(script.Services)
```

### 💻 Client: Requiring Controllers

```lua
-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--@dependencie/s
local Loader = require(ReplicatedStorage.Packages:WaitForChild("loader"))

Loader.LoadDescendants(script.Controllers)
```
