Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D71C33094
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 15:06:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46537879FD;
	Mon,  3 Jun 2019 13:06:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aalgQJltWzxW; Mon,  3 Jun 2019 13:06:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C14A38790F;
	Mon,  3 Jun 2019 13:06:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B86ED1BF4D6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 13:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B445F2210F
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 13:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h-rd0tcez63g for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 13:06:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C5E77220EF
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 13:06:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BE2627FD9;
 Mon,  3 Jun 2019 13:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559567199;
 bh=u/EU9dtGqWBptP124xbcl8Ga7MudpimrUE9Y+1d6JO4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dj9/2BsPf9OJ/Ci9oJOwpWI84f9QDsmruXpzTpeanJEz2z2zpk3RzGvEqyDEkxAx8
 sXZ2JQoyqaJxHFOBStI9YLXGLw974a/3ZV1/k8kRJFCT6g5H31tK222Q+g4Zs/3LKE
 wr/9FDeU60B7MxYw56fTLj+G8kMhn3b7euDVGDOw=
Date: Mon, 3 Jun 2019 15:06:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian =?iso-8859-1?Q?M=FCller?= <muellerch-privat@web.de>
Subject: Re: [PATCH 2/3] drivers/staging/rtl8192u: Remove comment-out code
Message-ID: <20190603130637.GC30732@kroah.com>
References: <20190603122104.2564-1-muellerch-privat@web.de>
 <20190603122104.2564-3-muellerch-privat@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603122104.2564-3-muellerch-privat@web.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, felix.trommer@hotmail.de,
 linux-kernel@vger.kernel.org, johnfwhitmore@gmail.com,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 03, 2019 at 02:21:03PM +0200, Christian M=FCller wrote:
> From: Felix Trommer <felix.trommer@hotmail.de>
> =

> Remove the majority of all commented-out code. Commented out code, that
> was adressed by a comment itself is not removed. The code that we left
> in as comments was mostly due to the "pseudo-code"-like nature of the
> code that helped to clarify certain functionalities.
> =

> Signed-off-by: Felix Trommer <felix.trommer@hotmail.de>
> Signed-off-by: Christian M=FCller <muellerch-privat@web.de>
> ---
>  drivers/staging/rtl8192u/ieee80211/dot11d.h   |  2 +-
>  .../staging/rtl8192u/ieee80211/ieee80211.h    | 35 ++-----
>  .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c |  1 -
>  .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c |  1 -
>  .../rtl8192u/ieee80211/ieee80211_module.c     |  2 -
>  .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 50 +---------
>  .../rtl8192u/ieee80211/ieee80211_softmac.c    | 93 +++----------------
>  .../rtl8192u/ieee80211/ieee80211_softmac_wx.c | 13 +--
>  .../staging/rtl8192u/ieee80211/ieee80211_tx.c |  3 +-
>  .../staging/rtl8192u/ieee80211/ieee80211_wx.c | 19 +---
>  .../rtl8192u/ieee80211/rtl819x_BAProc.c       |  3 -
>  .../staging/rtl8192u/ieee80211/rtl819x_HT.h   |  2 -
>  .../rtl8192u/ieee80211/rtl819x_HTProc.c       | 54 ++---------
>  .../staging/rtl8192u/ieee80211/rtl819x_Qos.h  |  4 +-
>  .../rtl8192u/ieee80211/rtl819x_TSProc.c       | 11 ---
>  drivers/staging/rtl8192u/r8190_rtl8256.c      |  3 -
>  drivers/staging/rtl8192u/r8192U_core.c        |  5 +-
>  drivers/staging/rtl8192u/r8192U_dm.c          | 60 ------------
>  drivers/staging/rtl8192u/r8192U_wx.c          |  2 -
>  drivers/staging/rtl8192u/r819xU_firmware.c    |  1 -
>  20 files changed, 38 insertions(+), 326 deletions(-)
> =

> diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.h b/drivers/stagin=
g/rtl8192u/ieee80211/dot11d.h
> index 8b485fa18089..f27267307b3f 100644
> --- a/drivers/staging/rtl8192u/ieee80211/dot11d.h
> +++ b/drivers/staging/rtl8192u/ieee80211/dot11d.h
> @@ -54,4 +54,4 @@ void dot11d_scan_complete(struct ieee80211_device *dev);
>  int is_legal_channel(struct ieee80211_device *dev, u8 channel);
>  int to_legal_channel(struct ieee80211_device *dev, u8 channel);
> =

> -#endif /* #ifndef __INC_DOT11D_H */
> +#endif

This type of comment is there for a good reason :(


> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/sta=
ging/rtl8192u/ieee80211/ieee80211.h
> index 8be8a94a2253..d110e9333799 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -106,17 +106,13 @@ struct cb_desc {
>  	u8 bRTSUseShortGI:1;
>  	u8 bMulticast:1;
>  	u8 bBroadcast:1;
> -	/* u8 reserved2:2; */
>  	u8 drv_agg_enable:1;
>  	u8 reserved2:1;
> =

>  	/* Tx Desc related element(12-19) */
>  	u8 rata_index;
>  	u8 queue_index;
> -	/* u8 reserved3; */
> -	/* u8 reserved4; */
>  	u16 txbuf_size;
> -	/* u8 reserved5; */
>  	u8 RATRIndex;
>  	u8 reserved6;
>  	u8 reserved7;
> @@ -127,9 +123,6 @@ struct cb_desc {
>  	u8 rts_rate;
>  	u8 ampdu_factor;
>  	u8 ampdu_density;
> -	/* u8 reserved9; */
> -	/* u8 reserved10; */
> -	/* u8 reserved11; */
>  	u8 DrvAggrNum;
>  	u16 pkt_size;
>  	u8 reserved12;
> @@ -883,7 +876,8 @@ enum ieee80211_mfie {
>  	MFIE_TYPE_QOS_PARAMETER =3D 222,
>  };
> =

> -/* Minimal header; can be used for passing 802.11 frames with sufficient
> +/*
> + * Minimal header; can be used for passing 802.11 frames with sufficient
>   * information to determine what type of underlying data type is actually
>   * stored in the data.
>   */

That change is not removing commented out code :(

Please be a lot more careful as to what you are doing in a patch when
you submit it...

> @@ -1144,7 +1138,6 @@ struct ieee80211_tim_parameters {
>  	u8 tim_period;
>  } __packed;
> =

> -//#else
>  struct ieee80211_wmm_ts_info {
>  	u8 ac_dir_tid;
>  	u8 ac_up_psb;
> @@ -1274,7 +1267,6 @@ enum {WMM_all_frame, WMM_two_frame, WMM_four_frame,=
 WMM_six_frame};
>  #define IEEE80211_PS_MBCAST IEEE80211_DTIM_MBCAST
> =

>  /* added by David for QoS 2006/6/30 */
> -//#define WMM_Hang_8187
>  #ifdef WMM_Hang_8187
>  #undef WMM_Hang_8187
>  #endif

Are you sure you should remove this commented out line?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
