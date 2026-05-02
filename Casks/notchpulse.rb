cask "notchpulse" do
  version "0.1.4"
  sha256 "d052ad66dd856f3805caf711ff767dedbc187dce4d299cca6802915c36c574c9"

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
