# EthicBasket Project Setup Script

# Root Folder
$root = "EthicBasket"
New-Item -Path $root -ItemType Directory -Force

# Products Folder
$products = "$root\products"
New-Item -Path $products -ItemType Directory -Force

# Digital Products
$digital = "$products\digital"
New-Item -Path $digital -ItemType Directory -Force
New-Item -Path "$digital\nexascend-cli" -ItemType Directory
New-Item -Path "$digital\mkdocs-theme-bundle" -ItemType Directory
New-Item -Path "$digital\voiceover-service" -ItemType Directory
New-Item -Path "$digital\web3-gateway" -ItemType Directory
New-Item -Path "$digital\automation-pack" -ItemType Directory

# Vital Assets
$vital = "$products\vital-assets"
New-Item -Path $vital -ItemType Directory -Force

# Subfolders inside Vital Assets
New-Item -Path "$vital\lifefuel\honey" -ItemType Directory -Force
New-Item -Path "$vital\lifefuel\beetrolls" -ItemType Directory -Force
New-Item -Path "$vital\lifefuel\chia-seeds" -ItemType Directory -Force

New-Item -Path "$vital\symbolic-threads" -ItemType Directory
New-Item -Path "$vital\essential-kits" -ItemType Directory
New-Item -Path "$vital\recovery-essence" -ItemType Directory
New-Item -Path "$vital\ethictokens" -ItemType Directory

# Governance & Vault
$gov = "$products\governance"
New-Item -Path $gov -ItemType Directory -Force
New-Item -Path "$gov\constitution-kit" -ItemType Directory
New-Item -Path "$gov\nexvote" -ItemType Directory
New-Item -Path "$gov\lumid-vault" -ItemType Directory
New-Item -Path "$gov\nexara-sdk" -ItemType Directory
New-Item -Path "$gov\govbridge" -ItemType Directory
New-Item -Path "$gov\ethicsync" -ItemType Directory

# Confirmation Message
Write-Host "`n✅ EthicBasket folder structure has been successfully created!"
