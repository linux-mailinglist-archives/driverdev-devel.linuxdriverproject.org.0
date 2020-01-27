Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C0A14A5C3
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 15:09:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90AE6204A6;
	Mon, 27 Jan 2020 14:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L55v28O78+Tg; Mon, 27 Jan 2020 14:09:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 554D72047D;
	Mon, 27 Jan 2020 14:09:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 445F11BF3C0
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 401EC20470
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:09:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2nS6QIeSRWTn for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 14:09:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by silver.osuosl.org (Postfix) with ESMTPS id 71A702040B
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 14:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580134159;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J0tWyHYw98UjELXx0eG2rBwfSBPRrMQ58+BFQIrIctE=;
 b=MAfCmObLREFeUWQ58a7yHZ2t1RnNL9DcZAWrDHMCe8NCJbWM3P2p9raSXgVSIp7rCyfEcs
 Jtp7RKZ0dkaHXzrRLLz/BbbK4TXdgsxruKUXnmpCTI8EEuZtGgeDuqWiFzykL1XNe6x0VC
 /kFdsRYAuf/R4UU7N5wy8MiUoFWVI8E=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-99QUyuDgNcellD_hGoopSg-1; Mon, 27 Jan 2020 09:09:17 -0500
Received: by mail-wr1-f70.google.com with SMTP id 90so6130193wrq.6
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 06:09:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=J0tWyHYw98UjELXx0eG2rBwfSBPRrMQ58+BFQIrIctE=;
 b=tFiJgCjSh5hgg+ICZro41MP4NON6ViqWx1qjxDD/HYnHTfKBUNk9HUouz61kucK+bo
 uMZKq7p3OW1QSJOqUb3rH9x7Zkibx5z+zYTMlpdvAQBoWYeF/63rtJom8Cz9WKfi/Lve
 xPohzAdqfrbutgebhufjZSXB9Yxjt9MQWIJfehtU2XFWyG/nC6BFUSrpFPu7ZYlS5vBG
 EgrlyL46IX354OeoxAHftl32KggrzeAun6H1VrZIgrn9EuPJSieW098PQgJ3xmXUT1yV
 SmyAdRROeCAWZzTG9fjfviiai83UmY2LjPcQwOh/iBcKXcBDCCo0ipmzRIsuu/4U13uZ
 bc0g==
X-Gm-Message-State: APjAAAUjxPMdN/sxHXJ+AhXwCtyoypVowCaj2cZuQD0JrFYImUsSZFZI
 wQbQ++IuXGCaMKf73u0x38MpyByh4s5MAP1JQI5WBoDtCrKFdjOMaSrN9GOTl2+9uUrEXL8eoy2
 09PPRxm4pu2ym4swxXQv30w==
X-Received: by 2002:a1c:9d08:: with SMTP id g8mr13430022wme.141.1580134155883; 
 Mon, 27 Jan 2020 06:09:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqxL1mkRTXScdallzJa6atatfMWFPsRST+u2+CId8f49QKDBROlfW8LGzAMTi5X6FzaKHo4AVQ==
X-Received: by 2002:a1c:9d08:: with SMTP id g8mr13430001wme.141.1580134155613; 
 Mon, 27 Jan 2020 06:09:15 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id x11sm19143881wmg.46.2020.01.27.06.09.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 06:09:15 -0800 (PST)
Subject: Re: [PATCH] staging: rtl8723bs: fix copy of overlapping memory
To: Colin King <colin.king@canonical.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
References: <20200126220549.9849-1-colin.king@canonical.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <32254b45-be59-a83b-0036-6a6d9fe86379@redhat.com>
Date: Mon, 27 Jan 2020 15:09:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200126220549.9849-1-colin.king@canonical.com>
Content-Language: en-US
X-MC-Unique: 99QUyuDgNcellD_hGoopSg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

HI,

On 26-01-2020 23:05, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently the rtw_sprintf prints the contents of thread_name
> onto thread_name and this can lead to a potential copy of a
> string over itself. Avoid this by printing the literal string RTWHALXT
> instread of the contents of thread_name.
> 
> Addresses-Coverity: ("copy of overlapping memory")
> Fixes: 554c0a3abf21 ("staging: Add rtl8723bs sdio wifi driver")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>   drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 5 ++---
>   1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> index b44e902ed338..890e0ecbeb2e 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> @@ -476,14 +476,13 @@ int rtl8723bs_xmit_thread(void *context)
>   	s32 ret;
>   	struct adapter *padapter;
>   	struct xmit_priv *pxmitpriv;
> -	u8 thread_name[20] = "RTWHALXT";
> -
> +	u8 thread_name[20];
>   
>   	ret = _SUCCESS;
>   	padapter = context;
>   	pxmitpriv = &padapter->xmitpriv;
>   
> -	rtw_sprintf(thread_name, 20, "%s-"ADPT_FMT, thread_name, ADPT_ARG(padapter));
> +	rtw_sprintf(thread_name, 20, "RTWHALXT-" ADPT_FMT, ADPT_ARG(padapter));
>   	thread_enter(thread_name);
>   
>   	DBG_871X("start "FUNC_ADPT_FMT"\n", FUNC_ADPT_ARG(padapter));
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
