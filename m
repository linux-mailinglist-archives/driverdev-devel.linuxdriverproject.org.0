Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA8B122A9D
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 12:52:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4FF7B204F7;
	Tue, 17 Dec 2019 11:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id atiTzMjiQV78; Tue, 17 Dec 2019 11:52:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF0EE204D9;
	Tue, 17 Dec 2019 11:52:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2556C1BF3D4
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 11:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2213686489
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 11:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N1BJmtO0txhw for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 11:52:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C06D863D0
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 11:52:14 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 964BD207FF;
 Tue, 17 Dec 2019 11:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576583534;
 bh=1AdLHnqErijx33avBgn6nsFRo0kuqiryDUYljqP/3jI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KTtQaTC/9A/+UYJTjNm3BKoz9PLTc8myT9PNS/FYN7LSu4JsYJDP2ltvueBK0w6rc
 yxndCMGngKSXhzv06wtzw8UjHs1/yNA8WXQjrhvtK+nji3vEJ3ls89BRi8SNut+HVq
 p0r6ZeH2YWmEqBMfpHYJhKqOZvoirlRWTfVlWayo=
Date: Tue, 17 Dec 2019 12:52:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 01/55] staging: wfx: fix the cache of rate policies on
 interface reset
Message-ID: <20191217115211.GA3141324@kroah.com>
References: <20191216170302.29543-1-Jerome.Pouiller@silabs.com>
 <20191216170302.29543-2-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216170302.29543-2-Jerome.Pouiller@silabs.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 16, 2019 at 05:03:33PM +0000, J=E9r=F4me Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Device and driver maintain a cache of rate policies (aka.
> tx_retry_policy in hardware API).
> =

> When hif_reset() is sent to hardware, device resets its cache of rate
> policies. In order to keep driver in sync, it is necessary to do the
> same on driver.
> =

> Note, when driver tries to use a rate policy that has not been defined
> on device, data is sent at 1Mbps. So, this patch should fix abnormal
> throughput observed sometime after a reset of the interface.
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/data_tx.c | 3 +--
>  drivers/staging/wfx/data_tx.h | 1 +
>  drivers/staging/wfx/sta.c     | 6 +++++-
>  3 files changed, 7 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index b722e9773232..02f001dab62b 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -249,7 +249,7 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
>  	return 0;
>  }
>  =

> -static void wfx_tx_policy_upload_work(struct work_struct *work)
> +void wfx_tx_policy_upload_work(struct work_struct *work)
>  {
>  	struct wfx_vif *wvif =3D
>  		container_of(work, struct wfx_vif, tx_policy_upload_work);
> @@ -270,7 +270,6 @@ void wfx_tx_policy_init(struct wfx_vif *wvif)
>  	spin_lock_init(&cache->lock);
>  	INIT_LIST_HEAD(&cache->used);
>  	INIT_LIST_HEAD(&cache->free);
> -	INIT_WORK(&wvif->tx_policy_upload_work, wfx_tx_policy_upload_work);
>  =

>  	for (i =3D 0; i < HIF_MIB_NUM_TX_RATE_RETRY_POLICIES; ++i)
>  		list_add(&cache->cache[i].link, &cache->free);
> diff --git a/drivers/staging/wfx/data_tx.h b/drivers/staging/wfx/data_tx.h
> index 29faa5640516..a0f9ae69baf5 100644
> --- a/drivers/staging/wfx/data_tx.h
> +++ b/drivers/staging/wfx/data_tx.h
> @@ -61,6 +61,7 @@ struct wfx_tx_priv {
>  } __packed;
>  =

>  void wfx_tx_policy_init(struct wfx_vif *wvif);
> +void wfx_tx_policy_upload_work(struct work_struct *work);
>  =

>  void wfx_tx(struct ieee80211_hw *hw, struct ieee80211_tx_control *contro=
l,
>  	    struct sk_buff *skb);
> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 29848a202ab4..471dd15b227f 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -592,6 +592,7 @@ static void wfx_do_unjoin(struct wfx_vif *wvif)
>  	wfx_tx_flush(wvif->wdev);
>  	hif_keep_alive_period(wvif, 0);
>  	hif_reset(wvif, false);
> +	wfx_tx_policy_init(wvif);
>  	hif_set_output_power(wvif, wvif->wdev->output_power * 10);
>  	wvif->dtim_period =3D 0;
>  	hif_set_macaddr(wvif, wvif->vif->addr);
> @@ -880,8 +881,10 @@ static int wfx_update_beaconing(struct wfx_vif *wvif)
>  		if (wvif->state !=3D WFX_STATE_AP ||
>  		    wvif->beacon_int !=3D conf->beacon_int) {
>  			wfx_tx_lock_flush(wvif->wdev);
> -			if (wvif->state !=3D WFX_STATE_PASSIVE)
> +			if (wvif->state !=3D WFX_STATE_PASSIVE) {
>  				hif_reset(wvif, false);
> +				wfx_tx_policy_init(wvif);
> +			}
>  			wvif->state =3D WFX_STATE_PASSIVE;
>  			wfx_start_ap(wvif);
>  			wfx_tx_unlock(wvif->wdev);
> @@ -1567,6 +1570,7 @@ int wfx_add_interface(struct ieee80211_hw *hw, stru=
ct ieee80211_vif *vif)
>  	INIT_WORK(&wvif->set_cts_work, wfx_set_cts_work);
>  	INIT_WORK(&wvif->unjoin_work, wfx_unjoin_work);
>  =

> +	INIT_WORK(&wvif->tx_policy_upload_work, wfx_tx_policy_upload_work);
>  	mutex_unlock(&wdev->conf_mutex);
>  =

>  	hif_set_macaddr(wvif, vif->addr);

Meta-comment here.

I've been having to hand-edit your patches to get them to be able to
apply so far, which is fine for 1-10 patches at a time, but when staring
down a 55-patch series, that's not ok for my end.

The problem is that your email client is turning everything into base64
text.  On it's own, that's fine, but when doing so it turns the
line-ends from unix ones, into dos line-ends.  So, when git decodes the
base64 text into "plain text" the patch obviously does not apply due to
the line-ends not matching up.

Any chance you can fix your email client to not convert the line-ends?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
