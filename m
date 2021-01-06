Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 377272EC592
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 22:18:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 802F02A0D9;
	Wed,  6 Jan 2021 21:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lUoxYorToxpt; Wed,  6 Jan 2021 21:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 30C25275A6;
	Wed,  6 Jan 2021 21:17:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2FB41BF5A0
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 21:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A068D27447
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 21:17:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jIMiwJ6mt711 for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 21:17:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0223.hostedemail.com
 [216.40.44.223])
 by silver.osuosl.org (Postfix) with ESMTPS id 288CB2049D
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 21:17:52 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id D782D100E7B45;
 Wed,  6 Jan 2021 21:17:50 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3870:3871:3872:3874:4321:5007:6691:7652:7903:10004:10400:10848:11232:11658:11914:12043:12297:12740:12760:12895:13069:13095:13311:13357:13439:14181:14659:14721:21080:21433:21451:21627:21740:30029:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: love44_6310349274e4
X-Filterd-Recvd-Size: 2444
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf01.hostedemail.com (Postfix) with ESMTPA;
 Wed,  6 Jan 2021 21:17:49 +0000 (UTC)
Message-ID: <c5781c80a582cc68e1ae1bdc106c50cb263f81bf.camel@perches.com>
Subject: Re: [PATCH] media: atomisp: ov2722: replace hardcoded function name
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Wed, 06 Jan 2021 13:17:47 -0800
In-Reply-To: <20210106193633.GK2809@kadam>
References: <20210105202945.26913-1-fil.kolev@gmail.com>
 <X/VsF364jpGz6oze@kroah.com>
 <dcdda829-89d6-badd-4f22-72d95d24e9e3@gmail.com>
 <X/X45909l1Tk7Bni@kroah.com>
 <c9284a7f1443146b3885e8ceae3dcf113c531a36.camel@perches.com>
 <20210106193633.GK2809@kadam>
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
Cc: Filip Kolev <fil.kolev@gmail.com>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2021-01-06 at 22:36 +0300, Dan Carpenter wrote:
> On Wed, Jan 06, 2021 at 10:25:26AM -0800, Joe Perches wrote:
> > On Wed, 2021-01-06 at 18:52 +0100, Greg Kroah-Hartman wrote:
> > > On Wed, Jan 06, 2021 at 07:43:42PM +0200, Filip Kolev wrote: 
> > > > On 06-Jan-21 09:51, Greg Kroah-Hartman wrote:
> > > > > On Tue, Jan 05, 2021 at 10:29:18PM +0200, Filip Kolev wrote:
> > > > > > There is a debug message using hardcoded function name instead of the
> > > > > > __func__ macro. Replace it.
> > > > > > 
> > > > > > Report from checkpatch.pl on the file:
> > > > > > 
> > > > > > WARNING: Prefer using '"%s...", __func__' to using 'ov2722_remove', this function's name, in a string
> > > > > > +	dev_dbg(&client->dev, "ov2722_remove...\n");
[]
> > There are quite a lot of these relatively useless function tracing like
> > uses in the kernel:
> > 
> > $ git grep -P '"%s[\.\!]*\\n"\s*,\s*__func__\s*\)' | wc -l
> > 1065
> 
> These are printing other stuff besides just the function name.

No, these are printing _only_ the function name.

> Maybe grep for '", __func__\)'?

No, that wouldn't work as there are many many uses like:

	printk('%s: some string\n", __func__);


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
