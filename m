Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FB722F5D
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0381722721;
	Mon, 20 May 2019 08:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3KtX70gx9Boe; Mon, 20 May 2019 08:53:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9D668226C2;
	Mon, 20 May 2019 08:53:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 943131BF2EF
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:53:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 919982261A
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:53:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BZ9ttkkLwBa8 for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:53:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 26659221D2
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:53:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87FD8204FD;
 Mon, 20 May 2019 08:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558342400;
 bh=Gzdv2G9YQ9dpAcYx/XvqRPmHwUG7jB3vlOP7A7rqhvw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gCkQ3Z4lwefkORcLgEFSbGwbj/n7JSpCcbVxZpadh9vkcMEKG1enRAbFz0rtz5jC1
 j16rTI4r9UWWr4H5yAdt6riJYg3bhm5Djc9jh/al+n6NdLGodXtiKoCakXNbCXNIvu
 KYisKGryocGLDKMWLGvhP5lSKPs6e0lO4u2vEor4=
Date: Mon, 20 May 2019 10:53:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: rtw_ap: fix Unneeded variable:
 "ret". Return "0"
Message-ID: <20190520085317.GB19183@kroah.com>
References: <20190519164445.GA5268@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190519164445.GA5268@hari-Inspiron-1545>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 linux-kernel@vger.kernel.org, Mamta Shukla <mamtashukla555@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Murray McAllister <murray.mcallister@insomniasec.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 19, 2019 at 10:14:45PM +0530, Hariprasad Kelam wrote:
> This patch fixes below warnings reported by coccicheck
> 
> drivers/staging/rtl8723bs/core/rtw_ap.c:1400:5-8: Unneeded variable:
> "ret". Return "0" on line 1441
> drivers/staging/rtl8723bs/core/rtw_ap.c:2195:5-8: Unneeded variable:
> "ret". Return "0" on line 2205
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_ap.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
> index bc02306..a1b5ba4 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> @@ -1397,7 +1397,6 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
>  int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
>  {
>  	struct list_head	*plist, *phead;
> -	int ret = 0;
>  	struct rtw_wlan_acl_node *paclnode;
>  	struct sta_priv *pstapriv = &padapter->stapriv;
>  	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
> @@ -1438,7 +1437,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
>  
>  	DBG_871X("%s, acl_num =%d\n", __func__, pacl_list->num);
>  
> -	return ret;
> +	return 0;
>  }

If this function can never fail, why does it have a return value at all?
Please fix that up instead.

>  
>  u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
> @@ -2192,7 +2191,6 @@ u8 ap_free_sta(
>  int rtw_sta_flush(struct adapter *padapter)
>  {
>  	struct list_head	*phead, *plist;
> -	int ret = 0;
>  	struct sta_info *psta = NULL;
>  	struct sta_priv *pstapriv = &padapter->stapriv;
>  	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
> @@ -2202,7 +2200,7 @@ int rtw_sta_flush(struct adapter *padapter)
>  	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(padapter->pnetdev));
>  
>  	if ((pmlmeinfo->state&0x03) != WIFI_FW_AP_STATE)
> -		return ret;
> +		return 0;
>  
>  	spin_lock_bh(&pstapriv->asoc_list_lock);
>  	phead = &pstapriv->asoc_list;
> @@ -2227,7 +2225,7 @@ int rtw_sta_flush(struct adapter *padapter)
>  
>  	associated_clients_update(padapter, true);
>  
> -	return ret;
> +	return 0;
>  }

Same here.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
