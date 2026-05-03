cask "notchpulse" do
  version "0.1.8"
  sha256 "2268bf189db454a5081e706ae119e561b082f50f76580455cceacbbb6c4395df"

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
