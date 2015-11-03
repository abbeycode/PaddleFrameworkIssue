Pod::Spec.new do |s|
  s.name        = "Paddle-MAS"
  s.version     = "1.1.5"
  s.summary     = "A licensing framework for OS X"
  s.description = "Paddle is an easy to use framework for OS X including analytics features."
  s.homepage    = "https://www.paddle.com"
  s.license     = {
    :type => 'MIT',
    :file => 'LICENSE'
  }
  s.authors     = {
    'Louis Harwood' => 'louis@paddle.com',
    'Christian Owens' => 'christian@paddle.com',
  }

  s.platform = :osx, '10.7'
  s.source   = { :http => "https://github.com/PaddleHQ/Paddle-MAS/archive/v1.1.5.tar.gz" }

  s.vendored_framework  = 'Paddle-MAS.framework'
  s.requires_arc = false
end
