Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4FF1382C8
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jan 2020 18:57:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39C0387E99;
	Sat, 11 Jan 2020 17:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k8Z3hv+Rz8Tz; Sat, 11 Jan 2020 17:57:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87D8887AFA;
	Sat, 11 Jan 2020 17:57:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C33061BF57B
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 17:57:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C055285F6C
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 17:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h50U7ZLP45h8 for <devel@linuxdriverproject.org>;
 Sat, 11 Jan 2020 17:57:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 37FD785F4D
 for <devel@driverdev.osuosl.org>; Sat, 11 Jan 2020 17:57:54 +0000 (UTC)
Received: from localhost (unknown [84.241.193.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49C4E2084D;
 Sat, 11 Jan 2020 17:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578765473;
 bh=5vqrRTSv0UYc63jQmXzDlf5c/h7W9lj6SrJ/3ve1hNE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UCQd+LNRA2rTKFb0Iz2vL6HS97FsW+9BRT+M9KcxS7WCLus5MUCqFtxJrXnD5uKH/
 FE+7zeohS0Mkyc9tQkOnXY9ZRCuKcAqStKN3YpLYjnlRTDlfYuoDrTMmpIg8pQP4T8
 OHTQXMtUyeyPAoQKzxd1bfePyxmOaL4dksaZlC4c=
Date: Sat, 11 Jan 2020 18:56:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Namjae Jeon <linkinjeon@gmail.com>
Subject: Re: [PATCH] staging: exfat: make staging/exfat and fs/exfat mutually
 exclusive
Message-ID: <20200111175611.GA422540@kroah.com>
References: <20200111121419.22669-1-linkinjeon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200111121419.22669-1-linkinjeon@gmail.com>
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 Namjae Jeon <namjae.jeon@samsung.com>, amir73il@gmail.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 11, 2020 at 09:14:19PM +0900, Namjae Jeon wrote:
> From: Namjae Jeon <namjae.jeon@samsung.com>
> 
> Make staging/exfat and fs/exfat mutually exclusive to select the one
> between two same filesystem.
> 
> Suggested-by: Amir Goldstein <amir73il@gmail.com>
> Signed-off-by: Namjae Jeon <namjae.jeon@samsung.com>
> ---
>  drivers/staging/exfat/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/exfat/Kconfig b/drivers/staging/exfat/Kconfig
> index 292a19dfcaf5..9a0fccec65d9 100644
> --- a/drivers/staging/exfat/Kconfig
> +++ b/drivers/staging/exfat/Kconfig
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  config STAGING_EXFAT_FS
>  	tristate "exFAT fs support"
> -	depends on BLOCK
> +	depends on BLOCK && !EXFAT_FS

There is no such symbol in the kernel tree, so this isn't going to do
anything :(

When/if EXFAT_FS does show up, I will be glad to add this.  Or better
yet, just have this as part of the "real" exfat patchset, that would
make the most sense, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
