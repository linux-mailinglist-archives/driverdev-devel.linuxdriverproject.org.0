Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 024C6283437
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Oct 2020 12:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 66A872038F;
	Mon,  5 Oct 2020 10:50:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IbvaYaQ7gXaS; Mon,  5 Oct 2020 10:50:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 25692204B1;
	Mon,  5 Oct 2020 10:50:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84D4A1BF30A
 for <devel@linuxdriverproject.org>; Mon,  5 Oct 2020 10:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F8A386456
 for <devel@linuxdriverproject.org>; Mon,  5 Oct 2020 10:50:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PYI9zg-ectTb for <devel@linuxdriverproject.org>;
 Mon,  5 Oct 2020 10:50:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BD50385DB1
 for <devel@driverdev.osuosl.org>; Mon,  5 Oct 2020 10:50:45 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id n18so1178774wrs.5
 for <devel@driverdev.osuosl.org>; Mon, 05 Oct 2020 03:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=M2zjVVLnmwFQgT7Kn7CpiF/4Y0RRRZlogY57D59OL1Q=;
 b=azTf+aCmxMcqsH4Q4OfDxJ0dGV/q88u03C/J+CGqrLXxLnSr1TDFyK7CNHb19lKJBQ
 zdh/JJy7p5benO94gyyJT53xEev17bUpps4y4pLsUM0aIMQXsK6FQJLPFv5W7TzYRvHu
 OFW8pRS5yIuyHvkfEY3Pnzy+Fq6iHIGUuZxZRj8D+eKJ9PaDqkhlZxc2oyoEmf/ZvXKY
 E5lvDFa1vXAlioPuUeqqcLraDukoJYrnCW5ogg44vvIoeY+0vd2hcLBRtxdhkc7ikxky
 AQA5dBAT7nSQxMVmoVhbGiBeVkjV6s3Xstr3TfpbY5u8dAAP736uCK/nE+PX+wRAYmqA
 mqEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=M2zjVVLnmwFQgT7Kn7CpiF/4Y0RRRZlogY57D59OL1Q=;
 b=er63QQGsNXRQY3tn6m0tJ/07W8j+5p5F/S2rs3Ca3qOJudmkvzDEiakmhoN5TskdUt
 zNcXNs+4kJdb51JG7P8xi4c7IFXIIzMaMrRc2akr8kvmuXMC76HjJ8caevdTHmyyUsd9
 X5niO3ezsdrUJrx2GH+y8RPAKs1ks0CHOTqIbvyHiK3FsFjt6N4Kmy1jBmkYZy92IGu9
 Yc+7HmuZoOB+mAalw1IIuzUkRDr1ULtelvfc3jw9zOSxyTiySqRBBnuFIDiQl1Y+g3Qo
 HaaUQSuYEddw2i+earCAXt8svW63PTHp2pPd9NI5E/L2LFouVN3qWGQSfNUS4Pl72V6D
 4e+Q==
X-Gm-Message-State: AOAM531cBPvAb9lvAs8b+k1yaBItJB539ec3xKokb/LxZQ8/eC3Ul9Wx
 1FaJ8icN3XRrShPuYN1N1+R68w==
X-Google-Smtp-Source: ABdhPJyEPRxZd10VmSgHtfqoF+IWeXOoAoyzPP9zyjZ+55dwWBSUiJ1xTTKQhGeCWZvHzXjTlfeNWg==
X-Received: by 2002:a5d:62d0:: with SMTP id o16mr2426402wrv.388.1601895044152; 
 Mon, 05 Oct 2020 03:50:44 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id m13sm12871557wrr.74.2020.10.05.03.50.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Oct 2020 03:50:43 -0700 (PDT)
Date: Mon, 5 Oct 2020 12:50:41 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] media: zoran: fix spelling mistake and make error
 message more meaningful
Message-ID: <20201005105041.GB29306@Red>
References: <20201002101620.86156-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002101620.86156-1-colin.king@canonical.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 02, 2020 at 11:16:20AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a pci_err error message. Fix this and
> make the error message a little more meaningful.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/media/zoran/zoran_driver.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
> index 808196ea5b81..d9f8b21edf6a 100644
> --- a/drivers/staging/media/zoran/zoran_driver.c
> +++ b/drivers/staging/media/zoran/zoran_driver.c
> @@ -666,7 +666,7 @@ static int zoran_g_selection(struct file *file, void *__fh, struct v4l2_selectio
>  
>  	if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT &&
>  	    sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) {
> -		pci_err(zr->pci_dev, "%s invalid combinaison\n", __func__);
> +		pci_err(zr->pci_dev, "%s invalid selection type combination\n", __func__);
>  		return -EINVAL;
>  	}
>  
> -- 
> 2.27.0
> 

Hello

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
