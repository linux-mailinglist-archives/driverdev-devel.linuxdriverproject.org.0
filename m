Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E2C224F31
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 06:35:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B0AC86365;
	Sun, 19 Jul 2020 04:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPnx7aZlZgea; Sun, 19 Jul 2020 04:35:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B280F85C28;
	Sun, 19 Jul 2020 04:35:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF4331BF38B
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 04:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DC70687E49
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 04:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lSpvMdFxzVZv for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 04:34:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 781F287E1D
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 04:34:58 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id u5so7380839pfn.7
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 21:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RhbYjjsEblGVOuvzmWtzkghGNNIuxewncjcXQDojD18=;
 b=hCbW7w8q3DIJ+GO6/km3FYPzqVf9Pws1jTbEbxW+51WpDajtn6MweSiLR0ErBCJne4
 xfOizeRktAI3+vhiKT4gHx525ovZatSRsgqw8+kY0gu2YVBBMvqlVUFfj3Tg+ZjRvQeD
 OWvxVNpR6QFtrEgiyIUDt+qFggF0QO1yu7E7gn7g53vZG1PElKB0wc12Os1z7mfFjwIV
 9mYi8DSIo8wStdRzWnFOeyF7iSuE+8VvUPejid6ya2VmyKdyHJ4vDX5/KmFtpMtoNlKg
 pM9K4RzX8FHbrznat+QFUQdSDz/RfkjVjck1OZ+tFe9EMwoznFwGEYBOFJdc/JRFq0l5
 zKqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RhbYjjsEblGVOuvzmWtzkghGNNIuxewncjcXQDojD18=;
 b=j3vI7eMWuyThIlijufx8xag8EmlABxkb+Ry9woTDFlMpRc2iVMHSERmXU/wyWAC3Rs
 EPhA27J9G8NfPicJ3QE8o3oOAQpkQHoKlAPym+JlS0qoG9rbdVa7bFG3L4bYWfXZwYgb
 CPdHotvU1j/HN9BbUXAILEp7QLJrXqc8ip/v/jb+wjn8LiGmS4U7aUdU4nS+5zJgUsDX
 zPqqHefjurkxd9vx8nel732sxLZXHeHsw1lU0FzO7OaFrZihd543AUFGXnTiyQeMSFwA
 A/dj9XepwOMcvhGRAHfHtt9PfjlU/JLRxhGnCIxVXehS3Qjicmk8Nw0SuzwwwLqax/u3
 vJKA==
X-Gm-Message-State: AOAM5302qKquVQXgHqitZeGFW8ULuIOg5yOg89tpiLFSwujPEOfygQR1
 DtZHCrGWEGBdMkFQ3mO+ft8=
X-Google-Smtp-Source: ABdhPJwE18GYMkdPelTI6cVgEYieCBABEOjhsycjTp2RvICPtMnZjo2Np9QXeIwCUgb8fjn/EjiTIA==
X-Received: by 2002:a63:e442:: with SMTP id i2mr14690576pgk.105.1595133297970; 
 Sat, 18 Jul 2020 21:34:57 -0700 (PDT)
Received: from blackclown ([2405:204:219:61b6:3945:8436:8c57:56d5])
 by smtp.gmail.com with ESMTPSA id y198sm12046055pfg.116.2020.07.18.21.34.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Jul 2020 21:34:57 -0700 (PDT)
Date: Sun, 19 Jul 2020 10:04:50 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: Re: [PATCH v2] staging: rts5208: rtsx: Replace depracated MSI API
Message-ID: <20200719043450.GB28510@blackclown>
References: <20200718154030.GA28042@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200718154030.GA28042@blackclown>
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

On Sat, Jul 18, 2020 at 09:10:30PM +0530, Suraj Upadhyay wrote:
> Replace depracated pci_enable_msi with pci_alloc_irq_vectors.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
Hii, don't merge this patch.
It is still incomplete.
It doesn't replace pci_disable_msi.
I hope this didn't cause any annoyances.

Thanks,

Suraj Upadhyay.

> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> index e28e162d004e..b39d3f8b54df 100644
> --- a/drivers/staging/rts5208/rtsx.c
> +++ b/drivers/staging/rts5208/rtsx.c
> @@ -310,7 +310,7 @@ static int __maybe_unused rtsx_resume(struct device *dev_d)
>  	pci_set_master(pci);
>  
>  	if (chip->msi_en) {
> -		if (pci_enable_msi(pci) < 0)
> +		if (pci_alloc_irq_vectors(pci, 1, 1, PCI_IRQ_MSI) < 0)
>  			chip->msi_en = 0;
>  	}
>  
> @@ -881,7 +881,7 @@ static int rtsx_probe(struct pci_dev *pci,
>  	dev_info(&pci->dev, "pci->irq = %d\n", pci->irq);
>  
>  	if (dev->chip->msi_en) {
> -		if (pci_enable_msi(pci) < 0)
> +		if (pci_alloc_irq_vectors(pci, 1, 1, PCI_IRQ_MSI) < 0)
>  			dev->chip->msi_en = 0;
>  	}
>  
> -- 
> 2.17.1
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
