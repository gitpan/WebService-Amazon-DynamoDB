
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.48;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Abstract API support for Amazon DynamoDB",
  "AUTHOR" => "Tom Molesworth <cpan\@entitymodel.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.48"
  },
  "DISTNAME" => "WebService-Amazon-DynamoDB",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "WebService::Amazon::DynamoDB",
  "PREREQ_PM" => {
    "Future" => "0.15",
    "HTTP::Request" => 0,
    "JSON::XS" => 0,
    "Mixin::Event::Dispatch" => "1.004",
    "Module::Load" => 0,
    "WebService::Amazon::Signature" => 0,
    "curry" => 0,
    "parent" => 0
  },
  "TEST_REQUIRES" => {
    "Test::CheckDeps" => "0.010",
    "Test::Fatal" => "0.010",
    "Test::More" => "0.98"
  },
  "VERSION" => "0.001",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Future" => "0.15",
  "HTTP::Request" => 0,
  "JSON::XS" => 0,
  "Mixin::Event::Dispatch" => "1.004",
  "Module::Load" => 0,
  "Test::CheckDeps" => "0.010",
  "Test::Fatal" => "0.010",
  "Test::More" => "0.98",
  "WebService::Amazon::Signature" => 0,
  "curry" => 0,
  "parent" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



