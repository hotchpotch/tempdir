Gem::Specification.new do |s|
  s.name = %q{tempdir}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yuichi Tateno"]
  s.autorequire = %q{}
  s.date = %q{2008-07-02}
  s.description = %q{}
  s.email = %q{hotchpotch@gmail.com}
  s.extra_rdoc_files = ["README", "ChangeLog"]
  s.files = ["README", "ChangeLog", "Rakefile", "test/tempdir_test.rb", "test/test_helper.rb", "lib/tempdir", "lib/tempdir/tempfile.rb", "lib/tempdir.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://tempdir.rubyforge.org}
  s.rdoc_options = ["--title", "tempdir documentation", "--charset", "utf-8", "--opname", "index.html", "--line-numbers", "--main", "README", "--inline-source", "--exclude", "^(examples|extras)/"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{tempdir}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{}
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
