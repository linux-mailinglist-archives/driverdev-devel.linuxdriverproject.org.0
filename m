Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 701DE2A93CB
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 11:12:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A1BD868DB;
	Fri,  6 Nov 2020 10:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tFLrCdo2qcbW; Fri,  6 Nov 2020 10:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AECF8675F;
	Fri,  6 Nov 2020 10:11:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C12581BF36A
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 10:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92D6A2E0F5
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 10:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OxPuI9Tpl1kI for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 10:11:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id AEF782E0E9
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 10:11:54 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51F64206CB;
 Fri,  6 Nov 2020 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604657513;
 bh=R/G/ijGguYtvMgwvXr02M4X5o++iqaSFXauB9Vtk6u4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TvthmEJOaFI4te9tNvs5dHTWUjbkx3b679VPnPWEhV2zNr5k+DtWYaE0hKHPkolLG
 MTFBPZnVN8Q5v4wez+SlztxcqThl+Hzssh84zEcYs5Aez4WHOCteixm7wVE8wFyDwl
 ln0AETlrE2Gc7aoMU4qOv9esEVrv09UIwExJzPqc=
Date: Fri, 6 Nov 2020 11:12:40 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Brian O'Keefe <bokeefe@alum.wpi.edu>
Subject: Re: [PATCH] staging: rtl8723bs: Add 024c:0627 to the list of SDIO
 device-ids
Message-ID: <20201106101240.GA2770702@kroah.com>
References: <CABtq2xReyqg1wJM7W1d=KWRNTNN0Q6HCgJMWcQ6DH=SmKcxQRg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABtq2xReyqg1wJM7W1d=KWRNTNN0Q6HCgJMWcQ6DH=SmKcxQRg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Hans de Goede <hdegoede@redhat.com>,
 linux-wireless@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 29, 2020 at 09:52:16AM -0400, Brian O'Keefe wrote:
> Add 024c:0627 to the list of SDIO device-ids, based on hardware found in
> the wild. This hardware exists on at least some Acer SW1-011 tablets.
> 
> Signed-off-by: Brian O'Keefe <bokeefe@alum.wpi.edu>
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> index 5b1392deb0a7..7256d55fcc1b 100644
> --- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> +++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> @@ -21,6 +21,7 @@ static const struct sdio_device_id sdio_ids[] =
>         { SDIO_DEVICE(0x024c, 0x0525), },
>         { SDIO_DEVICE(0x024c, 0x0623), },
>         { SDIO_DEVICE(0x024c, 0x0626), },
> +       { SDIO_DEVICE(0x024c, 0x0627), },
>         { SDIO_DEVICE(0x024c, 0xb723), },
>         { /* end: all zeroes */                         },
>  };
> --
> 2.25.1

All of the tabs are gone in your email and it's only spaces, making this
patch impossible to apply :(

Can you fix up your email client and resend this and keep Hans's
Reviewed-by on it?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
