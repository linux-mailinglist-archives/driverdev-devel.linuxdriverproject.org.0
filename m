Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C311C2E285F
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Dec 2020 18:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B0CF486AFF;
	Thu, 24 Dec 2020 17:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RbyyI3BZHM4f; Thu, 24 Dec 2020 17:27:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1025986AD8;
	Thu, 24 Dec 2020 17:27:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E93D1BF976
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 17:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1A3D58744A
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 17:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kx6W29vZafLq for <devel@linuxdriverproject.org>;
 Thu, 24 Dec 2020 17:27:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0104.hostedemail.com
 [216.40.44.104])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EF10A87433
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 17:27:18 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id CE9E818026208;
 Thu, 24 Dec 2020 17:27:17 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3350:3622:3865:3868:3871:3873:4321:5007:7652:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12740:12895:13069:13311:13357:13439:13894:14659:14721:21080:21627:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:19, LUA_SUMMARY:none
X-HE-Tag: war02_5e115fe27473
X-Filterd-Recvd-Size: 1406
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf07.hostedemail.com (Postfix) with ESMTPA;
 Thu, 24 Dec 2020 17:27:16 +0000 (UTC)
Message-ID: <c4ad08aeb9ed8e3f8bfaedc3e9e0df245d4a93a3.camel@perches.com>
Subject: Re: [PATCH] staging: ralink-gdma: Fixed blank line coding style issue
From: Joe Perches <joe@perches.com>
To: Ayoub Soussi <ayoubfme@gmail.com>, gregkh@linuxfoundation.org
Date: Thu, 24 Dec 2020 09:27:15 -0800
In-Reply-To: <20201223202230.31325-1-ayoubfme@gmail.com>
References: <20201223202230.31325-1-ayoubfme@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-12-23 at 21:22 +0100, Ayoub Soussi wrote:
> Fixed coding style issue.
[]
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/=
ralink-gdma/ralink-gdma.c
[]
> @@ -122,6 +122,7 @@ struct gdma_dma_dev {
> =A0	struct gdma_data *data;
> =A0	void __iomem *base;
> =A0	struct tasklet_struct task;
> +
> =A0	volatile unsigned long chan_issued;
> =A0	atomic_t cnt;

This is presumably a checkpatch false positive.
checkpatch is not now nor never will be a perfect tool.

Please consider what you are doing and what the desired coding style is
before submitting patches.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
