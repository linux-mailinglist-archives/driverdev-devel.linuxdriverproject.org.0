Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8C4E3DFE
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 23:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4EF9688356;
	Thu, 24 Oct 2019 21:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fCNAn0SlQrlw; Thu, 24 Oct 2019 21:12:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76A5C88246;
	Thu, 24 Oct 2019 21:12:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C83F1BF39D
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 21:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 997BA86239
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 21:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DsRO6OGZQSty for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 21:12:35 +0000 (UTC)
X-Greylist: delayed 04:30:01 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0187.hostedemail.com
 [216.40.44.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C41B786207
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 21:12:35 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 41A281817398A
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 16:23:38 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id AD6DC182CF665;
 Thu, 24 Oct 2019 16:23:35 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3867:3868:4321:5007:8957:10004:10400:11232:11658:11914:12043:12296:12297:12740:12760:12895:13069:13161:13229:13311:13357:13439:14659:14721:21080:21433:21627:21810:21939:30012:30054:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: shade65_1f39141a68414
X-Filterd-Recvd-Size: 1838
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA;
 Thu, 24 Oct 2019 16:23:34 +0000 (UTC)
Message-ID: <915cd2a3ee58222b63c14f9f1819a0aa0b379a4f.camel@perches.com>
Subject: Re: [PATCH 04/15] staging: exfat: Clean up return codes -
 FFS_PERMISSIONERR
From: Joe Perches <joe@perches.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Thu, 24 Oct 2019 09:23:33 -0700
In-Reply-To: <20191024155327.1095907-5-Valdis.Kletnieks@vt.edu>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
 <20191024155327.1095907-5-Valdis.Kletnieks@vt.edu>
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
> Convert FFS_PERMISSIONERR to -EPERM
[]
> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
[]
> @@ -2526,7 +2526,7 @@ static int exfat_unlink(struct inode *dir, struct dentry *dentry)
>  
>  	err = ffsRemoveFile(dir, &(EXFAT_I(inode)->fid));
>  	if (err) {
> -		if (err == FFS_PERMISSIONERR)
> +		if (err == -EPERM)
>  			err = -EPERM;
>  		else
>  			err = -EIO;
[]
> @@ -2746,7 +2746,7 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
>  	err = ffsMoveFile(old_dir, &(EXFAT_I(old_inode)->fid), new_dir,
>  			  new_dentry);
>  	if (err) {
> -		if (err == FFS_PERMISSIONERR)
> +		if (err == -EPERM)
>  			err = -EPERM;
>  		else if (err == FFS_INVALIDPATH)
>  			err = -EINVAL;

These test and assign to same value blocks look kinda silly.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
