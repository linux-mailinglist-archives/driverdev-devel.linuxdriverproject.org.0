Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA97D224C75
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 17:28:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D776187834;
	Sat, 18 Jul 2020 15:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M30DGGNV4Lzy; Sat, 18 Jul 2020 15:28:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 829AD8776A;
	Sat, 18 Jul 2020 15:28:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D20C31BF5A5
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 15:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA07C8773A
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 15:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Car+XEFRnCka for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 15:28:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4DAB887736
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 15:28:32 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id x9so6721032plr.2
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 08:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vLBlOX+xCLFwdjKITjGT3edrjFz/FA4boYyh19CkJFA=;
 b=qNKJrMPr9yz1jbbMLZbNdtaHYc8S4EHw8na7QRR9KksofNV4GcRJWNzT5F9Z7sh0rH
 ukBiGKYh81DAU2gDQfKQE5qEFrQLWcbgA2+dazm7wTPdkcSTbfy1yJOO15Qzij2ob1xo
 gRj/61bmmX4do0FvyItVowGSAfQkRxuLtf2mMVft1FhfUyOqu0NsqvJ4aeiZb3KvUl4M
 NxcFL+x8bG21OFcKpLCGhlk7ttIM2ML5tSgT8WbepY+ghbLSemqxqTZL+v4RQmIl8Wvd
 XtgOEEVpmeBOr1iR59m+yY3Yk1x5uDgwG9zxU4DlpwethOFjl4UMuTZ42xuYhUe58FKa
 0hgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vLBlOX+xCLFwdjKITjGT3edrjFz/FA4boYyh19CkJFA=;
 b=M2ThCBKZ6KF69faEmnDlfH86FEkMjt16DlKblbPOxpGpGJk+WKclqUFdhD4UAwk4kk
 LUKFl5SG2LOwWaqGybFGRBRBZqj6908sBgrs6VzsZogfchBVUZpkmvrqaA5goWDv1hsN
 ZsiTcCe0jPIpvg6quOmVepYif9vHU65rWZR03tQiQKQGYXvoRnKwd16iVJ3Qk8xzZ+oE
 OcNhs+9PehvUaNHMUpN8Wcrw4P8nQbgI5INVcl1BtAyjIa/6ln02tlLx7kn0/FtsbBF0
 8hLnzvAaNYuevHe3d8xojbB9cIsWNfhT4xgThKGGugm3Wh1LQkJM9Kl4KUlnMRzRKIxO
 ZFRQ==
X-Gm-Message-State: AOAM533YqA1/wEjj5ClZsGDHBSBd+sKCSiXT5Md8bwHHRwHYLnGtk+zU
 yIl0Wtn62v+cM1tvjaHVRhDrTas+yF+byg==
X-Google-Smtp-Source: ABdhPJxOu1A/jf62yQLZrubZtMFq2ZrWFJbfkEiZVzR7IiTNpim+NYbtMllpN4nyoyihT0LM/6oeAw==
X-Received: by 2002:a17:90a:43c3:: with SMTP id
 r61mr16006132pjg.216.1595086111658; 
 Sat, 18 Jul 2020 08:28:31 -0700 (PDT)
Received: from blackclown ([103.88.82.25])
 by smtp.gmail.com with ESMTPSA id j5sm9898096pgi.42.2020.07.18.08.28.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Jul 2020 08:28:31 -0700 (PDT)
Date: Sat, 18 Jul 2020 20:58:26 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: rts5208: rtsx: Replace depracated MSI API
Message-ID: <20200718152826.GE26780@blackclown>
References: <20200718131856.GA10837@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200718131856.GA10837@blackclown>
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 18, 2020 at 06:48:56PM +0530, Suraj Upadhyay wrote:
> Replace depracated pci_enable_msi with pci_alloc_irq_vectors.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> index e28e162d004e..adc80e766412 100644
> --- a/drivers/staging/rts5208/rtsx.c
> +++ b/drivers/staging/rts5208/rtsx.c
> @@ -310,7 +310,7 @@ static int __maybe_unused rtsx_resume(struct device *dev_d)
>  	pci_set_master(pci);
>  
>  	if (chip->msi_en) {
> -		if (pci_enable_msi(pci) < 0)
> +		if (pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_MSI) < 0)
The conversion is buggy, It changes variable name.

>  			chip->msi_en = 0;
>  	}
>  
> @@ -881,7 +881,7 @@ static int rtsx_probe(struct pci_dev *pci,
>  	dev_info(&pci->dev, "pci->irq = %d\n", pci->irq);
>  
>  	if (dev->chip->msi_en) {
> -		if (pci_enable_msi(pci) < 0)
> +		if (pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_MSI) < 0)

This has the same mistake.

>  			dev->chip->msi_en = 0;
>  	}
>  
> -- 
> 2.17.1
> 

Resending this patch.
I hope this wasn't an annoyance.

Thanks,

Suraj Upadhyay


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
