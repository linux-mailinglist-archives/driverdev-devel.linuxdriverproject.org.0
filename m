Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEF54C802C
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Mar 2022 02:12:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E777882553;
	Tue,  1 Mar 2022 01:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U30yV6kzbX_j; Tue,  1 Mar 2022 01:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FB5F8254D;
	Tue,  1 Mar 2022 01:12:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EF031BF2E5
 for <devel@linuxdriverproject.org>; Tue,  1 Mar 2022 01:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C969410CF
 for <devel@linuxdriverproject.org>; Tue,  1 Mar 2022 01:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6w8Oz5xs2FV0 for <devel@linuxdriverproject.org>;
 Tue,  1 Mar 2022 01:12:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from relay4.hostedemail.com (relay4.hostedemail.com [64.99.140.36])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B5949410CB
 for <devel@driverdev.osuosl.org>; Tue,  1 Mar 2022 01:12:37 +0000 (UTC)
Received: from omf06.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay10.hostedemail.com (Postfix) with ESMTP id EB8C16D7;
 Tue,  1 Mar 2022 01:12:35 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf06.hostedemail.com (Postfix) with ESMTPA id 77B9F20015; 
 Tue,  1 Mar 2022 01:12:29 +0000 (UTC)
Message-ID: <fe3c21a9c0178a2f0fcea698b8e6405a99747dea.camel@perches.com>
Subject: Re: [PATCH 03/10] staging: wfx: format comments on 100 columns
From: Joe Perches <joe@perches.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>, 
 linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>
Date: Mon, 28 Feb 2022 17:12:28 -0800
In-Reply-To: <20220225112405.355599-4-Jerome.Pouiller@silabs.com>
References: <20220225112405.355599-1-Jerome.Pouiller@silabs.com>
 <20220225112405.355599-4-Jerome.Pouiller@silabs.com>
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
X-Stat-Signature: 77muhtja19n3dsratymaanib3ctsb9fr
X-Rspamd-Server: rspamout07
X-Rspamd-Queue-Id: 77B9F20015
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18rc9SVD0a5kXusMoMzjYsxOtCG3ORwyWA=
X-HE-Tag: 1646097149-871435
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
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2022-02-25 at 12:23 +0100, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> A few comments were not yet formatted on 100 columns.

IMO, none of these changes are necessary or good changes.

80 columns is preferred.

Really comments should most always use 80 columns, and
only occasionally should code be more than 80 columns
and almost never should code be more than 100 columns.

> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
[]
> @@ -117,9 +117,7 @@ static int wfx_tx_policy_get(struct wfx_vif *wvif, st=
ruct ieee80211_tx_rate *rat
>  	if (idx >=3D 0) {
>  		*renew =3D false;
>  	} else {
> -		/* If policy is not found create a new one using the oldest
> -		 * entry in "free" list
> -		 */
> +		/* If policy is not found create a new one using the oldest entry in "=
free" list */
>  		*renew =3D true;
>  		entry =3D list_entry(cache->free.prev, struct wfx_tx_policy, link);
>  		memcpy(entry->rates, wanted.rates, sizeof(entry->rates));
> @@ -494,9 +492,7 @@ void wfx_tx_confirm_cb(struct wfx_dev *wdev, const st=
ruct wfx_hif_cnf_tx *arg)
>  	wfx_tx_fill_rates(wdev, tx_info, arg);
>  	skb_trim(skb, skb->len - tx_priv->icv_size);
>  =

> -	/* From now, you can touch to tx_info->status, but do not touch to
> -	 * tx_priv anymore
> -	 */
> +	/* From now, you can touch to tx_info->status, but do not touch to tx_p=
riv anymore */
>  	/* FIXME: use ieee80211_tx_info_clear_status() */
>  	memset(tx_info->rate_driver_data, 0, sizeof(tx_info->rate_driver_data));
>  	memset(tx_info->pad, 0, sizeof(tx_info->pad));
> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
[]
> @@ -210,8 +210,8 @@ bool wfx_tx_queues_has_cab(struct wfx_vif *wvif)
>  	if (wvif->vif->type !=3D NL80211_IFTYPE_AP)
>  		return false;
>  	for (i =3D 0; i < IEEE80211_NUM_ACS; ++i)
> -		/* Note: since only AP can have mcast frames in queue and only
> -		 * one vif can be AP, all queued frames has same interface id
> +		/* Note: since only AP can have mcast frames in queue and only one vif=
 can be AP,
> +		 * all queued frames has same interface id
>  		 */
>  		if (!skb_queue_empty_lockless(&wvif->tx_queue[i].cab))
>  			return true;
> @@ -253,9 +253,8 @@ static struct sk_buff *wfx_tx_queues_get_skb(struct w=
fx_dev *wdev)
>  			skb =3D skb_dequeue(&queues[i]->cab);
>  			if (!skb)
>  				continue;
> -			/* Note: since only AP can have mcast frames in queue
> -			 * and only one vif can be AP, all queued frames has
> -			 * same interface id
> +			/* Note: since only AP can have mcast frames in queue and only one vi=
f can
> +			 * be AP, all queued frames has same interface id
>  			 */
>  			hif =3D (struct wfx_hif_msg *)skb->data;
>  			WARN_ON(hif->interface !=3D wvif->id);


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
