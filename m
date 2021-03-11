Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C3C337008
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 11:31:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D964C431CF;
	Thu, 11 Mar 2021 10:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FXc0g-yFZavv; Thu, 11 Mar 2021 10:31:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E3F4414E0;
	Thu, 11 Mar 2021 10:30:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 288261BF28A
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 10:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18646414E0
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 10:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LNDjHuE--Rmi for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 10:30:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtprelay.hostedemail.com (smtprelay0223.hostedemail.com
 [216.40.44.223])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C89F6400D6
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 10:30:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id A784B18013662
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 09:15:40 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 7851E1806ECE7;
 Thu, 11 Mar 2021 09:15:37 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:982:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2197:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3653:3865:3867:3868:3873:4250:4321:5007:7652:10004:10400:10848:11232:11658:11914:12297:12555:12740:12760:12895:12986:13069:13311:13357:13439:14181:14659:14721:21080:21221:21451:21627:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: cause26_620e79827709
X-Filterd-Recvd-Size: 1972
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Thu, 11 Mar 2021 09:15:36 +0000 (UTC)
Message-ID: <379d4b58d82be1f871924c89e0db7bab367564fb.camel@perches.com>
Subject: Re: [PATCH] staging: rtl8723bs: align comments
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Fabio Aiuto
 <fabioaiuto83@gmail.com>
Date: Thu, 11 Mar 2021 01:15:34 -0800
In-Reply-To: <20210310174830.GM2087@kadam>
References: <20210310153717.GA5741@agape.jhs> <20210310174830.GM2087@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2021-03-10 at 20:48 +0300, Dan Carpenter wrote:
> You need to have a space character after the '*'.

Perhaps YA checkpatch test...
---
 scripts/checkpatch.pl | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index f42e5ba16d9b..0de553d52605 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3876,6 +3876,21 @@ sub process {
 			}
 		}
 
+# Independent comment lines should have a space after the comment initiator
+		if ($line =~ /^\+[ \t]*($;+)/) {		#leading comment
+			my $comment = trim(substr($rawline, $-[1], $+[1] - $-[1]));
+			if ($comment =~ m{^(/\*|\*/|\*|//)(.*)}) {
+				my $init = $1;
+				my $rest = $2;
+				if ($init =~ m{^(?:/\*|\*|//)$} &&
+				    $rest ne '' &&
+				    $rest !~ /^[\s\*=\-]/) {
+					WARN("COMMENT_STYLE",
+					     "Comments generally use whitespace after the comment initiator\n" . $herecurr);
+				}
+			}
+		}
+
 # check for missing blank lines after struct/union declarations
 # with exceptions for various attributes and macros
 		if ($prevline =~ /^[\+ ]};?\s*$/ &&

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
