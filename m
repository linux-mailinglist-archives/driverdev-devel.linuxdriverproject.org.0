Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E97A3406FC8
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 18:38:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40805849BC;
	Fri, 10 Sep 2021 16:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SW8zePOaSK0Q; Fri, 10 Sep 2021 16:38:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D8DC849B9;
	Fri, 10 Sep 2021 16:38:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 729481BF2C7
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:38:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6063640277
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:38:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7lyWTm6UQqn for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 16:38:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68E84401B6
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 16:38:20 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id c8so5254614lfi.3
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 09:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=5QwWlin4ZDvaZz8INndl7HFIc0CWI9paTvPrHzicgUs=;
 b=DUyvAmNot4XZwCNeqeKSLbIWXwtKyNpK9CSu8KQWthes7Z5JLPWMKwLOVx/BHZczvQ
 I/n8sRYB6s4vEk1ADPAj5goJ4z80hq3K6CX5/k2uaSkbcHBuzSTFLUNN3oI3+0qK9CxD
 c2PDrR2MGkAso0PWf+M3yaSqqXKGYMjD8GFvRGh7uxrvGGbDbdhhBtqmHdzsWRn8hfTp
 rZ6aG4IPiH0u7FNxzfp36biOhtWvnGRWrlFgp0ooVeGjP/uJY3r87EhxXoSJc4u/lM2r
 5kq8NHFPQN4fe8ay62pP74YwkZqr5mdz+y2K+roRYXMWS55DOKnI6fHbwfEvWqRyndI+
 3FGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=5QwWlin4ZDvaZz8INndl7HFIc0CWI9paTvPrHzicgUs=;
 b=NIhS/gYIjjqqLJhdp4I3e9DDUTssD/88MpAkRzr48JhN1s3LQzKX98lYt4pHAmGFJQ
 4a1KKasUZNRe6WMPaUXkT2qrGeRWreWOzV5FpsmF5pIWrcoug0r3bkt+H5HNaMrdqSKI
 0PKD0KblQmT16rnX+oJkhb97Vtk8jNDBiPE8KUzc9V0WvZZvEo4yDiiB7LF58+SLkyl+
 yq9WjGKuFBxL0GY/WFNeHtqMgfLH8Na5lyQAeKNXK/QuCO3ul2nJchmEFCmYa4zYmft/
 hwC6aCO/myKtlg1/L3KQAg9fGZNeal25Vhc7S7yciQLkfyzxx0kzlYG81dOIFNdU7U1y
 pEKQ==
X-Gm-Message-State: AOAM5320Xo8vES/iGBGTVCmeSZL1Lh3zLIdV/Upg3Rlau7gNZYnQziFp
 fGhCo1cmT9awn1u5kF0/cIs=
X-Google-Smtp-Source: ABdhPJyBMNpyr6O/YeNDwI+y61ms2IlKVu+yvNY5ICj6QQaRGZ22URyufC1dKc7Zr1+Qr8oBeU+AUw==
X-Received: by 2002:ac2:4db9:: with SMTP id h25mr4667412lfe.298.1631291898449; 
 Fri, 10 Sep 2021 09:38:18 -0700 (PDT)
Received: from kari-VirtualBox ([31.132.12.44])
 by smtp.gmail.com with ESMTPSA id u17sm675056lja.45.2021.09.10.09.38.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 09:38:17 -0700 (PDT)
Date: Fri, 10 Sep 2021 19:38:16 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 17/31] staging: wfx: simplify hif_join()
Message-ID: <20210910163816.jsujo3hsw7roerd5@kari-VirtualBox>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
 <20210910160504.1794332-18-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910160504.1794332-18-Jerome.Pouiller@silabs.com>
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

On Fri, Sep 10, 2021 at 06:04:50PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> The new code is smaller.
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/hif_tx.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> =

> diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
> index 6ffbae32028b..aea0ed55edc6 100644
> --- a/drivers/staging/wfx/hif_tx.c
> +++ b/drivers/staging/wfx/hif_tx.c
> @@ -306,10 +306,7 @@ int hif_join(struct wfx_vif *wvif, const struct ieee=
80211_bss_conf *conf,
>  		return -ENOMEM;
>  	body->infrastructure_bss_mode =3D !conf->ibss_joined;
>  	body->short_preamble =3D conf->use_short_preamble;
> -	if (channel->flags & IEEE80211_CHAN_NO_IR)
> -		body->probe_for_join =3D 0;
> -	else
> -		body->probe_for_join =3D 1;
> +	body->probe_for_join =3D !(channel->flags & IEEE80211_CHAN_NO_IR);

Also harder to read imo because this is negative. But I see that whole
code is made for really really really compact so maybe it's same style
as you have done in past.

>  	body->channel_number =3D channel->hw_value;
>  	body->beacon_interval =3D cpu_to_le32(conf->beacon_int);
>  	body->basic_rate_set =3D
> -- =

> 2.33.0
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
