Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D1432092F
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 09:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17BC883848
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 08:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oJd0CXhzZmvf for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 08:21:20 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 3FE588361C; Sun, 21 Feb 2021 08:21:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCD7383508;
	Sun, 21 Feb 2021 08:21:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D11631BF2BA
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 08:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFFE26F494
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 08:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RdJVJxFGq52e for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 08:20:51 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 162336F49F; Sun, 21 Feb 2021 08:20:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED6CC6F494
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 08:20:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E94460C41;
 Sun, 21 Feb 2021 08:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613895649;
 bh=fDoRyutdxwyp7zzQQ7I0wKt3Agq5SbU3ugt9v/IsMtc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tGgb4wvN0GYgO49/7TkQRXQIBt17Tg6GKA1GMhwhtJ2fsl8d/98c0fiLee3jFhD7r
 LqXnEPIX8VEorI/d5buFHmJnFKDAhk4SlXy+6NKeyCRY5Y1H6TwK03FzLnkLTYQJVK
 jkLI2Si+qmNG6S4O9mMVQw4RBcQEX6ErDDdcELKk=
Date: Sun, 21 Feb 2021 09:20:45 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nikolay Kyx <knv418@gmail.com>
Subject: Re: [PATCH 2/2] staging: media: ipu3: code style fix - missing a
 blank line after declarations
Message-ID: <YDIX3Q0U8/PcVWgN@kroah.com>
References: <20210221081236.9758-1-knv418@gmail.com>
 <20210221081236.9758-2-knv418@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210221081236.9758-2-knv418@gmail.com>
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
 Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 21, 2021 at 11:12:36AM +0300, Nikolay Kyx wrote:
> This patch fixes the following checkpatch.pl warning:
> 
> WARNING: Missing a blank line after declarations
> 
> in file ipu3-css-fw.h
> 
> Signed-off-by: Nikolay Kyx <knv418@gmail.com>
> ---
> 
> Additionally some style warnings remain valid here and could be fixed by
> another patch.
> 
>  drivers/staging/media/ipu3/ipu3-css-fw.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/ipu3/ipu3-css-fw.h b/drivers/staging/media/ipu3/ipu3-css-fw.h
> index 79ffa7045139..3c078f15a295 100644
> --- a/drivers/staging/media/ipu3/ipu3-css-fw.h
> +++ b/drivers/staging/media/ipu3/ipu3-css-fw.h
> @@ -148,6 +148,7 @@ union imgu_fw_union {
>  struct imgu_fw_info {
>  	size_t header_size;	/* size of fw header */
>  	u32 type __aligned(8);	/* enum imgu_fw_type */
> +
>  	union imgu_fw_union info;	/* Binary info */
>  	struct imgu_abi_blob_info blob;	/* Blob info */
>  	/* Dynamic part */

With your knowledge of C, does this change look correct?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
