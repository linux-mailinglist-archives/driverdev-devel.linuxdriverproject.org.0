Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3476F3063A2
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 20:01:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE9088621E;
	Wed, 27 Jan 2021 19:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SiTw6xsNILOX; Wed, 27 Jan 2021 19:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A2BC861FF;
	Wed, 27 Jan 2021 19:00:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 69FF01BF9D1
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 19:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 659F787346
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 19:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sosdBoN9AKwd for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 19:00:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0190.hostedemail.com
 [216.40.44.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 740C48734C
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 19:00:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id F1EA1800BE89
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 18:21:35 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id EC021100E7B4B;
 Wed, 27 Jan 2021 18:21:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:982:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2197:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3865:3866:3867:3871:3872:3874:4321:4823:5007:6742:7652:7903:10004:10400:10848:11232:11658:11914:12297:12555:12663:12760:12986:13069:13311:13357:13439:14093:14097:14181:14659:14721:21080:21221:21433:21451:21627:21740:21939:30054:30083,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: wire77_23102f827599
X-Filterd-Recvd-Size: 2760
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Wed, 27 Jan 2021 18:21:31 +0000 (UTC)
Message-ID: <2efe84eefdfd21da68d323a6e32b4ad84bc0fa6b.camel@perches.com>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Greg KH
 <gregkh@linuxfoundation.org>
Date: Wed, 27 Jan 2021 10:21:30 -0800
In-Reply-To: <20210127144946.GF2696@kadam>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <YBFv+12xfsoxacDb@kroah.com> <20210127220809.000026fb@gmail.com>
 <YBF08Xf7qaZx3YZ1@kroah.com> <20210127221708.00002568@gmail.com>
 <YBF30EEUkhEMY5ti@kroah.com> <20210127144946.GF2696@kadam>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, oliver.graute@kococonnector.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 sbrivio@redhat.com, carlis <zhangxuezhi3@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, colin.king@canonical.com,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> Comments are the exception to the "no spaces at the start of a line"
> rule.  I was expecting that the kbuild-bot would send a Smatch warning
> for inconsistent indenting, but comments are not counted there either.
> 
> I'm sort of surprised that we don't have checkpatch rule about the
> missing space characters.  It should be: "/* Tearing Effect Line On */".

Maybe this but the "preceded by a tab" test is pretty noisy.

---
diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 4f8494527139..72347e82d384 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3720,6 +3720,22 @@ sub process {
 				    s/(\(\s*$Type\s*\))[ \t]+/$1/;
 			}
 		}
+
+# Comment styles
+# Initial comment only lines that have a leading space
+		if ($rawline =~ m{^\+([ \t]+)(?:/\*|//)} && $1 =~ / /) {
+			WARN("COMMENT_STYLE",
+			     "Initial comment lines should be indented only with tabs\n" . $herecurr);
+# comments not aligned on tabs
+		} elsif ($rawline !~ m{^\+(?:/\*|//)} &&
+			 $rawline =~ m{^\+.*[^\t](?:/\*|//)}) {
+			CHK("COMMENT_STYLE",
+			    "Comments should generally be preceded by a tab\n" . $herecurr);
+		}
+
+# comment initiators should generally be followed by a space if using words
+		if ($rawline =~ m{^\+.*(?:/\*|//)\w}) {
+			WARN("COMMENT_STYLE",
+			     "Comment text should use a space after the comment initiator\n" . $herecurr);
+		}
 
 # Block comment styles
 # Networking with an initial /*


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
