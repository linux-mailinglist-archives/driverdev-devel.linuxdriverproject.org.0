Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F423406FAF
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 18:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA20040625;
	Fri, 10 Sep 2021 16:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TpEa8LPIoBh6; Fri, 10 Sep 2021 16:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 034AE40277;
	Fri, 10 Sep 2021 16:31:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4861A1BF2C7
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:31:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3869881959
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bmAbZnIOfn_4 for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 16:31:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5033F8194A
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 16:31:04 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id l11so5216796lfe.1
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 09:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ot1wSZknEFAuaHQCHHkAEUFlBeAHkhZrdgLFIvcXlmk=;
 b=YQrbyos8oQHIQq79OeYPJpMki7YOoCkZuXxuwup0PtJKdXZmTeX2Ci7KCOEzz31nVA
 o8p+ItoM3f2yfB/8cH6Js/dPSNABYFBbfZJo6lfd5MLvvHXfJ7EFvAA+GE1xn/NCXsxj
 Z4TxCOgs8S4jGIQg34rKT+Qtf2hxKr5FOY1k3eM+h1ekEnkvN/1FdUVsUBEHHyC3XizW
 1brftKIg0TGz3Ag5M6jVYtfWacjHW0llc/n5PqG+04po2N3/0ZG1Ho9T5msccZiHDhIG
 lncKCv8jljzHAbU1PNwS7i13AikiVRMCl8gtaahmUSd3zY2W/VQ9HSczX2wEFp7SVZ9l
 X1oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ot1wSZknEFAuaHQCHHkAEUFlBeAHkhZrdgLFIvcXlmk=;
 b=ReUOBQ48RyfdiejAa3MjC4owg8AB0LUAoQ46csT4zkOE8Xd/yoNLdfnqloZbXZzlsj
 DyMb1EmT8sAJAxH1+sIObz9PX4kNA4uwHFtzfmF/Gz7MqtkCYz/f0mTENaJEuPvaT77W
 vV1zb+QvEa55R87R5+2sV/5XdoXDwhmQljlnbIl8rRbDSsl/GTNybD2y4YD/BZpK7Gvj
 dZzjNNytyUzcoEtJ5v2g8Ub3civpYmhvFRe7qX4nEmOBET6V46Kj0wfp+KwOovYd+MOF
 BHDYjyPaPtbZZzjODlSkSXjBaNbG8bfSmIdGDVqnfjedve60rTJ4N15IgodbkTRRvEbP
 35xw==
X-Gm-Message-State: AOAM531b4uI+56Ev7NkCqiLUrG8BvjDoDXqeIDia+Xa6hP8tKaJbGTMW
 ID+vdBNCAXlvzJF6dysQwx4=
X-Google-Smtp-Source: ABdhPJyLJq/n5tDgmoSNyoxi0vyV5yRV5AzjRZsVCyBwOC99pA8skIvBmgdquk/abLv14Sl6ZqR4Vw==
X-Received: by 2002:a05:6512:687:: with SMTP id
 t7mr4310506lfe.399.1631291462283; 
 Fri, 10 Sep 2021 09:31:02 -0700 (PDT)
Received: from kari-VirtualBox ([31.132.12.44])
 by smtp.gmail.com with ESMTPSA id c19sm640666ljn.75.2021.09.10.09.31.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 09:31:01 -0700 (PDT)
Date: Fri, 10 Sep 2021 19:31:00 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 02/31] staging: wfx: do not send CAB while scanning
Message-ID: <20210910163100.n6ltzn543f2mnggy@kari-VirtualBox>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
 <20210910160504.1794332-3-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910160504.1794332-3-Jerome.Pouiller@silabs.com>
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

On Fri, Sep 10, 2021 at 06:04:35PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> During the scan requests, the Tx traffic is suspended. This lock is
> shared by all the network interfaces. So, a scan request on one
> interface will block the traffic on a second interface. This causes
> trouble when the queued traffic contains CAB (Content After DTIM Beacon)
> since this traffic cannot be delayed.
> =

> It could be possible to make the lock local to each interface. But It
> would only push the problem further. The device won't be able to send
> the CAB before the end of the scan.
> =

> So, this patch just ignore the DTIM indication when a scan is in
> progress. The firmware will send another indication on the next DTIM and
> this time the system will be able to send the traffic just behind the
> beacon.
> =

> The only drawback of this solution is that the stations connected to
> the AP will wait for traffic after the DTIM for nothing. But since the
> case is really rare it is not a big deal.
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/sta.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> =

> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index a236e5bb6914..d901588237a4 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -629,8 +629,18 @@ int wfx_set_tim(struct ieee80211_hw *hw, struct ieee=
80211_sta *sta, bool set)
>  =

>  void wfx_suspend_resume_mc(struct wfx_vif *wvif, enum sta_notify_cmd not=
ify_cmd)
>  {
> +	struct wfx_vif *wvif_it;
> +
>  	if (notify_cmd !=3D STA_NOTIFY_AWAKE)
>  		return;
> +
> +	// Device won't be able to honor CAB if a scan is in progress on any
> +	// interface. Prefer to skip this DTIM and wait for the next one.

In one patch you drop // comments but you introduce some of your self.

> +	wvif_it =3D NULL;
> +	while ((wvif_it =3D wvif_iterate(wvif->wdev, wvif_it)) !=3D NULL)
> +		if (mutex_is_locked(&wvif_it->scan_lock))
> +			return;
> +
>  	if (!wfx_tx_queues_has_cab(wvif) || wvif->after_dtim_tx_allowed)
>  		dev_warn(wvif->wdev->dev, "incorrect sequence (%d CAB in queue)",
>  			 wfx_tx_queues_has_cab(wvif));
> -- =

> 2.33.0
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
