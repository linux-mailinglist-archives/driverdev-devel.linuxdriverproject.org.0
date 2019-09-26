Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9367BF770
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 19:17:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4BD386B49;
	Thu, 26 Sep 2019 17:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jpQ-prN4vEDH; Thu, 26 Sep 2019 17:17:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D86286B2F;
	Thu, 26 Sep 2019 17:17:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 391621BF853
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 17:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3452A87E7D
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 17:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLKlc0NthzXB for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 17:17:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2A87587E7B
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 17:17:33 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id k9so2770784oib.7
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 10:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6iIyaUzF9v02p9F3h71C8x4tDacLmA6BNo4c1Ew2pJs=;
 b=dZKovGgbdsd2S4YW1nmKU9AKCVrY3PrOkZC0M14UJMIpQ+qRDzwZPmVIIFqq0Xk+eR
 4A95WaKJNw7EkpSPAYO/chkQFTbxnnTdC/9OHpPyt6nLSLZizpfd3UUROSkisuLJh6ij
 hrJIkannXvZfTi9lJ2zi+c1d0WRsgEKhxPMxV7gcTOf/ZVatEEO1rPohku5TLrJWADSy
 WZPR2APPq6hmVliPnTZ2jpXV/sR/u3+4Aw9uH0yzz44tvF5vCdCszeaP22atjbBH20tz
 lSQQsQIDzDR592IF0apV8xXcxtRp6DmoBq0YXt0BmRzR5n5QI+f3DMQ9C5XLmGqVyHKc
 17mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6iIyaUzF9v02p9F3h71C8x4tDacLmA6BNo4c1Ew2pJs=;
 b=Ww330RfPPzIaseZv1TaoaE0sBRz++uEe88IvxNXxv/1DKkBVE0J1UOV19D1RgOgxMS
 eyQsjxJxswxRFvHsM45m7VoVf2qI1x2JWChKZP6S0jUpQOKoXmG7fGu71ZUDK5KtnyEc
 AuAwB2yPubj/3f0K+qHPEcoLb8ypXbFK29VoMYeyfhbxKRHR8utEWlkYsiXauf4Hahnr
 LCPWtonD9sSFu78jnyJUBWPo/2gWxQ0qbiBShgv6/bjgqaz4xIvVPedxebt24Y0Ympam
 ARxKcPVwVXaVZoE0WgoK+4ep65qfJMJriNg3Mz7K8tYZPOxHuw9NIhsOEXrcFtZEFML5
 4M9g==
X-Gm-Message-State: APjAAAXRaupv+Lbed3gKV5B2blN8rvoc7bwKlwVFFojZKn4G6GK9k3+g
 jCRZzXEgvYyZ8NCLPBW6/sc=
X-Google-Smtp-Source: APXvYqyMW3KcJHL1VGgFwmaSAlmnyTk+9Zx0q0T+8icx9Z83JVR+fdqIHjILb+MW+p+dEDxgp9V2WQ==
X-Received: by 2002:aca:b256:: with SMTP id b83mr3379404oif.120.1569518252353; 
 Thu, 26 Sep 2019 10:17:32 -0700 (PDT)
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id l19sm788637oie.22.2019.09.26.10.17.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 10:17:31 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8188eu: fix HighestRate check in
 odm_ARFBRefresh_8188E()
To: Denis Efremov <efremov@linux.com>, devel@driverdev.osuosl.org
References: <20190926073138.12109-1-efremov@linux.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <24dbe004-2afe-97e6-b281-3b7109034dd9@lwfinger.net>
Date: Thu, 26 Sep 2019 12:17:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190926073138.12109-1-efremov@linux.com>
Content-Language: en-US
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/26/19 2:31 AM, Denis Efremov wrote:
> It's incorrect to compare HighestRate with 0x0b twice in the following
> manner "if (HighestRate > 0x0b) ... else if (HighestRate > 0x0b) ...". The
> "else if" branch is constantly false. The second comparision should be
> with 0x03 according to the max_rate_idx in ODM_RAInfo_Init().
> 
> Cc: Larry Finger <Larry.Finger@lwfinger.net>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Michael Straube <straube.linux@gmail.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Denis Efremov <efremov@linux.com>
> ---
>   drivers/staging/rtl8188eu/hal/hal8188e_rate_adaptive.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/hal8188e_rate_adaptive.c b/drivers/staging/rtl8188eu/hal/hal8188e_rate_adaptive.c
> index 9ddd51685063..5792f491b59a 100644
> --- a/drivers/staging/rtl8188eu/hal/hal8188e_rate_adaptive.c
> +++ b/drivers/staging/rtl8188eu/hal/hal8188e_rate_adaptive.c
> @@ -409,7 +409,7 @@ static int odm_ARFBRefresh_8188E(struct odm_dm_struct *dm_odm, struct odm_ra_inf
>   		pRaInfo->PTModeSS = 3;
>   	else if (pRaInfo->HighestRate > 0x0b)
>   		pRaInfo->PTModeSS = 2;
> -	else if (pRaInfo->HighestRate > 0x0b)
> +	else if (pRaInfo->HighestRate > 0x03)
>   		pRaInfo->PTModeSS = 1;
>   	else
>   		pRaInfo->PTModeSS = 0;
> 

I agree that the original code is wrong; however, I prefer that changes that 
alter the execution should be tested. I see no evidence that such testing has 
been done. It probably does not matter because a highest rate between 3 and 0xb 
means 802.11g is in use, and that may no longer be a real-world situation.

With any future patches, you need to indicate if testing has been done.

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Larry

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
