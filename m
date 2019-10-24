Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1702E3A80
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 19:59:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBC2886919;
	Thu, 24 Oct 2019 17:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wRGmGqV4MMPU; Thu, 24 Oct 2019 17:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9FFC85329;
	Thu, 24 Oct 2019 17:59:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66EA01BF20D
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 17:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 63B1E85335
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 17:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H583BbVtATaP for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 17:59:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE4D785329
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 17:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XXoiVULwbVHZ4C9SPQpLAtO+Mzv6GYYY1WvuCs2Jy8E=; b=jUiDsdppdJg5v14jhaVtXgiyf
 PglYCH7r0mepZfnaakQ3M4FWuhZ6fTB+lG2MkhcuNp82YpNODyqk58sqERAi+NgvX8+zOCEKBl7yN
 Dksd0Z8U0vQVJe1OPM3Ce2SrQdsPOXJqNXY712WOYwiORv23iwUbrgFZ65jOAbV3nILBruIBDQjpB
 mchSiddIpwMOYlCtvoQmEQ+RTaFlKm5Xl5sE1oReW5VCJHjlmSb5Wv0AaviQKRYMMMHwkeQfzNFMm
 GcRSKnQQCf5BEAlC4yp2LW2pJTDYYigvv77MYOpTUWhVVQ202S1mcsUneziL5+IUyCdncJJWHLsDA
 C21xd55AA==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iNhO4-0000Qh-So; Thu, 24 Oct 2019 17:59:04 +0000
Date: Thu, 24 Oct 2019 10:59:04 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH 01/15] staging: exfat: Clean up return codes - FFS_FULL
Message-ID: <20191024175904.GJ2963@bombadil.infradead.org>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
 <20191024155327.1095907-2-Valdis.Kletnieks@vt.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024155327.1095907-2-Valdis.Kletnieks@vt.edu>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 24, 2019 at 11:53:12AM -0400, Valdis Kletnieks wrote:
> Start cleaning up the odd scheme of return codes, starting with FFS_FULL

> +++ b/drivers/staging/exfat/exfat.h
> @@ -221,7 +221,6 @@ static inline u16 get_row_index(u16 i)
>  #define FFS_PERMISSIONERR       11
>  #define FFS_NOTOPENED           12
>  #define FFS_MAXOPENED           13
> -#define FFS_FULL                14
>  #define FFS_EOF                 15
>  #define FFS_DIRBUSY             16
>  #define FFS_MEMORYERR           17

Wouldn't it be better to do this as:

Patch 1: Change all these defines to -Exxx and remove the stupid errno-changing
blocks like this:

> @@ -2360,7 +2360,7 @@ static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
>  			err = -EINVAL;
>  		else if (err == FFS_FILEEXIST)
>  			err = -EEXIST;
> -		else if (err == FFS_FULL)
> +		else if (err == -ENOSPC)
>  			err = -ENOSPC;
>  		else if (err == FFS_NAMETOOLONG)
>  			err = -ENAMETOOLONG;

then patches 2-n remove individual FFS error codes.

That way nobody actually needs to review patches 2-n; all of the changes
are done in patch 1.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
