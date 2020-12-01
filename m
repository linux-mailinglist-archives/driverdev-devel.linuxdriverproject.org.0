Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E95E12C9851
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 08:43:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0096786B26;
	Tue,  1 Dec 2020 07:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uQGBV3Khno2Z; Tue,  1 Dec 2020 07:43:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C04D986B10;
	Tue,  1 Dec 2020 07:43:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 733F51BF336
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 07:43:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F88B874FF
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 07:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PtRESQiZQou3 for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 07:43:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8D23F874FD
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 07:43:07 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id u12so1120167wrt.0
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 23:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PcXJ9iGPXJxbIO5/OmeLfTqLKT5PGKAYjhQLnvXmAUY=;
 b=n9x59rmZI4zDbTRBHyHp+96nEiDWgjaEUJwfPorFT9lDJnBLeqM2KelAgaDJb0txUy
 3zlwVcEYFWLRCA/PwQD+9FBFWVmEVYk+ZUW5UWr+VLArq69HUVotHrvyPpd+8fYtlN5G
 0PC3xMcMbJXvlOAKQYxKSifOrdq9bpvegqI75IvdHMq1W1ENxTfOavbfrYaeDrK06Tar
 U1yI1DbpJZMN7xgh78yLgezZJa5ZUE9yETU82A4DHkTrS+kfF5sJGnekvXUfQBbaHZx2
 cKWiW2Ii4HmcuuREQAl+/CwPYPM4zmOvuOO9KS+SgAfkXXrtsT2+ErVIC/zENfqZZiM7
 S9Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PcXJ9iGPXJxbIO5/OmeLfTqLKT5PGKAYjhQLnvXmAUY=;
 b=ao90j1QR8fdr9nbJhu/4KYGWshmFUptbuNVq4GL5mjJz2qCptYMYLYcQxq4jmZ7FC5
 KxE6Ob56OY/EGeb0lfpFyxUo/xKJCP2pe5ksDOK/djdyniCQRx6OKgSLBdDOXqpDDGUu
 nK5zHQEcjHp0BKzEVqiMLC09YJROsinGwN4IoHIes11b9A9zPU7uilG/Qyxw/MewEoTj
 Xq0pnzfEJs5GcLY9SoXrjHIWrrHWkUnGY2/jpHyfX5UgdBJ4k2cAFMNzHXgwPbG63D1E
 PHItwqZJjr1fMmz0WaaToYZzpVFA5p7/kOqBI/fs3K+fRwqve7ZI74aZN02v80sx9dRl
 eXCQ==
X-Gm-Message-State: AOAM530h7EO8H2KMKPq/d1cZ1D7dlHrS1n9+LTPgX5SRERnVq8u6lz+v
 N/q8SNkrsID5/2CxWRJObzbwRw==
X-Google-Smtp-Source: ABdhPJzgqnIYEL/0SLcifJPCDMLgXcXaGSzFSZ06l0ncRg0TF07/r2LRAGPxzqL/EaZrEtO66+JdJQ==
X-Received: by 2002:adf:f1cb:: with SMTP id z11mr2057765wro.363.1606808585946; 
 Mon, 30 Nov 2020 23:43:05 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id f7sm7599819wmc.1.2020.11.30.23.43.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Nov 2020 23:43:05 -0800 (PST)
Date: Tue, 1 Dec 2020 08:43:00 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Travis Carter <traviscarter2@gmail.com>
Subject: Re: [PATCH] staging:media:zoran: Fixed grammar issue
Message-ID: <20201201074300.GA7416@Red>
References: <20201130230659.GA10362@linuxmint-midtower-pc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201130230659.GA10362@linuxmint-midtower-pc>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 30, 2020 at 05:06:59PM -0600, Travis Carter wrote:
> Removed repeated word 'in'
> 
> Signed-off-by: Travis Carter <traviscarter2@gmail.com>
> ---
>  drivers/staging/media/zoran/zoran_card.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
> index dfc60e2e9dd7..c77aa458b6d2 100644
> --- a/drivers/staging/media/zoran/zoran_card.c
> +++ b/drivers/staging/media/zoran/zoran_card.c
> @@ -39,7 +39,7 @@ MODULE_PARM_DESC(card, "Card type");
>  /*
>   * The video mem address of the video card. The driver has a little database for some videocards
>   * to determine it from there. If your video card is not in there you have either to give it to
> - * the driver as a parameter or set in in a VIDIOCSFBUF ioctl
> + * the driver as a parameter or set in a VIDIOCSFBUF ioctl
>   */
>  
>  static unsigned long vidmem;	/* default = 0 - Video memory base address */
> -- 
> 2.17.1
> 

Hello

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
