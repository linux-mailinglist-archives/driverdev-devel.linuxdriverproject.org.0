Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6161122C8A
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 14:10:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C916F87627;
	Tue, 17 Dec 2019 13:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nnfT3nARCSBK; Tue, 17 Dec 2019 13:10:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 667F687670;
	Tue, 17 Dec 2019 13:10:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A87A1BF5DA
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 13:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 071E7860FB
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 13:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fVjj3rfDJFft for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 13:10:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6B07B86168
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 13:10:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1CCC206EC;
 Tue, 17 Dec 2019 13:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576588209;
 bh=VuA5j+HiO8k+dTpbodT30fg4jaxkinHr0PKqpPnHmqw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EwOOzUyW1FpWAecxpBukxpV/ivxDEldZYnwzg8ZbjL7824T8OF2ehytcPDiR6n+zZ
 pdaLe6vrM8ggs4mHXSIlTEl5fKgkCaIAZULf7Yb/pMnAzF5YGtkMoDyWNSM19glSIH
 4UiY8ob9GitvGvJP7HfB27Hnd0+EvrZFTNGHYVzA=
Date: Tue, 17 Dec 2019 14:10:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julian Preis <julian.preis@fau.de>
Subject: Re: [PATCH v2] drivers/staging/exfat/exfat_super.c: Clean up
 ffsCamelCase function names
Message-ID: <20191217131007.GA3233328@kroah.com>
References: <y>
 <20191216141623.22379-1-julian.preis@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216141623.22379-1-julian.preis@fau.de>
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
Cc: devel@driverdev.osuosl.org, Johannes Weidner <johannes.weidner@fau.de>,
 linux-fsdevel@vger.kernel.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 16, 2019 at 03:16:23PM +0100, Julian Preis wrote:
> Rename every instance of <ffsCamelCaseExample> to <ffs_camel_case_example>
> in file exfat_super.c. Fix resulting overlong lines.
> 
> Co-developed-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Julian Preis <julian.preis@fau.de>
> ---
> Changes in v2:
> - Add email recipients according to get_maintainer.pl
> - Add patch versions
> - Use in-reply-to
> 
>  drivers/staging/exfat/exfat_super.c | 99 +++++++++++++++--------------
>  1 file changed, 51 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
> index 6e481908c59f..14ff3fce70fb 100644
> --- a/drivers/staging/exfat/exfat_super.c
> +++ b/drivers/staging/exfat/exfat_super.c
> @@ -343,7 +343,7 @@ static inline void exfat_save_attr(struct inode *inode, u32 attr)
>  		EXFAT_I(inode)->fid.attr = attr & (ATTR_RWMASK | ATTR_READONLY);
>  }
>  
> -static int ffsMountVol(struct super_block *sb)
> +static int ffs_mount_vol(struct super_block *sb)

Why do these static functions even have to have "ffs" at the front of
them anyway?  There's no requirement here, right?  Shouldn't this just
be "mount_vol()"?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
