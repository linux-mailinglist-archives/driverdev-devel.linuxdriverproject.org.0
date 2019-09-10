Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB16AF14C
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 20:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A40687AFE;
	Tue, 10 Sep 2019 18:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vh8zTKV3-gI1; Tue, 10 Sep 2019 18:55:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E83087A5E;
	Tue, 10 Sep 2019 18:55:13 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A0CE1BF294
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 18:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2152E2202C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 18:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o6+ZBxywy1dS
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 18:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 79EF12154A
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 18:55:10 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id y22so12095310pfr.3
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 11:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kIJM1BRRC8i1Urr1N/RYxwR4Us+pTiWFH8XRjusS/s0=;
 b=YEyDjYpxDRFbPJE7P8yZWC8gJCd5qnNoV6ab2znqm3GvnR0TXdKpUUAVHprO3NCbGC
 0mEEVd+0hAcOtMW3iIKoxDsRKA0bLarSS7Hktvx8hqNdUr4Pcaan/v0jZb4VxdqervLA
 suG7WhbYHYo64hzuXnpvzaLoKTg6D5JvSeD4CliayBQUhOBvMYWikhlosE4yfGHX1oq0
 CYLFJ5PIdjWSLjEQ0F/OZ9FCleTOxqQAtkxglW7AAi8zOO2nK/1b/9SEoR28kkzbokQU
 QsgnflYEiRNnWDcBQQGfVrnF2TegGscCQAkTDFNSWyR01+jYAu80BlBNnPEyVqigmFce
 8GAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kIJM1BRRC8i1Urr1N/RYxwR4Us+pTiWFH8XRjusS/s0=;
 b=UZXCCvlZVnQ1VFbfw2k+Tv0KpoOmwddZXb997M4oTFTH7W/p7edh9ud0691+QzyR93
 kEigM2mb6zrx28domBZLA6VDGMc4pjY7nvVuIW3Py+iNJXAjUm/0cYpQAcTe/bm3tZYh
 sIjg2fwtuGz1d/MWCZTIe8VjF9RgB/GXonYAPHanVLqghSS7Y0nSaO87/dTlDem52zlV
 QUY13QF2F5HoQCc/skU5RKqWuTWzJB4XAxDs9N6Vy5pOCjSi+B7U/J+dhXpcnGNzt8d2
 WKPTjW/P+42NOY4I4rOWqEF8BJvmKY8oscUOBX1a7XgS0LcMOLsxZf2bgX9+RiN6DKz8
 e0vQ==
X-Gm-Message-State: APjAAAVKmLiHdRxEUnXVlBUzGEd651ruhzI9Arx2wMkMxRasZlV1oA1w
 KydvU/jPT1CFtaOt5J9xKvRfSquTrqcqdQ==
X-Google-Smtp-Source: APXvYqy+eBd7cdqUTOCsWmT9L1O/6m18WZubSTTcxJb+yeBtyD+Sap2VGFitIftWoypQKgSou+F0cA==
X-Received: by 2002:a63:5754:: with SMTP id h20mr28331581pgm.195.1568141709718; 
 Tue, 10 Sep 2019 11:55:09 -0700 (PDT)
Received: from SARKAR ([1.186.12.73])
 by smtp.gmail.com with ESMTPSA id m13sm19315758pgn.57.2019.09.10.11.55.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 11:55:09 -0700 (PDT)
Date: Wed, 11 Sep 2019 00:25:03 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: Re: [PATCH] staging: rtl8712: Replace snprintf with scnprintf
Message-ID: <20190910185503.GA8541@SARKAR>
References: <20190910184931.GA8228@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910184931.GA8228@SARKAR>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resending as I made a typo in Larry's email id.

On Wed, Sep 11, 2019 at 12:19:31AM +0530, Rohit Sarkar wrote:
> When the number of bytes to be printed exceeds the limit snprintf
> returns the number of bytes that would have been printed (if there was
> no truncation). This might cause issues, hence use scnprintf which
> returns the actual number of bytes printed to buffer always.
> 
> Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index b08b9a191a34..ff5edcaba64d 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -142,7 +142,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
>  		memset(buf, 0, MAX_WPA_IE_LEN);
>  		n = sprintf(buf, "wpa_ie=");
>  		for (i = 0; i < wpa_len; i++) {
> -			n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
> +			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
>  						"%02x", wpa_ie[i]);
>  			if (n >= MAX_WPA_IE_LEN)
>  				break;
> @@ -162,7 +162,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
>  		memset(buf, 0, MAX_WPA_IE_LEN);
>  		n = sprintf(buf, "rsn_ie=");
>  		for (i = 0; i < rsn_len; i++) {
> -			n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
> +			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
>  						"%02x", rsn_ie[i]);
>  			if (n >= MAX_WPA_IE_LEN)
>  				break;
> -- 
> 2.17.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
