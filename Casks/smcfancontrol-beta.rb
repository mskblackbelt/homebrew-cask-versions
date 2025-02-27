cask 'smcfancontrol-beta' do
  version '2.6.1'
  sha256 'd9dcd2c01e2583b74e14a6303ffd75d659dea7f99e1e42de4d8fcb0115cbcec3'

  url "https://github.com/hholtmann/smcFanControl/releases/download/#{version}%C3%9F1/smcFanControl_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/hholtmann/smcFanControl/releases.atom'
  name 'smcFanControl'
  homepage 'https://github.com/hholtmann/smcFanControl'

  conflicts_with cask: 'smcfancontrol'

  app 'smcFanControl.app'

  zap trash: [
               '~/Library/Application Support/smcFanControl',
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eidac.smcfancontrol#{version.major}.sfl*",
               "~/Library/Caches/com.eidac.smcFanControl#{version.major}",
             ]
end
