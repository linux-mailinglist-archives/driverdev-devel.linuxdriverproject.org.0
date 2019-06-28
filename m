Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 397D45938C
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 07:41:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 44258226D3;
	Fri, 28 Jun 2019 05:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B3wYzTLYUCB0; Fri, 28 Jun 2019 05:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 637FD22624;
	Fri, 28 Jun 2019 05:41:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 235F71BF857
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 05:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1A19E86DCE
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 05:41:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BxQuViQOcm46 for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 05:41:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3041886B67
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 05:41:24 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.63,426,1557180000"; d="scan'208";a="311715816"
Received: from abo-12-105-68.mrs.modulonet.fr (HELO hadrien) ([85.68.105.12])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Jun 2019 07:41:21 +0200
Date: Fri, 28 Jun 2019 07:41:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [PATCH v2 19/27] staging: rtl8*: use zeroing allocator rather
 than allocator followed with memset 0
In-Reply-To: <20190628024935.15806-1-huangfq.daxian@gmail.com>
Message-ID: <alpine.DEB.2.21.1906280738460.2703@hadrien>
References: <20190628024935.15806-1-huangfq.daxian@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, linux-kernel@vger.kernel.org,
 Omer Efrat <omer.efrat@tandemg.com>, Julia Lawall <julia.lawall@lip6.fr>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, Mamta Shukla <mamtashukla555@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Quytelda Kahja <quytelda@tamalin.org>, Wen Yang <wen.yang99@zte.com.cn>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Fri, 28 Jun 2019, Fuqian Huang wrote:

> Use zeroing allocator rather than allocator followed with memset 0.

Maybe it would be better to just change these to the appropriate kmalloc
and kzalloc calls.

You will need to check on whether locks are held to know whether the secon
argument should be GFP_ATOMIC or GFP_KERNEL.  The current code doesn't
address this issue in a correct manner.

You may also want to add some options to your get_maintainer call to not
send patches to everyone who has ever worked on the driver.

julia

>
> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
> ---
>  drivers/staging/rtl8188eu/os_dep/mlme_linux.c     |  3 +--
>  drivers/staging/rtl8712/rtl871x_io.c              |  4 +---
>  drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  8 ++------
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 12 +++---------
>  4 files changed, 7 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
> index 9db11b16cb93..250acb01d1a9 100644
> --- a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
> +++ b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
> @@ -98,10 +98,9 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
>  	if (authmode == _WPA_IE_ID_) {
>  		RT_TRACE(_module_mlme_osdep_c_, _drv_info_,
>  			 ("rtw_report_sec_ie, authmode=%d\n", authmode));
> -		buff = rtw_malloc(IW_CUSTOM_MAX);
> +		buff = rtw_zmalloc(IW_CUSTOM_MAX);
>  		if (!buff)
>  			return;
> -		memset(buff, 0, IW_CUSTOM_MAX);
>  		p = buff;
>  		p += sprintf(p, "ASSOCINFO(ReqIEs =");
>  		len = sec_ie[1] + 2;
> diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
> index 17dafeffd6f4..87024d6a465e 100644
> --- a/drivers/staging/rtl8712/rtl871x_io.c
> +++ b/drivers/staging/rtl8712/rtl871x_io.c
> @@ -107,13 +107,11 @@ uint r8712_alloc_io_queue(struct _adapter *adapter)
>  	INIT_LIST_HEAD(&pio_queue->processing);
>  	INIT_LIST_HEAD(&pio_queue->pending);
>  	spin_lock_init(&pio_queue->lock);
> -	pio_queue->pallocated_free_ioreqs_buf = kmalloc(NUM_IOREQ *
> +	pio_queue->pallocated_free_ioreqs_buf = kzalloc(NUM_IOREQ *
>  						(sizeof(struct io_req)) + 4,
>  						GFP_ATOMIC);
>  	if ((pio_queue->pallocated_free_ioreqs_buf) == NULL)
>  		goto alloc_io_queue_fail;
> -	memset(pio_queue->pallocated_free_ioreqs_buf, 0,
> -			(NUM_IOREQ * (sizeof(struct io_req)) + 4));
>  	pio_queue->free_ioreqs_buf = pio_queue->pallocated_free_ioreqs_buf + 4
>  			- ((addr_t)(pio_queue->pallocated_free_ioreqs_buf)
>  			& 3);
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> index db553f2e4c0b..f8e0723f5d1f 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> @@ -1078,12 +1078,10 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
>  	DBG_871X("pairwise =%d\n", pairwise);
>
>  	param_len = sizeof(struct ieee_param) + params->key_len;
> -	param = rtw_malloc(param_len);
> +	param = rtw_zmalloc(param_len);
>  	if (param == NULL)
>  		return -1;
>
> -	memset(param, 0, param_len);
> -
>  	param->cmd = IEEE_CMD_SET_ENCRYPTION;
>  	memset(param->sta_addr, 0xff, ETH_ALEN);
>
> @@ -2167,15 +2165,13 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
>  		{
>  			wep_key_len = wep_key_len <= 5 ? 5 : 13;
>  			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
> -			pwep = rtw_malloc(wep_total_len);
> +			pwep = rtw_zmalloc(wep_total_len);
>  			if (pwep == NULL) {
>  				DBG_871X(" wpa_set_encryption: pwep allocate fail !!!\n");
>  				ret = -ENOMEM;
>  				goto exit;
>  			}
>
> -			memset(pwep, 0, wep_total_len);
> -
>  			pwep->KeyLength = wep_key_len;
>  			pwep->Length = wep_total_len;
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index e3d356952875..1491d420929c 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -478,14 +478,12 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
>  		if (wep_key_len > 0) {
>  			wep_key_len = wep_key_len <= 5 ? 5 : 13;
>  			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
> -			pwep = rtw_malloc(wep_total_len);
> +			pwep = rtw_zmalloc(wep_total_len);
>  			if (pwep == NULL) {
>  				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
>  				goto exit;
>  			}
>
> -			memset(pwep, 0, wep_total_len);
> -
>  			pwep->KeyLength = wep_key_len;
>  			pwep->Length = wep_total_len;
>
> @@ -2144,12 +2142,10 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
>  	int ret = 0;
>
>  	param_len = sizeof(struct ieee_param) + pext->key_len;
> -	param = rtw_malloc(param_len);
> +	param = rtw_zmalloc(param_len);
>  	if (param == NULL)
>  		return -1;
>
> -	memset(param, 0, param_len);
> -
>  	param->cmd = IEEE_CMD_SET_ENCRYPTION;
>  	memset(param->sta_addr, 0xff, ETH_ALEN);
>
> @@ -3522,14 +3518,12 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
>  		if (wep_key_len > 0) {
>  			wep_key_len = wep_key_len <= 5 ? 5 : 13;
>  			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
> -			pwep = rtw_malloc(wep_total_len);
> +			pwep = rtw_zmalloc(wep_total_len);
>  			if (pwep == NULL) {
>  				DBG_871X(" r871x_set_encryption: pwep allocate fail !!!\n");
>  				goto exit;
>  			}
>
> -			memset(pwep, 0, wep_total_len);
> -
>  			pwep->KeyLength = wep_key_len;
>  			pwep->Length = wep_total_len;
>
> --
> 2.11.0
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
