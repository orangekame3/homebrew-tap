cask "notchpulse" do
  version "0.1.6"
  sha256 "2b99d04a7ddec7c1f953662fbe6c8bab9632237b008aeef944721dd7e08449e7"

  url "https://github.com/orangekame3/notchpulse/releases/download/v#{version}/NotchPulse-#{version}-arm64.tar.gz"
  name "NotchPulse"
  desc "System monitor that extends your MacBook's notch"
  homepage "https://github.com/orangekame3/notchpulse"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "NotchPulse.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/NotchPulse.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.orangekame3.NotchCPUMonitor.plist",
  ]
end
