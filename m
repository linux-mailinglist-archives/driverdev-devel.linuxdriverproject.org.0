Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5332303D7
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 495D986A6F;
	Thu, 30 May 2019 21:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X-YTvXFe-Ljn; Thu, 30 May 2019 21:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3211F86A63;
	Thu, 30 May 2019 21:09:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 747BF1BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 711A387589
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JR4fPj1Fw84e for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:09:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BED448701E
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:09:42 +0000 (UTC)
Received: from localhost (unknown [207.225.69.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F6C2261A1;
 Thu, 30 May 2019 21:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559250582;
 bh=6/Bn59/+vl2K5/idmqH2J+1q6RKOCaWO4Jg+AB0eFyM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CGckxHtHODHnGLOmF9kzYy6wgcp21NbBeNzGKHJd8Tw+kqp0CZnd0Gl28zy0Yzcd8
 ZaUCTQVJgKQT/XNFq8qsYnf2FNoSVpcyIcjEymAx+EQ/y/BCcFSn/ml0JqhFKFzC4T
 urbPBCx47fWWXNGb+DpAwfdcjexOkPQnfyTyAGE4=
Date: Thu, 30 May 2019 14:09:42 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [Patch v3] staging: rtl8723bs: core: rtw_mlme_ext: fix warning
 Unneeded variable: "ret"
Message-ID: <20190530210942.GA11363@kroah.com>
References: <20190523173940.GA6591@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523173940.GA6591@hari-Inspiron-1545>
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
Cc: Alexander Duyck <alexander.h.duyck@intel.com>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>, Emanuel Bennici <benniciemanuel78@gmail.com>,
 linux-kernel@vger.kernel.org, Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Vatsala Narang <vatsalanarang@gmail.com>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 11:09:41PM +0530, Hariprasad Kelam wrote:
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
>                 change return type of init_mlme_ext_priv() from int to
>                 void
>                 We cant change return type of on_action_spct() it is a
>                 call back function from action_handler.
>                 So directly return _FAIL from this function.
> changes in v3:
> 		Dont remove initilization of init_mlme_ext_priv
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ++-------
>  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 +-
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c      | 6 +-----
>  3 files changed, 4 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index 65e8cba..4b0129c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -458,9 +458,8 @@ static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, RT_CHANNEL_
>  	return chanset_size;
>  }
>  
> -int	init_mlme_ext_priv(struct adapter *padapter)
> +void	init_mlme_ext_priv(struct adapter *padapter)
>  {
> -	int	res = _SUCCESS;
>  	struct registry_priv *pregistrypriv = &padapter->registrypriv;
>  	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
> @@ -487,9 +486,6 @@ int	init_mlme_ext_priv(struct adapter *padapter)
>  #ifdef DBG_FIXED_CHAN
>  	pmlmeext->fixed_chan = 0xFF;
>  #endif
> -
> -	return res;
> -
>  }
>  
>  void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
> @@ -1881,7 +1877,6 @@ unsigned int OnAtim(struct adapter *padapter, union recv_frame *precv_frame)
>  
>  unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_frame)
>  {
> -	unsigned int ret = _FAIL;
>  	struct sta_info *psta = NULL;
>  	struct sta_priv *pstapriv = &padapter->stapriv;
>  	u8 *pframe = precv_frame->u.hdr.rx_data;
> @@ -1913,7 +1908,7 @@ unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_fr
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
> index 8a9d838..4afb35b 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -774,11 +774,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
>  		goto exit;
>  	}
>  
> -	if (init_mlme_ext_priv(padapter) == _FAIL) {
> -		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init mlme_ext_priv\n"));
> -		ret8 = _FAIL;
> -		goto exit;
> -	}
> +	init_mlme_ext_priv(padapter); 

Always run checkpatch.pl on your patches so you do not get grumpy
maintainers telling you to run checkpatch.pl on your patches :(


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
