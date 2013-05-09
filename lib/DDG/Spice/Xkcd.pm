package DDG::Spice::Xkcd;

use DDG::Spice;

name "xkcd";
description "Get the latest xkcd comic";
source "xkcd";
primary_example_queries "xkcd";
secondary_example_queries "xkcd 102";
category "special";
topics "entertainment", "geek", "special_interest";
icon_url "/i/xkcd.com.ico";
code_url "https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/Xkcd.pm";
attribution github => ["https://github.com/sdball", "Stephen Ball"],
		twitter => ["https://twitter.com/StephenBallNC", "StephenBallNC"];
status "enabled";


triggers startend => "xkcd";

spice to => 'http://xkcd.com/$1/info.0.json';
spice wrap_jsonp_callback => 1;

spice is_cached => 0;

handle remainder => sub {
<<<<<<< HEAD

=======
	
>>>>>>> f92a25b1827a054146a3e12fd3d27689abb84d6b
	if ($_ =~ /^(\d+|r(?:andom)?)$/) {
		return int rand 1122 if $1 =~ /r/;
		return $1;
	}
<<<<<<< HEAD

=======
	
>>>>>>> f92a25b1827a054146a3e12fd3d27689abb84d6b
	return '' if $_ eq '';
	return;
};

1;
