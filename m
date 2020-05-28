Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF25D1E5B9C
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 11:16:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71ED888212;
	Thu, 28 May 2020 09:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxGQ7vNSv3vm; Thu, 28 May 2020 09:16:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A51E8806F;
	Thu, 28 May 2020 09:16:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA49A1BF307
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 09:16:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A42B287FB9
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 09:16:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kYP63iIm2Rj2 for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 09:16:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 27D9E87F69
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 09:16:22 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04S9CcOV139899;
 Thu, 28 May 2020 09:16:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=Y2lyja0RpoMvlQmp8pjV7g3iSap75rGmaDj4kM0xMWs=;
 b=LYrI36JZbny3MLaHEE2xyuNDfzJ5iw+Vbl2k/oqWpB65E4iZUjH/xwUOTWfVt2whsaHz
 gHX8mbrxJxPHK0x1MTnDf7slV8rT6Rs9CJJWDm9aQGLGihh+xpWqQ7q6BHtC3EM7s+BR
 MjysqVJ65aSObMMKDEh/EWYHpdJFoucaZg3PlpOFvFhMbpPxzhIhSaJ8JKeiEGTbaw8m
 0IurH2J39w2igwWdImsYKKr0IdIu/u65biPwSZ/RsBijbXLouyt66amlJWvvgUd8N8S0
 XzqawVY9XloWtt9xgOUqLu3nCZimPo2VuAAUVCBNfwzb56Ew2dhtl4+NVRyrnZALqxJU PQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 318xe1kxd6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 09:16:20 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04S9DcKX136036;
 Thu, 28 May 2020 09:16:19 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 31a9ks377q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 May 2020 09:16:19 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04S9GHhY030577;
 Thu, 28 May 2020 09:16:18 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 28 May 2020 02:16:16 -0700
Date: Thu, 28 May 2020 12:16:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Pascal Terjan <pterjan@google.com>
Subject: Re: [PATCH] staging: rtl8723bs: Use shared header constants
Message-ID: <20200528091607.GN22511@kadam>
References: <20200523212919.33181-1-pterjan@google.com>
 <20200527194811.GF30374@kadam>
 <CAANdO=LqcHOzxSjudw+G+292sjguOoA-E2y4iAFZtCfa0UFe1A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7lMq7vMTJT4tNk0a"
Content-Disposition: inline
In-Reply-To: <CAANdO=LqcHOzxSjudw+G+292sjguOoA-E2y4iAFZtCfa0UFe1A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 adultscore=0 cotscore=-2147483648 mlxscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280063
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--7lMq7vMTJT4tNk0a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 27, 2020 at 09:33:03PM +0100, Pascal Terjan wrote:
> On Wed, 27 May 2020 at 20:48, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > >       /* eth_type = (psnap_type[0] << 8) | psnap_type[1]; */
> > > -     if ((!memcmp(psnap, rtw_rfc1042_header, SNAP_SIZE) &&
> > > -             (memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2)) &&
> > > -             (memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2))) ||
> > > -             /* eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) || */
> > > -              !memcmp(psnap, rtw_bridge_tunnel_header, SNAP_SIZE)) {
> > > +     if ((!memcmp(psnap, rfc1042_header, SNAP_SIZE) &&
> > > +          memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2) &&
> > > +          memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2)) ||
> > > +         /* eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) || */
> > > +         !memcmp(psnap, bridge_tunnel_header, SNAP_SIZE)) {
> > >               /* remove RFC1042 or Bridge-Tunnel encapsulation and replace EtherType */
> > >               bsnaphdr = true;
> >
> > Your indenting is correct, but I would probably do that in a separate
> > patch.  It makes it harder to review.  Also probably delete the
> > commented out code.  Do you see how if we don't touch the indenting then
> > it doesn't raise the question about if we should delete the comments as
> > well?
> 
> I initially didn't want to change it but checkpatch was sad which
> makes me sad, maybe I should have cleaned up this area in a first
> trivial patch before touching that line.

Just ignore checkpatch in this case because it's not a warning that your
patch introduced.

Say if you re-name a function, then you *must* re-indent the parameters
because that's a warning the change introduces.  If there is a
checkpatch warning and it's on a line that you touch then you can change
that.  But once you start changing other nearby lines you might run into
trouble.

The other thing that you fixed is you removed unnecessary parentheses
and that's good but it actually broke my review script for renaming
variables.  (Attached).  I do `cat email.txt | rename_rev.pl -a`  It's
easier in mutt.

regards,
dan carpenter

--7lMq7vMTJT4tNk0a
Content-Type: text/x-perl; charset=us-ascii
Content-Disposition: attachment; filename="rename_rev.pl"

#!/usr/bin/perl

# This is a tool to help review variable rename patches. The goal is
# to strip out the automatic sed renames and the white space changes
# and leaves the interesting code changes.
#
# Example 1: A patch renames openInfo to open_info:
#     cat diff | rename_review.pl openInfo open_info
#
# Example 2: A patch swaps the first two arguments to some_func():
#     cat diff | rename_review.pl \
#                    -e 's/some_func\((.*?),(.*?),/some_func\($2, $1,/'
#
# Example 3: A patch removes the xkcd_ prefix from some but not all the
# variables.  Instead of trying to figure out which variables were renamed
# just remove the prefix from them all:
#     cat diff | rename_review.pl -ea 's/xkcd_//g'
#
# Example 4: A patch renames 20 CamelCase variables.  To review this let's
# just ignore all case changes and all '_' chars.
#     cat diff | rename_review -ea 'tr/[A-Z]/[a-z]/' -ea 's/_//g'
#
# The other arguments are:
# -nc removes comments
# -ns removes '\' chars if they are at the end of the line.

use strict;
use File::Temp qw/ :mktemp  /;

sub usage() {
    print "usage: cat diff | $0 old new old new old new...\n";
    print "   or: cat diff | $0 -e 's/old/new/g'\n";
    print " -a : auto";
    print " -e : execute on old lines\n";
    print " -ea: execute on all lines\n";
    print " -nc: no comments\n";
    print " -nb: no unneeded braces\n";
    print " -ns: no slashes at the end of a line\n";
    print " -pull: for function pull.  deletes context.\n";
    print " -r <recipe>: NULL, bool";
    exit(1);
}
my @subs;
my @strict_subs;
my @cmds;
my $strip_comments;
my $strip_braces;
my $strip_slashes;
my $pull_context;
my $auto;

sub filter($) {
    my $line = shift();
    my $old = 0;
    if ($line =~ /^-/) {
        $old = 1;
    }
    # remove the first char
    $line =~ s/^[ +-]//;
    if ($strip_comments) {
        $line =~ s/\/\*.*?\*\///g;
        $line =~ s/\/\/.*//;
    }
    foreach my $cmd (@cmds) {
        if ($old || $cmd->[0] =~ /^-ea$/) {
            eval "\$line =~ $cmd->[1]";
        }
    }
    foreach my $sub (@subs) {
        if ($old) {
            $line =~ s/$sub->[0]/$sub->[1]/g;
        }
    }
    foreach my $sub (@strict_subs) {
        if ($old) {
            $line =~ s/\b$sub->[0]\b/$sub->[1]/g;
        }
    }

    # remove the newline so we can move curly braces here if we want.
    $line =~ s/\n//;
    return $line;
}

while (my $param1 = shift()) {
    if ($param1 =~ /^-a$/) {
        $auto = 1;
        next;
    }
    if ($param1 =~ /^-nc$/) {
        $strip_comments = 1;
        next;
    }
    if ($param1 =~ /^-nb$/) {
        $strip_braces = 1;
        next;
    }
    if ($param1 =~ /^-ns$/) {
        $strip_slashes = 1;
        next;
    }
    if ($param1 =~ /^-pull$/) {
        $pull_context = 1;
        next;
    }
    my $param2 = shift();
    if ($param2 =~ /^$/) {
        usage();
    }
    if ($param1 =~ /^-e(a|)$/) {
        push @cmds, [$param1, $param2];
        next;
    }
    if ($param1 =~ /^-r$/) {
        if ($param2 =~ /bool/) {
            push @cmds, ["-e", "s/== true//"];
            push @cmds, ["-e", "s/true ==//"];
            push @cmds, ["-e", "s/([a-zA-Z\-\>\._]+) == false/!\$1/"];
            next;
        } elsif ($param2 =~ /NULL/) {
            push @cmds, ["-e", "s/ != NULL//"];
            push @cmds, ["-e", "s/([a-zA-Z\-\>\._0-9]+) == NULL/!\$1/"];
            next;
        } elsif ($param2 =~ /^BIT$/) {
            push @cmds, ["-e", 's/1[uU]* *<< *(\d+)/BIT($1)/'];
            push @cmds, ["-e", 's/\(1 *<< *(\w+)\)/BIT($1)/'];
            push @cmds, ["-e", 's/\(BIT\((.*?)\)\)/BIT($1)/'];
            next;
        } elsif ($param2 =~ /^HBIT$/) {
            push @cmds, ["-e", 's/0x0*1\b/BIT(0)/'];
            push @cmds, ["-e", 's/0x0*2\b/BIT(1)/'];
            push @cmds, ["-e", 's/0x0*4\b/BIT(2)/'];
            push @cmds, ["-e", 's/0x0*8\b/BIT(3)/'];
            push @cmds, ["-e", 's/0x0*10\b/BIT(4)/'];
            push @cmds, ["-e", 's/0x0*20\b/BIT(5)/'];
            push @cmds, ["-e", 's/0x0*40\b/BIT(6)/'];
            push @cmds, ["-e", 's/0x0*80\b/BIT(7)/'];
            next;
        }

        usage();
    }

    push @subs, [$param1, $param2];
}

my ($oldfh, $oldfile) = mkstemp("/tmp/oldXXXXX");
my ($newfh, $newfile) = mkstemp("/tmp/newXXXXX");

my @input = <STDIN>;

# auto works on the observation that the - line comes before the + line when we
# rename variables.  Take the first - line.  Find the first + line.  Find the
# one word difference.  Test that the old word never occurs in the new text.
if ($auto) {
    my %c_keywords = (  auto => 1,
                        break => 1,
                        case => 1,
                        char => 1,
                        const => 1,
                        continue => 1,
                        default => 1,
                        do => 1,
                        double => 1,
                        else => 1,
                        enum => 1,
                        extern => 1,
                        float => 1,
                        for => 1,
                        goto => 1,
                        if => 1,
                        int => 1,
                        long => 1,
                        register => 1,
                        return => 1,
                        short => 1,
                        signed => 1,
                        sizeof => 1,
                        static => 1,
                        struct => 1,
                        switch => 1,
                        typedef => 1,
                        union => 1,
                        unsigned => 1,
                        void => 1,
                        volatile => 1,
                        while => 1);
    my %old_words;
    my %new_words;
    my %added_cmds;
    my @new_subs;

    my $inside = 0;
    foreach my $line (@input) {
        if ($line =~ /^(---|\+\+\+)/) {
            next;
        }

        if ($line =~ /^@/) {
            $inside = 1;
        }
        if ($inside && !(($_ =~ /^[- @+]/) || ($_ =~ /^$/))) {
            $inside = 0;
        }
        if (!$inside) {
            next;
        }

        if ($line =~ /^-/) {
            s/-//;
            my @words = split(/\W+/, $line);
            foreach my $word (@words) {
                $old_words{$word} = 1;
            }
        } elsif ($line =~ /^\+/) {
            s/\+//;
            my @words = split(/\W+/, $line);
            foreach my $word (@words) {
                $new_words{$word} = 1;
            }
        }
    }

    my $old_line;
    my $new_line;
    $inside = 0;
    foreach my $line (@input) {
        if ($line =~ /^(---|\+\+\+)/) {
            next;
        }

        if ($line =~ /^@/) {
            $inside = 1;
        }
        if ($inside && !(($_ =~ /^[- @+]/) || ($_ =~ /^$/))) {
            $inside = 0;
        }
        if (!$inside) {
            next;
        }


        if ($line =~ /^-/ && !$old_line) {
            s/^-//;
            $old_line = $line;
            next;
        } elsif ($old_line && $line =~ /^\+/) {
            s/^\+//;
            $new_line = $line;
        } else {
            next;
        }

        my @old_words = split(/\W+/, $old_line);
        my @new_words = split(/\W+/, $new_line);
        my @new_cmds;

        my $i;
        my $diff_count = 0;
        for ($i = 0; ; $i++) {
            if (!defined($old_words[$i]) && !defined($new_words[$i])) {
                last;
            }
            if (!defined($old_words[$i]) || !defined($new_words[$i])) {
                $diff_count = 1000;
                last;
            }
            if ($old_words[$i] eq $new_words[$i]) {
                next;
            }
            if ($c_keywords{$old_words[$i]}) {
                $diff_count = 1000;
                last;
            }
            if ($new_words{$old_words[$i]}) {
                $diff_count++;
            }
            push @new_cmds, [$old_words[$i], $new_words[$i]];
        }
        if ($diff_count <= 2) {
            foreach my $sub (@new_cmds) {
                if ($added_cmds{$sub->[0] . $sub->[1]}) {
                    next;
                }
                $added_cmds{$sub->[0] . $sub->[1]} = 1;
                push @new_subs, [$sub->[0] , $sub->[1]];
            }
        }

        $old_line = 0;
    }

    if (@new_subs) {
        print "RENAMES:\n";
        foreach my $sub (@new_subs) {
            print "$sub->[0] => $sub->[1]\n";
            push @strict_subs, [$sub->[0] , $sub->[1]];
        }
        print "---\n";
    }
}

my $output;

#recreate an old file and a new file
my $inside = 0;
foreach (@input) {
    if ($pull_context && !($_ =~ /^[+-@]/)) {
        next;
    }

    if ($_ =~ /^(---|\+\+\+)/) {
        next;
    }

    if ($_ =~ /^@/) {
        $inside = 1;
    }
    if ($inside && !(($_ =~ /^[- @+]/) || ($_ =~ /^$/))) {
        $inside = 0;
    }
    if (!$inside) {
        next;
    }

    $output = filter($_);

    if ($strip_braces && $_ =~ /^(\+|-)\W+{/) {
        $output =~ s/^[\t ]+(.*)/ $1/;
    } else {
        $output = "\n" . $output;
    }

    if ($_ =~ /^-/) {
        print $oldfh $output;
        next;
    }
    if ($_ =~ /^\+/) {
        print $newfh $output;
        next;
    }
    print $oldfh $output;
    print $newfh $output;

}
print $oldfh "\n";
print $newfh "\n";
# git diff puts a -- and version at the end of the diff.  put the -- into the
# new file as well so it's ignored
if ($output =~ /\n-/) {
    print $newfh "-\n";
}

my $hunk;
my $old_txt;
my $new_txt;

open diff, "diff -uw $oldfile $newfile |";
while (<diff>) {
    if ($_ =~ /^(---|\+\+\+)/) {
        next;
    }

    if ($_ =~ /^@/) {

        if ($strip_comments) {
            $old_txt =~ s/\/\*.*?\*\///g;
            $new_txt =~ s/\/\*.*?\*\///g;
        }
        if ($strip_braces) {
            $old_txt =~ s/{([^;{]*?);}/$1;/g;
            $new_txt =~ s/{([^;{]*?);}/$1;/g;
            # this is a hack because i don't know how to replace nested
            # unneeded curly braces.
            $old_txt =~ s/{([^;{]*?);}/$1;/g;
            $new_txt =~ s/{([^;{]*?);}/$1;/g;
        }

        if ($old_txt ne $new_txt) {
            print $hunk;
            print $_;
        }
        $hunk = "";
        $old_txt = "";
        $new_txt = "";
        next;
    }

    $hunk = $hunk . $_;

    if ($strip_slashes) {
        s/\\$//;
    }

    if ($_ =~ /^-/) {
        s/-//;
        s/[ \t\n]//g;
        $old_txt = $old_txt . $_;
        next;
    }
    if ($_ =~ /^\+/) {
        s/\+//;
        s/[ \t\n]//g;
        $new_txt = $new_txt . $_;
        next;
    }
    if ($_ =~ /^ /) {
        s/^ //;
        s/[ \t\n]//g;
        $old_txt = $old_txt . $_;
        $new_txt = $new_txt . $_;
    }
}

if ($old_txt ne $new_txt) {
    if ($strip_comments) {
        $old_txt =~ s/\/\*.*?\*\///g;
        $new_txt =~ s/\/\*.*?\*\///g;
    }
    if ($strip_braces) {
        $old_txt =~ s/{([^;{]*?);}/$1;/g;
        $new_txt =~ s/{([^;{]*?);}/$1;/g;
        $old_txt =~ s/{([^;{]*?);}/$1;/g;
        $new_txt =~ s/{([^;{]*?);}/$1;/g;
    }

    print $hunk;
}

unlink($oldfile);
unlink($newfile);

print "\ndone.\n";

--7lMq7vMTJT4tNk0a
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--7lMq7vMTJT4tNk0a--
