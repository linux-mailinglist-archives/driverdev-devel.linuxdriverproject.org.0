Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBD1DE178
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Oct 2019 02:38:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9D8C920464;
	Mon, 21 Oct 2019 00:38:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AWny00t6J3QY; Mon, 21 Oct 2019 00:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 68C7B203E1;
	Mon, 21 Oct 2019 00:38:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00BD91BF95E
 for <devel@linuxdriverproject.org>; Mon, 21 Oct 2019 00:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C804085A57
 for <devel@linuxdriverproject.org>; Mon, 21 Oct 2019 00:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ld-25BDadiux for <devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 00:38:12 +0000 (UTC)
X-Greylist: delayed 04:55:33 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0140.hostedemail.com
 [216.40.44.140])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8CE868544C
 for <devel@driverdev.osuosl.org>; Mon, 21 Oct 2019 00:38:12 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id DA9D618023432
 for <devel@driverdev.osuosl.org>; Sun, 20 Oct 2019 18:39:28 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 591E218014B64;
 Sun, 20 Oct 2019 18:39:26 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::,
 RULES_HIT:41:355:379:599:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2197:2198:2199:2200:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3354:3622:3653:3865:3866:3868:3870:3871:3874:4250:4321:5007:6119:7875:9040:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:13095:13255:13439:13972:14181:14659:14721:21080:21221:21433:21451:21627:30012:30029:30054:30090:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.14.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:28,
 LUA_SUMMARY:none
X-HE-Tag: twig35_6f59e2b8ec10c
X-Filterd-Recvd-Size: 3854
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf07.hostedemail.com (Postfix) with ESMTPA;
 Sun, 20 Oct 2019 18:39:25 +0000 (UTC)
Message-ID: <85fdb8994408f5a04096fe4e212510733275b54f.camel@perches.com>
Subject: Re: [PATCH] Staging: gasket: apex_driver: fixed a line over 80
 characters coding style issue
From: Joe Perches <joe@perches.com>
To: Samuil Ivanov <samuil.ivanovbg@gmail.com>, gregkh@linuxfoundation.org
Date: Sun, 20 Oct 2019 11:39:24 -0700
In-Reply-To: <20191020175001.22105-1-samuil.ivanovbg@gmail.com>
References: <20191020175001.22105-1-samuil.ivanovbg@gmail.com>
User-Agent: Evolution 3.32.1-2 
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
Cc: devel@driverdev.osuosl.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

dOn Sun, 2019-10-20 at 20:50 +0300, Samuil Ivanov wrote:
> Fixed four lines of code that were over 80 characters long.

Some of the 80 column messages that checkpatch emits should
be ignored.  These are some of them because each of these
lines is a single very long name (48 chars!) identifier.

Perhaps checkpatch should not warn on these

> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
[]
> @@ -263,8 +263,8 @@ static int apex_enter_reset(struct gasket_dev *gasket_dev)
>  	 *    - Enable GCB idle
>  	 */
>  	gasket_read_modify_write_64(gasket_dev, APEX_BAR_INDEX,
> -				    APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
> -				    0x0, 1, 32);
> +			APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
> +			0x0, 1, 32);

Maybe add a checkpatch test for this and allow ignoring
single identifier lines using LONG_LINE_IDENT

---

o Add a couple missing semicolons too.

 scripts/checkpatch.pl | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index a85d719df1f4..cdce58be4f66 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3140,13 +3140,14 @@ sub process {
 #
 # There are a few types of lines that may extend beyond $max_line_length:
 #	logging functions like pr_info that end in a string
-#	lines with a single string
+#	lines with a single string or identifier
 #	#defines that are a single string
 #	lines with an RFC3986 like URL
 #
-# There are 3 different line length message types:
+# There are 4 different line length message types:
 # LONG_LINE_COMMENT	a comment starts before but extends beyond $max_line_length
 # LONG_LINE_STRING	a string starts before but extends beyond $max_line_length
+# LONG_LINE_IDENT	a single identifier starts before but extends beyond $max_line_length
 # LONG_LINE		all other lines longer than $max_line_length
 #
 # if LONG_LINE is ignored, the other 2 types are also ignored
@@ -3183,12 +3184,16 @@ sub process {
 			# a comment starts before $max_line_length
 			} elsif ($line =~ /($;[\s$;]*)$/ &&
 				 length(expand_tabs(substr($line, 1, length($line) - length($1) - 1))) <= $max_line_length) {
-				$msg_type = "LONG_LINE_COMMENT"
+				$msg_type = "LONG_LINE_COMMENT";
 
 			# a quoted string starts before $max_line_length
 			} elsif ($sline =~ /\s*($String(?:\s*(?:\\|,\s*|\)\s*;\s*))?)$/ &&
 				 length(expand_tabs(substr($line, 1, length($line) - length($1) - 1))) <= $max_line_length) {
-				$msg_type = "LONG_LINE_STRING"
+				$msg_type = "LONG_LINE_STRING";
+			# a single identifier starts before $max_line_length
+			} elsif ($sline =~ /^.\s*($Ident(?:\\|,\s*|\)\s*;\s*))?$/ &&
+				 length(expand_tabs(substr($line, 1, length($line) - length($1) - 1))) <= $max_line_length) {
+				$msg_type = "LONG_LINE_IDENT";
 			}
 
 			if ($msg_type ne "" &&


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
