Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 047D028FC48
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 03:50:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 503B388827;
	Fri, 16 Oct 2020 01:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l--nGUDCcDtg; Fri, 16 Oct 2020 01:50:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A5FE8881B;
	Fri, 16 Oct 2020 01:50:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 187AF1BF397
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 01:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 12DCA88C08
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 01:50:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u0a5lqSyKJW9 for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 01:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3183388B60
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 01:50:38 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id 67so1813871iob.8
 for <devel@driverdev.osuosl.org>; Thu, 15 Oct 2020 18:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Lnz+3X498d+Pw84uYesLONlxmmcjlWUIkyxJu0l46jM=;
 b=rm2viusRTPBp0TJU8pgk7dKrwSZHWURw3hbfsPPeR3W1h1/UsXUEwl1ioBQI2hRXd5
 c+MohwMXmt+BxSgwzF7ygp+LFqAeVmopFAnrtD2hC99SzOgk93txz/QDDWzixmHAiYex
 yg0pxm1zvDUy6H+HTvQcDRFnwDWirlfuAUEEUlgCv7BpcO11TnNbcC6MsW6JjiDtQGCe
 9F70JUoWqvtzUAv6ztft/mNvBHokjZsYMnllOqdn+P6eM9CEMk9sPtrumniDcjOUFVLr
 qMp1+PMhFjR0XPP17eX3ddc24kmOY/CfbICHLgqVSsWO5CG1oqTDd4O07mx2XeSYKhT5
 CK4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Lnz+3X498d+Pw84uYesLONlxmmcjlWUIkyxJu0l46jM=;
 b=HgtQlMVe6dTBW573uNOSVUXtHOkYmz7Tm2mKfm+PiNW0rbkZAI60t3FmdmLrTbGAG1
 u+cFtEIDXwKmV80NJy0Xg48HYElWX++C5OEIDH/MyZBGyXcpkz/nBL0z8Hjtn1mtoq6D
 NGrfCQFyN727irM+ChEBIG/+wrbgYOQ42xMac+IYEZecut+WDGDfj3M9lZjV69ybfpH3
 NkiDvw3U0JhU1OGTPUL65Uds3J9XhZYHKELr3E8ElBPf3WZHzL1dTZE53V17AV0awCn1
 xhsLxlmm32Gmhf388arRQCJPj0aAXQ8yHGUroj0QcOE+r4sz1erJdx5Rq8KyN3lF3sCu
 +Fsg==
X-Gm-Message-State: AOAM5302cDzmt+in7VbIg29WKdLmXU3FegJHQkz14BKhHOpBvMtYFFph
 1Sbd1YrR9Dcz39XNJtwnbX0=
X-Google-Smtp-Source: ABdhPJw58WzznEotpeyXbMPb7MnVHRD71RKnqhwSc4tdNfgdfsbrRRLZ/GSpcwJWk/nqYlTFXz2iEA==
X-Received: by 2002:a6b:9243:: with SMTP id u64mr711338iod.197.1602813037247; 
 Thu, 15 Oct 2020 18:50:37 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
 by smtp.gmail.com with ESMTPSA id s17sm793793ioa.38.2020.10.15.18.50.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Oct 2020 18:50:36 -0700 (PDT)
Date: Thu, 15 Oct 2020 18:50:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 8/8] staging: wfx: improve robustness of wfx_get_hw_rate()
Message-ID: <20201016015034.GA2122229@ubuntu-m3-large-x86>
References: <20201009171307.864608-1-Jerome.Pouiller@silabs.com>
 <20201009171307.864608-9-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009171307.864608-9-Jerome.Pouiller@silabs.com>
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
 Dan Carpenter <dan.carpenter@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 09, 2020 at 07:13:07PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Smatch complains:
> =

>     data_tx.c:37 wfx_get_hw_rate() warn: constraint '(struct ieee80211_su=
pported_band)->bitrates' overflow 'band->bitrates' 0 <=3D abs_rl '0-127' us=
er_rl '' required =3D '(struct ieee80211_supported_band)->n_bitrates'
>     23          struct ieee80211_supported_band *band;
>     24
>     25          if (rate->idx < 0)
>     26                  return -1;
>     27          if (rate->flags & IEEE80211_TX_RC_MCS) {
>     28                  if (rate->idx > 7) {
>     29                          WARN(1, "wrong rate->idx value: %d", rate=
->idx);
>     30                          return -1;
>     31                  }
>     32                  return rate->idx + 14;
>     33          }
>     34          // WFx only support 2GHz, else band information should be=
 retrieved
>     35          // from ieee80211_tx_info
>     36          band =3D wdev->hw->wiphy->bands[NL80211_BAND_2GHZ];
>     37          return band->bitrates[rate->idx].hw_value;
> =

> Add a simple check to make Smatch happy.
> =

> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/data_tx.c | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index 8db0be08daf8..41f6a604a697 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -31,6 +31,10 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
>  		}
>  		return rate->idx + 14;
>  	}
> +	if (rate->idx >=3D band->n_bitrates) {
> +		WARN(1, "wrong rate->idx value: %d", rate->idx);
> +		return -1;
> +	}
>  	// WFx only support 2GHz, else band information should be retrieved
>  	// from ieee80211_tx_info
>  	band =3D wdev->hw->wiphy->bands[NL80211_BAND_2GHZ];
> -- =

> 2.28.0
> =


This now causes a clang warning:

drivers/staging/wfx/data_tx.c:34:19: warning: variable 'band' is uninitiali=
zed when used here [-Wuninitialized]
        if (rate->idx >=3D band->n_bitrates) {
                         ^~~~
drivers/staging/wfx/data_tx.c:23:39: note: initialize the variable 'band' t=
o silence this warning
        struct ieee80211_supported_band *band;
                                             ^
                                              =3D NULL
1 warning generated.

Cheers,
Nathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
