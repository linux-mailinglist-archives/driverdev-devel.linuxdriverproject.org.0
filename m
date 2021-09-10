Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F89D406FE5
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 18:43:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C10A402B1;
	Fri, 10 Sep 2021 16:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rf5sxOljZV2T; Fri, 10 Sep 2021 16:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D08A401B6;
	Fri, 10 Sep 2021 16:43:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA8BF1BF2C7
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B58D9401B6
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:43:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9lZydsl9D79K for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 16:43:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6BBB4012E
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 16:43:30 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id k13so5288201lfv.2
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 09:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=CpppGfWdA8BK4TEonYP/3MMVluD0lccSfMd5MNwKeZI=;
 b=TeOEMXQv69sxAJJRBo9B4lk3fpM/E0/Egxfjkx2Whvw1euWeJGEKX/A4YT9I361Tg2
 xfx600hqLxUjGOIChRARytJCOEO6ofvlQZajymlSPvItFy3U0XczbGn2Brda8Dkhbhyq
 Lhw/5FVJXFBXM+yrMeh4stgVVSkaJxm8B4EfkmWxtnutQszIUpdlCY5bWlOa7aGP0n8v
 ehlVF96bIjqCU2F6TffATDo15AqEBg6cibUeQk8AK4vfHZGO08vrhNtoRsGG/kYZaQ/J
 SCe6RBjjYYJPiZ8W9mXymIQZpiObjeSLqbhOEZfBbQcFrMRGf/bkNGs6lIsW/FmETVJ0
 K84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=CpppGfWdA8BK4TEonYP/3MMVluD0lccSfMd5MNwKeZI=;
 b=Tr+RNr5ia1CF2JXnQ8XxY2L0DAws5j4ybM3S3hb8JMOOpvNXc2yxT1Z13nNtHAeZK7
 1xVggvWofWqgXCcV8JsGQQ3lsuOcWFl9zS3IGe8Dh7KubguU2136fKx6vdEWYZMgiIdg
 FqopV+NFhMYz5QITyqzafR+Msfoc0XeqHEhl7Na42tK89wktNTehlTt1Neu37rKdgU8d
 f02lFP3sUUtu5WUzVOWI2uc4TNZf4UypRXbvBNlTMjMs8SqaGHOqG6uuPtG87OHLPKCK
 V3gIUy07tuMbVTbKGlzZG8/dUnjDRT8C37pTWqGa88JzWfpdPHpPvGdrrRQJf8Jv7sER
 KxLw==
X-Gm-Message-State: AOAM531fYn9z0A2kNCM4ey6wnMJBNmlJqtpdoOm370GTBxW0xt8QApWR
 N0fu2Pyjq/Q2cF5csteMo7M=
X-Google-Smtp-Source: ABdhPJz7K6g1w0gHsQO3ayMRireXIkr5lTLQy7Usi5dYuUKhB2c/o2cUiEPAw4W0lHFRbegttgMqhQ==
X-Received: by 2002:a05:6512:4005:: with SMTP id
 br5mr4592372lfb.560.1631292208860; 
 Fri, 10 Sep 2021 09:43:28 -0700 (PDT)
Received: from kari-VirtualBox ([31.132.12.44])
 by smtp.gmail.com with ESMTPSA id f20sm666074ljc.81.2021.09.10.09.43.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 09:43:28 -0700 (PDT)
Date: Fri, 10 Sep 2021 19:43:26 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 13/31] staging: wfx: update with API 3.8
Message-ID: <20210910164326.ivhlbnaq6526wcso@kari-VirtualBox>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
 <20210910160504.1794332-14-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910160504.1794332-14-Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 10, 2021 at 06:04:46PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> API 3.8 introduces new statistic counters. These changes are backward
> compatible.

It will be obvious to some what API 3.8 is. But at least me can rise my
hand and admit that I do not. Probably wfx api but ig there is any
public info but it here. If there is not just say Wfx api 3.8.

> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/debug.c       | 3 +++
>  drivers/staging/wfx/hif_api_mib.h | 5 ++++-
>  2 files changed, 7 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
> index eedada78c25f..e67ca0d818ba 100644
> --- a/drivers/staging/wfx/debug.c
> +++ b/drivers/staging/wfx/debug.c
> @@ -109,6 +109,9 @@ static int wfx_counters_show(struct seq_file *seq, vo=
id *v)
>  =

>  	PUT_COUNTER(rx_beacon);
>  	PUT_COUNTER(miss_beacon);
> +	PUT_COUNTER(rx_dtim);
> +	PUT_COUNTER(rx_dtim_aid0_clr);
> +	PUT_COUNTER(rx_dtim_aid0_set);
>  =

>  #undef PUT_COUNTER
>  =

> diff --git a/drivers/staging/wfx/hif_api_mib.h b/drivers/staging/wfx/hif_=
api_mib.h
> index ace924720ce6..b2dc47c314cc 100644
> --- a/drivers/staging/wfx/hif_api_mib.h
> +++ b/drivers/staging/wfx/hif_api_mib.h
> @@ -158,7 +158,10 @@ struct hif_mib_extended_count_table {
>  	__le32 count_rx_bipmic_errors;
>  	__le32 count_rx_beacon;
>  	__le32 count_miss_beacon;
> -	__le32 reserved[15];
> +	__le32 count_rx_dtim;
> +	__le32 count_rx_dtim_aid0_clr;
> +	__le32 count_rx_dtim_aid0_set;
> +	__le32 reserved[12];
>  } __packed;
>  =

>  struct hif_mib_count_table {
> -- =

> 2.33.0
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
