Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EE4276CA
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 09:19:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E6458739D;
	Thu, 23 May 2019 07:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bXQzS0+rg7h7; Thu, 23 May 2019 07:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A31887348;
	Thu, 23 May 2019 07:19:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A79FF1BF847
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A4862231A1
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PkOXGp3KFfh3 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 07:19:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 75D7322CB0
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 07:19:50 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C359220863;
 Thu, 23 May 2019 07:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558595990;
 bh=UiHyCFXjL7dy8g+ulDW/+CR0M95VuCg7XORYNuE3pCQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Mf6sUuxrbbuN7C8KpKmxn7e0BOLVyOMzy/QlB6sH4wB7AEAjlJ+1tnn9S237AbrM3
 8Vo2V9HnmAyf1rwOfAvFhkP9D3rguCTUACSPiAj6fJWrUo70BwrtOYVRTm56NrThCT
 0rWo6WIpNXoZaOyz6h7bWMCM1i88PUf6fwTSqYMM=
Date: Thu, 23 May 2019 09:19:48 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH v2] staging: rtl8723bs: core: rtw_mlme_ext: fix warning
 Unneeded variable: "ret"
Message-ID: <20190523071948.GB24998@kroah.com>
References: <20190522175501.GA8383@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522175501.GA8383@hari-Inspiron-1545>
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
Cc: Alexander Duyck <alexander.h.duyck@intel.com>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>, Henriette Hofmeier <passt@h-hofmeier.de>,
 Vatsala Narang <vatsalanarang@gmail.com>, linux-kernel@vger.kernel.org,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 22, 2019 at 11:25:01PM +0530, Hariprasad Kelam wrote:
> This patch fixes below warnings reported by coccicheck
> 
> drivers/staging/rtl8723bs/core/rtw_mlme_ext.c:1888:14-17: Unneeded
> variable: "ret". Return "_FAIL" on line 1920
> drivers/staging/rtl8723bs/core/rtw_mlme_ext.c:466:5-8: Unneeded
> variable: "res". Return "_SUCCESS" on line 494
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ----
> changes in v2:
> 		change return type of init_mlme_ext_priv() from int to
>                 void
> 		We cant change return type of on_action_spct() it is a
>                 call back function from action_handler.
> 		So directly return _FAIL from this function.
> ----
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ++-------
>  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 +-
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c      | 5 -----
>  3 files changed, 3 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index d110d45..b240a40 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -461,9 +461,8 @@ static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, RT_CHANNEL_
>  	return chanset_size;
>  }
>  
> -int	init_mlme_ext_priv(struct adapter *padapter)
> +void	init_mlme_ext_priv(struct adapter *padapter)
>  {
> -	int	res = _SUCCESS;
>  	struct registry_priv *pregistrypriv = &padapter->registrypriv;
>  	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
>  	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
> @@ -490,9 +489,6 @@ int	init_mlme_ext_priv(struct adapter *padapter)
>  #ifdef DBG_FIXED_CHAN
>  	pmlmeext->fixed_chan = 0xFF;
>  #endif
> -
> -	return res;
> -
>  }
>  
>  void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
> @@ -1885,7 +1881,6 @@ unsigned int OnAtim(struct adapter *padapter, union recv_frame *precv_frame)
>  
>  unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_frame)
>  {
> -	unsigned int ret = _FAIL;
>  	struct sta_info *psta = NULL;
>  	struct sta_priv *pstapriv = &padapter->stapriv;
>  	u8 *pframe = precv_frame->u.hdr.rx_data;
> @@ -1917,7 +1912,7 @@ unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_fr
>  	}
>  
>  exit:
> -	return ret;
> +	return _FAIL;
>  }
>  
>  unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_frame)
> diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> index f6eabad..0eb2da5 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> @@ -535,7 +535,7 @@ struct mlme_ext_priv
>  };
>  
>  void init_mlme_default_rate_set(struct adapter *padapter);
> -int init_mlme_ext_priv(struct adapter *padapter);
> +void init_mlme_ext_priv(struct adapter *padapter);
>  int init_hw_mlme_ext(struct adapter *padapter);
>  void free_mlme_ext_priv (struct mlme_ext_priv *pmlmeext);
>  extern void init_mlme_ext_timer(struct adapter *padapter);
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index 8a9d838..c2422e5 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -774,11 +774,6 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
>  		goto exit;
>  	}
>  
> -	if (init_mlme_ext_priv(padapter) == _FAIL) {
> -		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init mlme_ext_priv\n"));
> -		ret8 = _FAIL;
> -		goto exit;
> -	}

Why did you delete the call to this function entirely?

Is that ok?  Why?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
