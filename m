Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 232F58A170
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 16:46:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4C12621532;
	Mon, 12 Aug 2019 14:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ot+-qB-qiL0f; Mon, 12 Aug 2019 14:46:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1749820475;
	Mon, 12 Aug 2019 14:46:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9EE91BF2C1
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 14:46:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C4ADC814CA
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 14:46:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TV7pie3Q3zJP for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 14:46:04 +0000 (UTC)
X-Greylist: delayed 00:05:27 by SQLgrey-1.7.6
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D4ED7811D6
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 14:46:03 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id ECD1D21FF3;
 Mon, 12 Aug 2019 10:40:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 12 Aug 2019 10:40:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=Hhz1BfcpBOAY93npn7Q2lgRWuA/
 QS0kK12qFQN2lyfA=; b=GA5axlCc+dW2A9oUx6Sf5OZ42LOOjEoYyEKgL6o+y8l
 YI9ylTCyfDiBjtY+9m24RO9sNn4YOpytu9sjux46u1RxX1+pdnitB1g6l4F1glIa
 rKpYEwQyC532VF95+eSpU83/3NOyqkP5ogAUohBvKV5Nibsjzl74q8f3X6fbH88E
 HdGurOQUDLZ2tvKMscrH8e6VuQONhsCkQWlZ+GFKsjOB53h9Botjj4xGVy1mXSig
 AO1iyE+N2OHKmbWTeHBruigW9F5oxwv7n3iKuEo/HQYqG9/qNDBf/jsTreV89m2e
 RYivPMlemK9CuZVW5PxK124hUwN8VOmPSzumX5APr7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Hhz1Bf
 cpBOAY93npn7Q2lgRWuA/QS0kK12qFQN2lyfA=; b=hy2B1AB+crtyLVe2UjCLaR
 DIrAOZD/jj1d8EZzToAoWS83996E8702ue4Z6aTXe8OZK1pHyZ8AdsWMt5TT9TZA
 R1SRE36ddZQYd5b4fZ1/qZmeM6lcW/roaDCfqv3yMxVZXvEpysPGI9/qV6So9vbQ
 LxKUtxAgHZsqljFigo3RqMaERCOSvTDTBumbhvLqg7fopo5J8YZW6VXOikaQN4wu
 dP3zO+gflJj188HIE/3oLh/+JhDYRbVW7TOBjGjfK83ehW2l4moX4usnOfhZSfxa
 sGEXwlX/at0vyGhbrUucOZbjGuii+RYtdrI3WOcWK3Lwx19vjQMDIBeZtZSkahuQ
 ==
X-ME-Sender: <xms:YnpRXRsfnqE0uAqMGdw0LrKgi-YJBAe7zfMrwBW397FHsUC51M-muQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddvgedgkedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
 ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
 dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
 vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:YnpRXekiH7EbFyEndrM8Lgl4sn8UX--MF7mona17uoQOikKyeQg_wA>
 <xmx:YnpRXRzyr-ns1ktLhcUtoaGDTGoLLuKG9Z3_IC2hRIX3D0oRVj7AYw>
 <xmx:YnpRXSzaINDy8Y6DVSvr563qOqYAc4o6PMFNcyKpP3jwSnAbxaNjLA>
 <xmx:YnpRXU0vyXnjY_dU5r5hpvaOqGYZG7ByS9GuR1bRk900ycOHdR6U0A>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id CC9908005B;
 Mon, 12 Aug 2019 10:40:33 -0400 (EDT)
Date: Mon, 12 Aug 2019 16:40:31 +0200
From: Greg KH <greg@kroah.com>
To: Hugo Eduardo Ziviani <hugoziviani@gmail.com>
Subject: Re: [PATCH] staging: drivers: rtl8712: removing unnecessary
 parenthesis
Message-ID: <20190812144031.GA11673@kroah.com>
References: <20190810031823.14033-1-hugoziviani@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190810031823.14033-1-hugoziviani@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 09, 2019 at 11:18:23PM -0400, Hugo Eduardo Ziviani wrote:
> Fix checkpatch error "CHECK: Remove unecessary parenthesis in drivers/staging/rtl8712/rtl871x_mlme.c"
> 
> Signed-off-by: Hugo Eduardo Ziviani <hugoziviani@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 89 +++++++++++++-------------
>  1 file changed, 44 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index b34f9919cd93..cddb24242ace 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -45,9 +45,9 @@ int r8712_init_mlme_priv(struct _adapter *padapter)
>  	/* Maybe someday we should rename this variable to "active_mode"(Jeff)*/
>  	pmlmepriv->passive_mode = 1; /* 1: active, 0: passive. */
>  	spin_lock_init(&pmlmepriv->lock);
> -	spin_lock_init(&(pmlmepriv->lock2));
> -	_init_queue(&(pmlmepriv->free_bss_pool));
> -	_init_queue(&(pmlmepriv->scanned_queue));
> +	spin_lock_init(&pmlmepriv->lock2);
> +	_init_queue(&pmlmepriv->free_bss_pool);
> +	_init_queue(&pmlmepriv->scanned_queue);
>  	set_scanned_network_val(pmlmepriv, 0);
>  	memset(&pmlmepriv->assoc_ssid, 0, sizeof(struct ndis_802_11_ssid));
>  	pbuf = kmalloc_array(MAX_BSS_CNT, sizeof(struct wlan_network),
> @@ -57,9 +57,9 @@ int r8712_init_mlme_priv(struct _adapter *padapter)
>  	pmlmepriv->free_bss_buf = pbuf;
>  	pnetwork = (struct wlan_network *)pbuf;
>  	for (i = 0; i < MAX_BSS_CNT; i++) {
> -		INIT_LIST_HEAD(&(pnetwork->list));
> -		list_add_tail(&(pnetwork->list),
> -				 &(pmlmepriv->free_bss_pool.queue));
> +		INIT_LIST_HEAD(&pnetwork->list);
> +		list_add_tail(&pnetwork->list,
> +				&pmlmepriv->free_bss_pool.queue);
>  		pnetwork++;
>  	}
>  	pmlmepriv->sitesurveyctrl.last_rx_pkts = 0;
> @@ -93,7 +93,7 @@ static void _free_network(struct mlme_priv *pmlmepriv,
>  {
>  	u32 curr_time, delta_time;
>  	unsigned long irqL;
> -	struct  __queue *free_queue = &(pmlmepriv->free_bss_pool);
> +	struct  __queue *free_queue = &pmlmepriv->free_bss_pool;
>  
>  	if (!pnetwork)
>  		return;
> @@ -220,8 +220,8 @@ int r8712_is_same_ibss(struct _adapter *adapter, struct wlan_network *pnetwork)
>  	int ret = true;
>  	struct security_priv *psecuritypriv = &adapter->securitypriv;
>  
> -	if ((psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_) &&
> -		    (pnetwork->network.Privacy == cpu_to_le32(0)))
> +	if (psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_ &&
> +	    pnetwork->network.Privacy == cpu_to_le32(0))
>  		ret = false;
>  	else if ((psecuritypriv->PrivacyAlgrthm == _NO_PRIVACY_) &&
>  		 (pnetwork->network.Privacy == cpu_to_le32(1)))
> @@ -286,7 +286,7 @@ static void update_network(struct wlan_bssid_ex *dst,
>  	struct smooth_rssi_data *sqd = &padapter->recvpriv.signal_qual_data;
>  
>  	if (check_fwstate(&padapter->mlmepriv, _FW_LINKED) &&
> -	    is_same_network(&(padapter->mlmepriv.cur_network.network), src)) {
> +	    is_same_network(&padapter->mlmepriv.cur_network.network, src)) {
>  		if (padapter->recvpriv.signal_qual_data.total_num++ >=
>  		    PHY_LINKQUALITY_SLID_WIN_MAX) {
>  			padapter->recvpriv.signal_qual_data.total_num =
> @@ -318,8 +318,8 @@ static void update_current_network(struct _adapter *adapter,
>  {
>  	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
>  
> -	if (is_same_network(&(pmlmepriv->cur_network.network), pnetwork)) {
> -		update_network(&(pmlmepriv->cur_network.network),
> +	if (is_same_network(&pmlmepriv->cur_network.network, pnetwork)) {
> +		update_network(&pmlmepriv->cur_network.network,
>  			       pnetwork, adapter);
>  		r8712_update_protection(adapter,
>  			       (pmlmepriv->cur_network.network.IEs) +
> @@ -428,8 +428,8 @@ static int is_desired_network(struct _adapter *adapter,
>  			return true;
>  		return false;
>  	}
> -	if ((psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_) &&
> -		    (pnetwork->network.Privacy == 0))
> +	if (psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_ &&
> +	    pnetwork->network.Privacy == 0)
>  		bselected = false;
>  	if (check_fwstate(&adapter->mlmepriv, WIFI_ADHOC_STATE)) {
>  		if (pnetwork->network.InfrastructureMode !=
> @@ -486,7 +486,7 @@ void r8712_survey_event_callback(struct _adapter *adapter, u8 *pbuf)
>  	spin_lock_irqsave(&pmlmepriv->lock2, flags);
>  	/* update IBSS_network 's timestamp */
>  	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
> -		if (!memcmp(&(pmlmepriv->cur_network.network.MacAddress),
> +		if (!memcmp(&pmlmepriv->cur_network.network.MacAddress,
>  		    pnetwork->MacAddress, ETH_ALEN)) {
>  			struct wlan_network *ibss_wlan = NULL;
>  
> @@ -539,7 +539,7 @@ void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
>  						  msecs_to_jiffies(MAX_JOIN_TIMEOUT));
>  				} else {
>  					struct wlan_bssid_ex *pdev_network =
> -					  &(adapter->registrypriv.dev_network);
> +					&adapter->registrypriv.dev_network;
>  					u8 *pibss =
>  						 adapter->registrypriv.
>  							dev_network.MacAddress;
> @@ -600,11 +600,10 @@ void r8712_free_assoc_resources(struct _adapter *adapter)
>  	if (pwlan)
>  		pwlan->fixed = false;
>  
> -	if (((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) &&
> -	     (adapter->stapriv.asoc_sta_count == 1)))
> +	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)
> +	    && adapter->stapriv.asoc_sta_count == 1)
>  		free_network_nolock(pmlmepriv, pwlan);
>  }
> -
>  /*
>   * r8712_indicate_connect: the caller has to lock pmlmepriv->lock
>   */

That last change there is not a () "fix", nor should that change have
been made.

Please fix your patch up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
