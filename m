Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC685224F36
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 06:36:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 715D38733D;
	Sun, 19 Jul 2020 04:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ebB+NlHfUXL6; Sun, 19 Jul 2020 04:36:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF6FE86D73;
	Sun, 19 Jul 2020 04:36:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A0021BF38B
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 04:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 25A4A8557E
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 04:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onubFa2f3WuC for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 04:36:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8AB485569
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 04:36:47 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id t6so8708297pgq.1
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 21:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QrQwgA++IOo4LAbcYYksL7Rv2htpSKEdPqiaKrOyg+U=;
 b=D9RLTERalHTdng6E2AnMA0kajdkrfc7hEjZ63ZMEm9vrc4xZuQ3HY/9f9CX2b5MshI
 Uo4zusEBuz8eHFgu2r+cR/oUjC3h1DBJmYmeYbjDPE3V431OfTDkHGxb7mnsrSjY3dxF
 wIReA+tze3YtIczU1uNrgwNuLckBg4eWWQbkuCjv4r0NxkhgW0v79HTK4ywpii0Kx9RY
 jA+FnOZx2vKhz9TLoxhJSl/DX9vvHsRV5I8/CxD4Kt49Op6flhXASSc9L6XkLYHTKRMF
 n2oP6YxhQmuXzMkzgZLGK+w1IuSVFS7gqV9bynXdbBYwEcuRTthw8BMSDwkfDBQ0QbJ1
 ddaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QrQwgA++IOo4LAbcYYksL7Rv2htpSKEdPqiaKrOyg+U=;
 b=Bwd+xUTu3D3U6ND90Y9VFEYslMvQofEnXXQ9lnC/kNWt3Xigk7IA+mSf8C5zhGKhv2
 lmMVNpVer+SAKdhnuh29/j6uv69HtRp4MoPnie5PNcW09CN42eom+d6r2JIlECXq5KhO
 eKCnoMMEMVla8b5Lav/NERRPEuZhHTi9tMTi3U5xROaFUqigbsBQPBZWX/5U1chYyM+L
 RE+7OcK8iLC2FcDpp/aj7Zz7ww4wGKbKs8SazNHdemwvEg7YSeligOwIijkgKztZ1rKG
 WutGNt4xEa+rJaUmD1+orsitR/XUx4LYYYnO1mzpX3K2eOa6bzp0H9baCRwm7hDMfjrX
 c4oQ==
X-Gm-Message-State: AOAM531fK1KVt+/IFpy39/hMsSBWtVxoDcfcbZIjpNV3GopS7u6YSdKh
 va+NcYbDeLgkkc7orKKGVNM=
X-Google-Smtp-Source: ABdhPJw22bGnp1N+Em/LFoDNlxfAACLdz2BntWRH2Dp57FTKacaKyq2nroMxWR06hs5KO8UaeZhXNA==
X-Received: by 2002:a63:b511:: with SMTP id y17mr14136438pge.425.1595133407527; 
 Sat, 18 Jul 2020 21:36:47 -0700 (PDT)
Received: from blackclown ([2405:204:219:61b6:3945:8436:8c57:56d5])
 by smtp.gmail.com with ESMTPSA id n18sm12475472pfd.99.2020.07.18.21.36.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Jul 2020 21:36:47 -0700 (PDT)
Date: Sun, 19 Jul 2020 10:06:38 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: media: atomisp: Replace depracated MSI API.
Message-ID: <20200719043638.GC28510@blackclown>
References: <20200718132632.GA11527@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200718132632.GA11527@blackclown>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 18, 2020 at 06:56:32PM +0530, Suraj Upadhyay wrote:
> Replace depracated pci_enable_msi with pci_alloc_irq_vectors.
> And as a result modify how the returned value is handled.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
>  drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
Hii,
Please don't merge this patch.
It is still incomplete.
It doesn't replace pci_disable_msi.
I hope this wasn't an annoyance.

Thanks,

Suraj Upadhyay.

> diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> index d36809a0182c..b824c6f78a9c 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> @@ -1735,8 +1735,8 @@ static int atomisp_pci_probe(struct pci_dev *dev,
>  	pci_set_master(dev);
>  	pci_set_drvdata(dev, isp);
>  
> -	err = pci_enable_msi(dev);
> -	if (err) {
> +	err = pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_MSI);
> +	if (err < 0) {
>  		dev_err(&dev->dev, "Failed to enable msi (%d)\n", err);
>  		goto enable_msi_fail;
>  	}
> -- 
> 2.17.1
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
