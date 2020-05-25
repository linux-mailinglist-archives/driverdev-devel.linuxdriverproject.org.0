Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8429E1E0C42
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 12:54:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46B0686153;
	Mon, 25 May 2020 10:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1oA7Y4v8AGR1; Mon, 25 May 2020 10:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31D0185B4D;
	Mon, 25 May 2020 10:54:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7838D1BF32B
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 10:54:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 55EA120343
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 10:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s8qjqO1OIUwl for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 10:54:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 0332720341
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 10:54:08 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id d7so20054470eja.7
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 03:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=I2SbXHPPSfQYxydd3wzVxKM/dM5peIMZZus8bzRPuPo=;
 b=q4lxaU9CtOqrjY7oTsTXqky1nSVO0crs1fSCGfajCpOJOJEkhb2krEfjE2ivsNddo8
 LL4BA0vUQhaBvhZBsXjfN0SuYXpWeL6hFzInK8QZuSMOH1Faptdjtvz1+1xAQ/iJeOfS
 mgLaqeMgFHFopi+2y37hjqF4dvJMyaYHF3ZLqqoJNz3fXfxCCF+LsaTs+UvwPWEu2ITj
 Ifb2nW/EuqSEEyYkqf/KsmkKOp3oHVfzcMni37bT0PXZM3dVHQ/X8/lxkoj/VG9sf2YN
 0S+3RlGK64BfGVU2ykWHHZI1G6HExpHG3BoD9J+swJSzGUUPyY9QZ7BFj40CoeV11eIM
 YVVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=I2SbXHPPSfQYxydd3wzVxKM/dM5peIMZZus8bzRPuPo=;
 b=Mg777KpQtw5VZVwEE6hYnuCF93YpRcuJHGrhn2ol5mPJ8ymTSCvj/xeaEmSgmXwn+W
 PmUgMChkG/SempYymU4QSDLxEZowKD8CMz1TLX9YEly28xiPS/NBdQMRsRCgm//lXBYf
 Fj5X/a+qf7lL48kWPmDSmB2NJ0Qxmh9W+V4f6q8pLYcy4pcTmF1NvxI3XHmbKByLTjlI
 3mvYQfTlHZMGmt4PViozc0GyYWgK6F/eTWYMXtZpt+yjWqSuJNPG8ujE1SMtfS+Vpsf2
 VQ2FVwkzr9piwlDKk5GzWyRKuZIpMfHD5EHDGwIxcMWN3DiEDq5D2vCD6LVQFfqOBs/a
 04Mg==
X-Gm-Message-State: AOAM532mnCXSCMEUghn4ksCiXEgxrjABOB2b9ir9UnBZT/HmOK87T5cC
 Z5Fb0phHQ4MB/ho71FtaX1o=
X-Google-Smtp-Source: ABdhPJwi1ssc7Gtx/iriU4TwkE8NvmkswAIt2uL7Im8Q8vBREkBMDvgoet34z0Judn6oiPaJ9Kzewg==
X-Received: by 2002:a17:906:a0c2:: with SMTP id
 bh2mr19064586ejb.458.1590404047012; 
 Mon, 25 May 2020 03:54:07 -0700 (PDT)
Received: from localhost (ip1f115f16.dynamic.kabel-deutschland.de.
 [31.17.95.22])
 by smtp.gmail.com with ESMTPSA id cm26sm15127731edb.87.2020.05.25.03.54.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 03:54:05 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
X-Google-Original-From: Oliver Graute <oliver.graute@kococonnector.com>
Date: Mon, 25 May 2020 12:53:32 +0200
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] staging: fbtft: fb_st7789v: make HSD20_IPS numeric and
 not a string
Message-ID: <20200525105332.GB12301@archlinux.localdomain>
References: <20200521135038.345878-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521135038.345878-1-colin.king@canonical.com>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 21/05/20, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently HSD20_IPS is defined as "true" and will always result in a
> non-zero result even if it is defined as "false" because it is an array
> and that will never be zero. Fix this by defining it as an integer 1
> rather than a literal string.
> 
> Addessses-Coverity: ("Array compared against 0")
> Fixes: f03c9b788472 ("staging: fbtft: fb_st7789v: Initialize the Display")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/fbtft/fb_st7789v.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
> index ebc17e05ecd0..3a280cc1892c 100644
> --- a/drivers/staging/fbtft/fb_st7789v.c
> +++ b/drivers/staging/fbtft/fb_st7789v.c
> @@ -24,7 +24,7 @@
>  	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
>  	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"
>  
> -#define HSD20_IPS "true"
> +#define HSD20_IPS 1
>  
>  /**
>   * enum st7789v_command - ST7789V display controller commands

Acked-by: Oliver Graute <oliver.graute@kococonnector.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
