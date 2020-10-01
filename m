Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D480C27FAAE
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Oct 2020 09:54:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9849C86CAF;
	Thu,  1 Oct 2020 07:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z51BicHKhtFH; Thu,  1 Oct 2020 07:54:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84ADC86C93;
	Thu,  1 Oct 2020 07:54:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 040571BF2FC
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 07:54:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0066087302
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 07:54:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mww9gj9-+pVZ for <devel@linuxdriverproject.org>;
 Thu,  1 Oct 2020 07:54:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 320B987301
 for <devel@driverdev.osuosl.org>; Thu,  1 Oct 2020 07:54:41 +0000 (UTC)
Received: from coco.lan (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 209C221707;
 Thu,  1 Oct 2020 07:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601538880;
 bh=KKNX+CUOdotCG/f7NnoLC+ebCjKw91cITKw8LfV7ljE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jPKhCPpQAFcA3HJ6KciG3sDNi7p5PRBSqUW2HQmsVSbPOKDyU4xE3D0XXMNwcsslz
 Dq8/aeKSf44ITUSddqj5sTNotgwgpCWU7hwdEVChqR123ugDJmZs2nlJIHAhBVWVxC
 jB4ixnvH9n2t7Rqiz/JmRRh7IrSwZvXslbh5IQVU=
Date: Thu, 1 Oct 2020 09:54:35 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH RFT/RFC v2 28/47] staging: media: zoran: convert mdelay
 to udelay
Message-ID: <20201001095435.47c7d36c@coco.lan>
In-Reply-To: <1601058657-14042-29-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
 <1601058657-14042-29-git-send-email-clabbe@baylibre.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 25 Sep 2020 18:30:38 +0000
Corentin Labbe <clabbe@baylibre.com> escreveu:

> As asked by checkpath, let's use udelay.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/staging/media/zoran/zoran_device.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
> index 0ecb044f8e8f..4c9f6eafd130 100644
> --- a/drivers/staging/media/zoran/zoran_device.c
> +++ b/drivers/staging/media/zoran/zoran_device.c
> @@ -1332,9 +1332,9 @@ void zoran_init_hardware(struct zoran *zr)
>  void zr36057_restart(struct zoran *zr)
>  {
>  	btwrite(0, ZR36057_SPGPPCR);
> -	mdelay(1);
> +	udelay(1000);
>  	btor(ZR36057_SPGPPCR_SoftReset, ZR36057_SPGPPCR);
> -	mdelay(1);
> +	udelay(1000);

Ok, this is still on staging, so I'm willing to accept it, but
why aren't you using usleep_range() instead?

mdelay/udelay should be used only when the delay time should
be as precise as possible, as what they do is to keep the CPU
busy during the wait time.

I doubt that this is the case here. So, I would use,
instead, something like:

	usleep_range(1000, 2000)

(assuming that 4ms is still a reasonable time for the soft
reset to happen).

>  
>  	/* assert P_Reset */
>  	btwrite(0, ZR36057_JPC);



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
