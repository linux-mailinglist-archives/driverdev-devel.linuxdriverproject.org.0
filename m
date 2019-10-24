Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 861BDE37DF
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 18:29:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D7304230BD;
	Thu, 24 Oct 2019 16:29:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PePGdWTDK-FO; Thu, 24 Oct 2019 16:29:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9975F228D5;
	Thu, 24 Oct 2019 16:29:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 579451BF860
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 53E6B228D5
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:29:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IGPAjarn4uck for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 16:29:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0253.hostedemail.com
 [216.40.44.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 58E232154A
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 16:29:04 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 294A88384363;
 Thu, 24 Oct 2019 16:29:03 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:4321:5007:8957:10004:10400:11026:11232:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:21810:30012:30054:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:29,
 LUA_SUMMARY:none
X-HE-Tag: slip23_4ee4cce0ad431
X-Filterd-Recvd-Size: 1839
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Thu, 24 Oct 2019 16:29:02 +0000 (UTC)
Message-ID: <5c7a7fe972469296d367dba504f0b6c8063a7d55.camel@perches.com>
Subject: Re: [PATCH 15/15] staging: exfat: Clean up return codes - FFS_SUCCESS
From: Joe Perches <joe@perches.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Thu, 24 Oct 2019 09:29:00 -0700
In-Reply-To: <20191024155327.1095907-16-Valdis.Kletnieks@vt.edu>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
 <20191024155327.1095907-16-Valdis.Kletnieks@vt.edu>
User-Agent: Evolution 3.34.1-2 
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2019-10-24 at 11:53 -0400, Valdis Kletnieks wrote:
> Just replace FFS_SUCCESS with a literal 0.

[]

> diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
[]
> @@ -214,7 +214,7 @@ static u8 *FAT_getblk(struct super_block *sb, sector_t sec)
>  
>  	FAT_cache_insert_hash(sb, bp);
>  
> -	if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
> +	if (sector_read(sb, sec, &bp->buf_bh, 1) != 0) {

Probably nicer to just drop the != 0

> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
[]
> @@ -768,13 +768,13 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
>  
>  		if ((offset == 0) && (oneblkread == p_bd->sector_size)) {
>  			if (sector_read(sb, LogSector, &tmp_bh, 1) !=
> -			    FFS_SUCCESS)
> +			    0)

especially for these split line tests


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
