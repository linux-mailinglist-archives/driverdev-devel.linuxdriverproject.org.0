Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF20543DAB6
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Oct 2021 07:23:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D39B0825DC;
	Thu, 28 Oct 2021 05:23:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOyh9ICeK_OE; Thu, 28 Oct 2021 05:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 333B78258A;
	Thu, 28 Oct 2021 05:23:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5622E1BF391
 for <devel@linuxdriverproject.org>; Thu, 28 Oct 2021 05:22:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 469586059B
 for <devel@linuxdriverproject.org>; Thu, 28 Oct 2021 05:22:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oE924FYq6pDi for <devel@linuxdriverproject.org>;
 Thu, 28 Oct 2021 05:22:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7001C6001B
 for <devel@driverdev.osuosl.org>; Thu, 28 Oct 2021 05:22:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3D57660E78;
 Thu, 28 Oct 2021 05:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1635398573;
 bh=Aznlr7Iqs31knJ/shNpJZTG2LVNF9rkzq+tM0FuBX+4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LJdwC8NnxdOqbIl+QnJ+RnuJ2RSsCC1/XiyIba4hPq3IvLFKWvzMubi4ZZTE6SHZH
 FPTou70QxGdskxGHnLPxWV+0iNTzhs1q4g7fObJ9o8DeH5I8uMgVjJpNqT9CFV900t
 IIoM/+x+LbXahtzgy77vD/UI6raHJYNM5JtAthJU=
Date: Thu, 28 Oct 2021 07:22:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: vaatsalya shrivastava <shrivastavavaatsalya@gmail.com>
Subject: Re: [PATCH] staging: comedi: Cleaned a bit of code that was not
 required
Message-ID: <YXozqK1elRwpK0qf@kroah.com>
References: <20211027193235.5927-1-shrivastavavaatsalya@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211027193235.5927-1-shrivastavavaatsalya@gmail.com>
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
Cc: devel@driverdev.osuosl.org, manohar.vanga@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 27, 2021 at 03:32:34PM -0400, vaatsalya shrivastava wrote:
> Warning found by checkpatch.pl script.

Please be specific as to what you did.

> 
> Signed-off-by: vaatsalya shrivastava <shrivastavavaatsalya@gmail.com>

"V" and "S"?

> ---
>  drivers/comedi/drivers/dt2815.c        | 2 +-
>  drivers/staging/vme/devices/vme_user.h | 8 ++++----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/comedi/drivers/dt2815.c b/drivers/comedi/drivers/dt2815.c
> index 5906f32aa01f..2be240630bbd 100644
> --- a/drivers/comedi/drivers/dt2815.c
> +++ b/drivers/comedi/drivers/dt2815.c
> @@ -17,7 +17,7 @@
>   * contrary, please update.
>   *
>   * Configuration options:
> - * [0] - I/O port base base address
> + * [0] - I/O port base address

The original is correct.

>   * [1] - IRQ (unused)
>   * [2] - Voltage unipolar/bipolar configuration
>   *	0 == unipolar 5V  (0V -- +5V)
> diff --git a/drivers/staging/vme/devices/vme_user.h b/drivers/staging/vme/devices/vme_user.h
> index 19ecb05781cc..3c1564fd9b20 100644
> --- a/drivers/staging/vme/devices/vme_user.h
> +++ b/drivers/staging/vme/devices/vme_user.h

This is not a comedi driver.

> @@ -14,11 +14,11 @@ struct vme_master {
>  	__u32 aspace;		/* Address Space */
>  	__u32 cycle;		/* Cycle properties */
>  	__u32 dwidth;		/* Maximum Data Width */
> -#if 0
> +

You can not just remove these lines, please realize what you are doing.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
