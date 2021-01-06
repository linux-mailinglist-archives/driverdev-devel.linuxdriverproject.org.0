Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CB82EC334
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 19:25:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C1A186813;
	Wed,  6 Jan 2021 18:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SdQTVULo3cGD; Wed,  6 Jan 2021 18:25:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB82686302;
	Wed,  6 Jan 2021 18:25:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F288D1BF847
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 18:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EF37787380
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 18:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9m1jwIxS4-FP for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 18:25:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0011.hostedemail.com
 [216.40.44.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2629987382
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 18:25:31 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 48EF11730875;
 Wed,  6 Jan 2021 18:25:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:982:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1801:2393:2553:2559:2562:2828:2911:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:4321:4425:4605:5007:7652:7875:7903:8660:9040:10004:10400:10848:11026:11232:11473:11657:11658:11783:11914:12043:12297:12438:12555:12663:12740:12895:13095:13148:13161:13229:13230:13439:13894:14181:14659:14721:21080:21433:21451:21627:21939:30029:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: stick86_3e0252b274e3
X-Filterd-Recvd-Size: 3649
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Wed,  6 Jan 2021 18:25:27 +0000 (UTC)
Message-ID: <c9284a7f1443146b3885e8ceae3dcf113c531a36.camel@perches.com>
Subject: Re: [PATCH] media: atomisp: ov2722: replace hardcoded function name
From: Joe Perches <joe@perches.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Filip Kolev
 <fil.kolev@gmail.com>
Date: Wed, 06 Jan 2021 10:25:26 -0800
In-Reply-To: <X/X45909l1Tk7Bni@kroah.com>
References: <20210105202945.26913-1-fil.kolev@gmail.com>
 <X/VsF364jpGz6oze@kroah.com>
 <dcdda829-89d6-badd-4f22-72d95d24e9e3@gmail.com>
 <X/X45909l1Tk7Bni@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2021-01-06 at 18:52 +0100, Greg Kroah-Hartman wrote:
> On Wed, Jan 06, 2021 at 07:43:42PM +0200, Filip Kolev wrote: =

> > On 06-Jan-21 09:51, Greg Kroah-Hartman wrote:
> > > On Tue, Jan 05, 2021 at 10:29:18PM +0200, Filip Kolev wrote:
> > > > There is a debug message using hardcoded function name instead of t=
he
> > > > __func__ macro. Replace it.
> > > > =

> > > > Report from checkpatch.pl on the file:
> > > > =

> > > > WARNING: Prefer using '"%s...", __func__' to using 'ov2722_remove',=
 this function's name, in a string
> > > > +	dev_dbg(&client->dev, "ov2722_remove...\n");
[]
> > > > diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c b/d=
rivers/staging/media/atomisp/i2c/atomisp-ov2722.c
[]
> > > > @@ -1175,7 +1175,7 @@ static int ov2722_remove(struct i2c_client *c=
lient)
> > > > =A0=A0	struct v4l2_subdev *sd =3D i2c_get_clientdata(client);
> > > > =A0=A0	struct ov2722_device *dev =3D to_ov2722_sensor(sd);
> > > > -	dev_dbg(&client->dev, "ov2722_remove...\n");
> > > > +	dev_dbg(&client->dev, "%s...\n", __func__);
> > > =

> > > dev_dbg() provides the function name already, and this is just a "tra=
ce"
> > > call, and ftrace should be used instead, so the whole line should be
> > > removed entirely.
> > =

> > Thank you for the review!
> > =

> > How do I go about this? Do I amend the patch and re-send as v2 or creat=
e a
> > new patch entirely?
> =

> New patch entirely please.

There are quite a lot of these relatively useless function tracing like
uses in the kernel:

$ git grep -P '"%s[\.\!]*\\n"\s*,\s*__func__\s*\)' | wc -l
1065

Perhaps yet another checkpatch warning would be useful:
---
 scripts/checkpatch.pl | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index e6857bdfcb2d..46b8ec8fe9e1 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -5981,6 +5981,14 @@ sub process {
 			     "Prefer using '\"%s...\", __func__' to using '$context_function', =
this function's name, in a string\n" . $herecurr);
 		}
 =

+# check for unnecessary function tracing like uses
+		if ($rawline =3D~ /^\+\s*$logFunctions\s*\([^"]*"%s[\.\!]*\\n"\s*,\s*__f=
unc__\s*\)\s*;\s*$/) {
+			if (WARN("TRACING_LOGGING",
+				 "Unnecessary ftrace-like logging - prefer using ftrace\n" . $herecurr=
) &&
+			    $fix) {
+                                fix_delete_line($fixlinenr, $rawline);
+			}
+		}
 # check for spaces before a quoted newline
 		if ($rawline =3D~ /^.*\".*\s\\n/) {
 			if (WARN("QUOTED_WHITESPACE_BEFORE_NEWLINE",

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
