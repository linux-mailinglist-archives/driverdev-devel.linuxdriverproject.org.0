Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 894951E8D45
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 04:56:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D22EE2268C;
	Sat, 30 May 2020 02:56:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1OSp+NVcUKqS; Sat, 30 May 2020 02:56:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA1A922246;
	Sat, 30 May 2020 02:56:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 55B831BF5AE
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 02:56:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 50624884A8
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 02:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qf48xlIbjSI0 for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 02:56:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7963F883BB
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 02:56:52 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id q24so2211483pjd.1
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 19:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Pd/e7eNS71jRXfS6WeolyrknIqfCh6tgL92AqzRruI4=;
 b=TyC/IG6fw37NElc8jDyVbfuTyWpAYf4mk38N68MtLvgGFxe/58gXeXwruIlPg7BmIl
 p16yr04cA/rDrIqjAK5APxP+FWlnVWI5elWy6NfRVkgMwd4xRzu/N9jg5QHkMpFV36ic
 yVaPWrtRKADpZGhLP8XYVoKYYJw6pBtMdbz3hqcRRr/cpvuZdEHOlwYd8mr8DfzEQ1J9
 w7qkmNdY7AkmVuI9AM0a8JaRLl8noiBjVcYji0LOLSHinxQu6w9SkZZvGIgkarmqXnt4
 O8O0nNc+0QST1Lz9Kf/vt94D7pF6LNeI/2lyXif+8jZy3O+oLQYQVV1ARGL6HU0+VerG
 vr0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Pd/e7eNS71jRXfS6WeolyrknIqfCh6tgL92AqzRruI4=;
 b=DXNUvvmsj4BkJ9q8GhUqdbnZj5UvWxbw29Zw1VMVNG62dc577EBkBLwW2OFP+zyq67
 tDz3hNlquYj1PfMTbDg2YFdeJv0dAcyqr0BYk3Tk6tP6TbO4IPv8GwZd6TJ4rsMnFL8f
 qsdE8zSYTNAaFIfkU67HdH7cttchyAmzWK8Al+tVVKHZ2WcKig6AW45vWcxJQLlxVECD
 fxn0uWDJSqvyrb/cxdYP83iov5Q05Hm88jsVkNcoe8wo+L24T4qINL3qfPhMRsz0YbH9
 BAFIXmY5MYsmgaQ2gh0Y1KrCpJMh5FkJdD3C95AHlbkXzGKJU5A3l/RVVYkpmIpKEYXx
 XKaw==
X-Gm-Message-State: AOAM532TY7UDWGRjSWDbuVmDlwBg+j8+l3HAhpJn99Qm0k5MpTB+DGpI
 YGNFGBPygHWpEebD1D7J2yIqM494
X-Google-Smtp-Source: ABdhPJzyFsisx0c0FZbMcBEf0y2rZ3v3nLsapbiP38Ipd4ZWp51m456PvBFXlrcjLQWeZat6e/cvog==
X-Received: by 2002:a17:90a:2a03:: with SMTP id
 i3mr12315626pjd.29.1590807412075; 
 Fri, 29 May 2020 19:56:52 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id y9sm647001pjy.56.2020.05.29.19.56.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 19:56:51 -0700 (PDT)
Date: Fri, 29 May 2020 19:56:49 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 3/9] staging: media: atomisp: annotate an unused function
Message-ID: <20200530025649.GB1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-3-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-3-arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 29, 2020 at 10:00:25PM +0200, Arnd Bergmann wrote:
> atomisp_mrfld_power() has no more callers and produces
> a warning:
> 
> drivers/staging/media/atomisp/pci/atomisp_v4l2.c:764:12: error: unused function 'atomisp_mrfld_power' [-Werror,-Wunused-function]
> 
> Mark the function as unused while the PM code is being
> debugged, expecting that it will be used again in the
> future and should not just be removed.
> 
> Fixes: 95d1f398c4dc ("media: atomisp: keep the ISP powered on when setting it")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Mauro fixed this in his experimental branch:

https://git.linuxtv.org/mchehab/experimental.git/commit/?id=dbcee8118fc9283401df9dbe8ba03ab9d17433ff

> ---
>  drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> index 694268d133c0..10abb35ba0e0 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> @@ -761,7 +761,8 @@ static void punit_ddr_dvfs_enable(bool enable)
>  		pr_info("DDR DVFS, door bell is not cleared within 3ms\n");
>  }
>  
> -static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
> +static __attribute__((unused)) int
> +atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
>  {
>  	unsigned long timeout;
>  	u32 val = enable ? MRFLD_ISPSSPM0_IUNIT_POWER_ON :
> -- 
> 2.26.2
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
