Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B33952486AE
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EB7185FC4;
	Tue, 18 Aug 2020 14:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1Im5hloltA7; Tue, 18 Aug 2020 14:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F29185C88;
	Tue, 18 Aug 2020 14:06:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17A651BF3D0
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 943E48174C
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-QgbYoNWWjS for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:06:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 49F4B86F88
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:06:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7994A2076D;
 Tue, 18 Aug 2020 14:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597759582;
 bh=u3NxKe1J7gn5NTkqggWGBIzwbb/5pNdg+Qc8gbCoV6w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QeXf2Wu2ZaD4+i3bzRlTRTly2O+85gR5HH8KBegjIZp/vQ5eRoxgneKFkgnOuC3ST
 4agPSfrfm8YOMiOQzdoTrytE1+CZXTDQyhK8QcgIPB6XM0dCI5Xy8rlxs/ojGsojtS
 YYY0zv4/p93xDDYBfVobPZAN1HBJkdPMzWj6u9RM=
Date: Tue, 18 Aug 2020 16:06:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mohammed Rushad <mohammedrushad@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: os_dep: fix function-name print
 using __func__
Message-ID: <20200818140645.GC547677@kroah.com>
References: <20200812160745.7215-1-mohammedrushad@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200812160745.7215-1-mohammedrushad@gmail.com>
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, nachukannan@gmail.com,
 john.oldman@polehill.co.uk, kai.heng.feng@canonical.com, luk@wybcz.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 12, 2020 at 09:37:45PM +0530, Mohammed Rushad wrote:
> This patch to the os_intfs.c fixes the printing of function names using
> the preferred '"%s...", __func__' and alignment issues as pointed out by
> the checkpatch.pl tool.
> 
> Signed-off-by: Mohammed Rushad <mohammedrushad@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 56 +++++++++++----------
>  1 file changed, 29 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index 27f990a01a23..0460db4ae660 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -400,17 +400,17 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
>  	memcpy(&eth_type, pdata + (ETH_ALEN << 1), 2);
>  
>  	switch (be16_to_cpu(eth_type)) {
> -		case ETH_P_IP:
> +	case ETH_P_IP:
>  
> -			piphdr = (struct iphdr *)(pdata + ETH_HLEN);
> +		piphdr = (struct iphdr *)(pdata + ETH_HLEN);
>  
> -			dscp = piphdr->tos & 0xfc;
> +		dscp = piphdr->tos & 0xfc;
>  
> -			priority = dscp >> 5;
> +		priority = dscp >> 5;
>  
> -			break;
> -		default:
> -			priority = 0;
> +		break;
> +	default:
> +		priority = 0;
>  	}
>  
>  	return rtw_1d_to_queue[priority];
> @@ -539,7 +539,7 @@ u32 rtw_start_drv_threads(struct adapter *padapter)
>  {
>  	u32 _status = _SUCCESS;
>  
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_start_drv_threads\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
>  	padapter->xmitThread = kthread_run(rtw_xmit_thread, padapter, "RTW_XMIT_THREAD");
>  	if (IS_ERR(padapter->xmitThread))
>  		_status = _FAIL;
> @@ -556,7 +556,7 @@ u32 rtw_start_drv_threads(struct adapter *padapter)
>  
>  void rtw_stop_drv_threads(struct adapter *padapter)
>  {
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
>  
>  	rtw_stop_cmd_thread(padapter);
>  
> @@ -710,7 +710,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
>  {
>  	u8 ret8 = _SUCCESS;
>  
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_init_drv_sw\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
>  
>  	rtw_init_default_value(padapter);
>  
> @@ -773,29 +773,29 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
>  
>  exit:
>  
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_init_drv_sw\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-%s\n", __func__));
>  
>  	return ret8;
>  }
>  
>  void rtw_cancel_all_timer(struct adapter *padapter)
>  {
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_cancel_all_timer\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
>  
>  	del_timer_sync(&padapter->mlmepriv.assoc_timer);
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel association timer complete!\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel association timer complete!\n", __func__));
>  
>  	del_timer_sync(&padapter->mlmepriv.scan_to_timer);
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel scan_to_timer!\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel scan_to_timer!\n", __func__));
>  
>  	del_timer_sync(&padapter->mlmepriv.dynamic_chk_timer);
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel dynamic_chk_timer!\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel dynamic_chk_timer!\n", __func__));
>  
>  	del_timer_sync(&(adapter_to_pwrctl(padapter)->pwr_state_check_timer));
>  
>  	del_timer_sync(&padapter->mlmepriv.set_scan_deny_timer);
>  	rtw_clear_scan_deny(padapter);
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel set_scan_deny_timer!\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel set_scan_deny_timer!\n", __func__));
>  
>  	del_timer_sync(&padapter->recvpriv.signal_stat_timer);
>  
> @@ -805,7 +805,7 @@ void rtw_cancel_all_timer(struct adapter *padapter)
>  
>  u8 rtw_free_drv_sw(struct adapter *padapter)
>  {
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("==>rtw_free_drv_sw"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("==>%s", __func__));
>  
>  	free_mlme_ext_priv(&padapter->mlmeextpriv);
>  
> @@ -829,7 +829,7 @@ u8 rtw_free_drv_sw(struct adapter *padapter)
>  
>  	rtw_hal_free_data(padapter);
>  
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("<==rtw_free_drv_sw\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("<==%s\n", __func__));
>  
>  	/* free the old_pnetdev */
>  	if (padapter->rereg_nd_name_priv.old_pnetdev) {
> @@ -841,7 +841,7 @@ u8 rtw_free_drv_sw(struct adapter *padapter)
>  	if (padapter->pbuddy_adapter != NULL)
>  		padapter->pbuddy_adapter->pbuddy_adapter = NULL;
>  
> -	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_free_drv_sw\n"));
> +	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-%s\n", __func__));
>  
>  	return _SUCCESS;
>  }
> @@ -994,7 +994,7 @@ static int  ips_netdrv_open(struct adapter *padapter)
>  
>  	status = rtw_hal_init(padapter);
>  	if (status == _FAIL) {
> -		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("ips_netdrv_open(): Can't init h/w!\n"));
> +		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("%s(): Can't init h/w!\n", __func__));
>  		goto netdev_open_error;
>  	}
>  
> @@ -1007,7 +1007,7 @@ static int  ips_netdrv_open(struct adapter *padapter)
>  
>  netdev_open_error:
>  	/* padapter->bup = false; */
> -	DBG_871X("-ips_netdrv_open - drv_open failure, bup =%d\n", padapter->bup);
> +	DBG_871X("-%s - drv_open failure, bup =%d\n", __func__, padapter->bup);
>  
>  	return _FAIL;
>  }
> @@ -1016,24 +1016,25 @@ static int  ips_netdrv_open(struct adapter *padapter)
>  int rtw_ips_pwr_up(struct adapter *padapter)
>  {
>  	int result;
> -	DBG_871X("===>  rtw_ips_pwr_up..............\n");
> +
> +	DBG_871X("===>  %s..............\n", __func__);
>  
>  	result = ips_netdrv_open(padapter);
>  
> -	DBG_871X("<===  rtw_ips_pwr_up..............\n");
> +	DBG_871X("<===  %s..............\n", __func__);
>  	return result;
>  }
>  
>  void rtw_ips_pwr_down(struct adapter *padapter)
>  {
> -	DBG_871X("===> rtw_ips_pwr_down...................\n");
> +	DBG_871X("===> %s...................\n", __func__);
>  
>  	padapter->bCardDisableWOHSM = true;
>  	padapter->net_closed = true;
>  
>  	rtw_ips_dev_unload(padapter);
>  	padapter->bCardDisableWOHSM = false;
> -	DBG_871X("<=== rtw_ips_pwr_down.....................\n");
> +	DBG_871X("<=== %s.....................\n", __func__);
>  }
>  
>  void rtw_ips_dev_unload(struct adapter *padapter)
> @@ -1087,7 +1088,8 @@ static int netdev_close(struct net_device *pnetdev)
>  
>  		rtw_dev_unload(padapter);
>  	}
> -	else*/
> +	else
> +*/
>  	if (pwrctl->rf_pwrstate == rf_on) {
>  		DBG_871X("(2)871x_drv - drv_close, bup =%d, hw_init_completed =%d\n", padapter->bup, padapter->hw_init_completed);
>  
> @@ -1144,7 +1146,7 @@ void rtw_dev_unload(struct adapter *padapter)
>  		if (padapter->intf_stop)
>  			padapter->intf_stop(padapter);
>  
> -		RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("@ rtw_dev_unload: stop intf complete!\n"));
> +		RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("@ %s: stop intf complete!\n", __func__));
>  
>  		if (!pwrctl->bInternalAutoSuspend)
>  			rtw_stop_drv_threads(padapter);
> -- 
> 2.17.1
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
