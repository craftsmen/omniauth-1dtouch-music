describe OmniAuth::OnedtouchMusic do
  it 'has a version number' do
    expect(OmniAuth::OnedtouchMusic::VERSION).not_to be nil
  end

  it 'can be loaded by Omniauth' do
    expect do
      OmniAuth::Builder.new(nil) do
        provider :onedtouch_music, 'aaa', 'bbb'
      end
    end.to_not raise_error
  end
end
