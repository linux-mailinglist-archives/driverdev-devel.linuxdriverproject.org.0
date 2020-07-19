Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0021E224F2F
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 06:33:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 011BB855B5;
	Sun, 19 Jul 2020 04:33:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WFdCx9oLz6aH; Sun, 19 Jul 2020 04:33:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC0A985580;
	Sun, 19 Jul 2020 04:33:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 158961BF38B
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 04:33:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0FD2B869E6
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 04:33:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BQQLSdB6v0jS for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 04:33:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DAAEE869C7
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 04:33:43 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id s26so7379764pfm.4
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 21:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NMnuLh+n2hjqR5MnJLBU8rHuDpwc8jSXNcEkAGw08r0=;
 b=shNpNfD7ydknC+2m8bihpNOtvb4urvKd9/86e2kcEaXXeB4oSt3iYJ4S6Ri0Ts7fYC
 D5QmjRh1QkEdVPL70XfAEStJ0MvcigrrqJvCCFSxB1tiYER0rWojGwXJNu7k/Y5VpLmZ
 4uZ2KezgDGTcAj59w4wPz44oxlKCFCnp+4vSNXHbzzoRaCMBKikeSASc5+F4mwUgdvZp
 mkGDJNp89MA16FM05n/8JA1xdHNV6ZsONqoIzhQv0ASJZw46b7w0rl+7wGgvfEAWvx/U
 xNX8lqzdncZ09m7AfmGRAZMv7c3dpRyDbjyoM+wcLJIGD1QjjoGINkYegB7MZ5R8c0VZ
 BVzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NMnuLh+n2hjqR5MnJLBU8rHuDpwc8jSXNcEkAGw08r0=;
 b=t6L9Te4cFFhAaqnbQ4SWJfJMJm2mKKfXwPi6muOJt2cl0rbyeN9WlzA1QsrE8NpWnv
 tvzItKskZ88S/OioxVik7cU5fg59A1yyzpDry4VgA3iK7z4XhZCqvHJiO8ZZ1cpLvVWy
 Ur9U+7nQsE9dOkjfxhQmjey6BjGYNKesr0EpCQXiXagEsEkmKues6suzVkc/+Qgca7Gb
 mpgxTKd3jNKekni/TqC3nwwaTQjniZ3lXX5NwULGLFiue/m9rwIUprVyW1k8OV0TtR+F
 ydEVyVefGtP9u7xkH9qX4zTkFM3YHT+xwV8ouB/BbflvNWkv1KwrjGQ0k4ERahLEx7nS
 LZpA==
X-Gm-Message-State: AOAM532SRw3Y2zB4A7JukwjJvc4Ww+vGtSHvtwYm95FUYyAOtUPIWg/v
 Du9KY6zqZsyRb5zOaBMLeJs=
X-Google-Smtp-Source: ABdhPJzJHKMcXcrP4HWoI82Bip3+QWOih5BY3UYhF0neGE8ul+At8jy/Vsx9mAekGGJvYsaIiTEp2w==
X-Received: by 2002:a63:8dc4:: with SMTP id
 z187mr12971922pgd.199.1595133223417; 
 Sat, 18 Jul 2020 21:33:43 -0700 (PDT)
Received: from blackclown ([2405:204:219:61b6:3945:8436:8c57:56d5])
 by smtp.gmail.com with ESMTPSA id o129sm12684414pfg.14.2020.07.18.21.33.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Jul 2020 21:33:42 -0700 (PDT)
Date: Sun, 19 Jul 2020 10:03:24 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: Re: [PATCH v2] staging: kpc2000: Replace depracated MSI API.
Message-ID: <20200719043324.GA28510@blackclown>
References: <20200718154951.GA28857@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200718154951.GA28857@blackclown>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 18, 2020 at 09:19:51PM +0530, Suraj Upadhyay wrote:
> Replace depracated pci_enable_msi with pci_alloc_irq_vectors.
> And as a result modify how the returned value is handled.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
> Changes:
> 	v2: Removed the undefined variable.
> 	    Reported by kernel-bot.
> 
Don't merge it.
This patch is incomplete.
I have to replce pci_disable_msi too.
I hope this didn't cause any annoyances.

Thanks,

Suraj Upadhyay.

>  drivers/staging/kpc2000/kpc2000/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
> index 358d7b2f4ad1..8339026ffb41 100644
> --- a/drivers/staging/kpc2000/kpc2000/core.c
> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> @@ -440,7 +440,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
>  	dev_dbg(&pcard->pdev->dev,
>  		"Using DMA mask %0llx\n", dma_get_mask(PCARD_TO_DEV(pcard)));
>  
> -	err = pci_enable_msi(pcard->pdev);
> +	err = pci_alloc_irq_vectors(pcard->pdev, 1, 1, PCI_IRQ_MSI);
>  	if (err < 0)
>  		goto err_release_dma;
>  
> -- 
> 2.17.1
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
