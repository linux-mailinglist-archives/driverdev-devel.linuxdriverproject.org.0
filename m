Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B8931C9A2
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 12:28:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20476871B9;
	Tue, 16 Feb 2021 11:28:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CJ9fthgzd0OV; Tue, 16 Feb 2021 11:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 42AB2871B0;
	Tue, 16 Feb 2021 11:28:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 553491BF589
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 11:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 518AC8577F
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 11:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XOAbJpUyBe2n for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 11:28:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5E1785742
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 11:28:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DA2B564DEC;
 Tue, 16 Feb 2021 11:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613474884;
 bh=Qmzh7QqnywIBB0w0xGPHUwkb0SXro3xsJLw4+9mfABE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pa2g3RpSOiuP415/PfbzWTyQIkHcNKi9Wa5pbJ71kqG8lEN08tUishIFMBfQTuAWL
 2SFmZxE1atCEurhJYEMxGa5E8ad32qQ9nHWPx7trdilZ3q7WxREi7MfwKsjiyEuYym
 UwyJcBZD65FEO9frXgY/NpwFq3Kfy+zGwX7MNWNQ=
Date: Tue, 16 Feb 2021 12:28:01 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Du Cheng <ducheng2@gmail.com>
Subject: Re: [PATCH v2] staging: greybus: fix coding style of
 greybus/loopback.c
Message-ID: <YCusQZknNbqFef2X@kroah.com>
References: <20210216111353.190238-1-ducheng2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216111353.190238-1-ducheng2@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 16, 2021 at 07:13:53PM +0800, Du Cheng wrote:
> fix macro gb_loopback_stats_attrs by wrapping its multi-line definition
> inside a do {} while(0) block, in compliance to scripts/checkpatch.pl.
> 
> Signed-off-by: Du Cheng <ducheng2@gmail.com>
> ---
> changes v2:
> * relign backslashes with tabstop=8
> * improve description and subject
> 
> changes v1:
> * fix coding style of the macro
> 
>  drivers/staging/greybus/loopback.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> index 2471448ba42a..24b769688817 100644
> --- a/drivers/staging/greybus/loopback.c
> +++ b/drivers/staging/greybus/loopback.c
> @@ -163,9 +163,11 @@ static ssize_t name##_avg_show(struct device *dev,		\
>  static DEVICE_ATTR_RO(name##_avg)
>  
>  #define gb_loopback_stats_attrs(field)				\
> +do {								\
>  	gb_loopback_ro_stats_attr(field, min, u);		\
>  	gb_loopback_ro_stats_attr(field, max, u);		\
> -	gb_loopback_ro_avg_attr(field)
> +	gb_loopback_ro_avg_attr(field);				\
> +} while (0)
>  
>  #define gb_loopback_attr(field, type)					\
>  static ssize_t field##_show(struct device *dev,				\
> -- 
> 2.27.0

Did you successfully build this change?

Please do so...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
