Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 346D026D929
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:37:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7741E2046D;
	Thu, 17 Sep 2020 10:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7eP85Fvplo7X; Thu, 17 Sep 2020 10:37:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1042320406;
	Thu, 17 Sep 2020 10:36:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C75401BF387
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:36:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BE1FD87418
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:36:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BduKiaUjxN37 for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:36:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0195.hostedemail.com
 [216.40.44.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F038787406
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:36:54 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id EFC8F18016C99
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:19:28 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 43966100E7B45;
 Thu, 17 Sep 2020 10:19:26 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2828:2898:3138:3139:3140:3141:3142:3622:3872:3876:4321:5007:6120:6742:10004:10400:10471:11232:11657:11658:11914:12043:12297:12740:12760:12895:13069:13255:13311:13357:13439:14659:14721:21080:21627:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: seed75_0f0fa9e27121
X-Filterd-Recvd-Size: 1757
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Thu, 17 Sep 2020 10:19:23 +0000 (UTC)
Message-ID: <8274e9166ad6f7c95f0885403b9584081672a3ff.camel@perches.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Daniel Scally
 <djrscally@gmail.com>
Date: Thu, 17 Sep 2020 03:19:21 -0700
In-Reply-To: <20200917093407.GK4282@kadam>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917093407.GK4282@kadam>
User-Agent: Evolution 3.36.4-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org, jorhand@linux.microsoft.com,
 linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
 kieran.bingham@ideasonboard.com, linux-kernel@vger.kernel.org,
 kitakar@gmail.com, sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
 mchehab@kernel.org, davem@davemloft.net, tian.shu.qiu@intel.com,
 yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2020-09-17 at 12:34 +0300, Dan Carpenter wrote:
> On Wed, Sep 16, 2020 at 10:36:18PM +0100, Daniel Scally wrote:
> > diff --git a/drivers/staging/media/ipu3/cio2-bridge.c b/drivers/staging/media/ipu3/cio2-bridge.c
[]
> > +		if (!dev->driver_data) {
> > +			pr_info("ACPI match for %s, but it has no driver\n",
> > +				supported_devices[i]);
> 
> put_device(dev);
> 
> > +			continue;
> > +		} else {

No need for an else either.

> > +			pr_info("Found supported device %s\n",
> > +				supported_devices[i]);

so this can be unindented too.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
