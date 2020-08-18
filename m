Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B84F248C7E
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 19:07:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7966D879CF;
	Tue, 18 Aug 2020 17:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YdErBGgNedeT; Tue, 18 Aug 2020 17:07:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DE71A87823;
	Tue, 18 Aug 2020 17:07:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F27921BF5A1
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 17:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EE3DC864DF
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 17:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXr+QA4dA3up for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 17:06:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0067.hostedemail.com
 [216.40.44.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E32A1864DA
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 17:06:58 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 978C918010A79
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 17:06:57 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 319721E19;
 Tue, 18 Aug 2020 17:06:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3870:4321:5007:6121:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12297:12555:12740:12760:12895:12986:13161:13229:13439:14659:14721:21080:21433:21627:21990:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: stew13_3e08fcc27021
X-Filterd-Recvd-Size: 3473
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Tue, 18 Aug 2020 17:06:53 +0000 (UTC)
Message-ID: <516b2816dddbc9427e4f0a5a6a57e77292014e7a.camel@perches.com>
Subject: Re: [PATCH] staging: kpc2000: kpc_dma: fix spelling mistake "for
 for" -> "for"
From: Joe Perches <joe@perches.com>
To: Colin King <colin.king@canonical.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Date: Tue, 18 Aug 2020 10:06:52 -0700
In-Reply-To: <20200818164654.381588-1-colin.king@canonical.com>
References: <20200818164654.381588-1-colin.king@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-08-18 at 17:46 +0100, Colin King wrote:
> There are a couple of duplicated "for" spelling mistakes in dev_err
> error messages. Fix these.

Might as well remove the messages instead.

> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
[]
> @@ -53,7 +53,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  
>  	acd = kzalloc(sizeof(*acd), GFP_KERNEL);
>  	if (!acd) {
> -		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the aio data\n");
> +		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for the aio data\n");
>  		return -ENOMEM;
>  	}
>  	memset(acd, 0x66, sizeof(struct aio_cb_data));

Also there's no reason to use kzalloc then a memset over
the alloc'ed memory or a different sizeof style for the
alloc then memset.

Setting the struct content to 0x66 does seem odd.

> @@ -69,7 +69,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  	acd->user_pages = kcalloc(acd->page_count, sizeof(struct page *),
>  				  GFP_KERNEL);
>  	if (!acd->user_pages) {
> -		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the page pointers\n");
> +		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for the page pointers\n");
>  		rv = -ENOMEM;
>  		goto err_alloc_userpages;
>  	}

Maybe:
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index dd716edd9b1b..c5330ad6b175 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -51,12 +51,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 
 	ldev = priv->ldev;
 
-	acd = kzalloc(sizeof(*acd), GFP_KERNEL);
-	if (!acd) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the aio data\n");
+	acd = kmalloc(sizeof(*acd), GFP_KERNEL);
+	if (!acd)
 		return -ENOMEM;
-	}
-	memset(acd, 0x66, sizeof(struct aio_cb_data));
+
+	memset(acd, 0x66, sizeof(*acd));
 
 	acd->priv = priv;
 	acd->ldev = priv->ldev;
@@ -69,7 +68,6 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	acd->user_pages = kcalloc(acd->page_count, sizeof(struct page *),
 				  GFP_KERNEL);
 	if (!acd->user_pages) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the page pointers\n");
 		rv = -ENOMEM;
 		goto err_alloc_userpages;
 	}


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
