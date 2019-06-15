Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1423C471BE
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jun 2019 20:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 031DB87B07;
	Sat, 15 Jun 2019 18:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2lY5n0XP++Vz; Sat, 15 Jun 2019 18:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FC2E87935;
	Sat, 15 Jun 2019 18:54:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 162CB1BF2A0
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2019 18:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1275B84103
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2019 18:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tMSjpgxHiFTz for <devel@linuxdriverproject.org>;
 Sat, 15 Jun 2019 18:53:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C50318409C
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 18:53:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 142E821841;
 Sat, 15 Jun 2019 18:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560624838;
 bh=PcNtMWJn1JC5fgNG7jD7XI0Lo4/bd+UCSCuIEWqVjbM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kLaCWFUewcyRCIJaZeKgiA89Ir7na/WTr5gYF7cCS9SsWNUtwBlW3j4vqUBWUcqOX
 iDAQGdG2/INYUg2aQCa7BeIYmBgrVzgL5z27LZdpNdtZQDTsNNx0ugjJBi7n5ivXzP
 dwBQqv9NKcqKQdLuNpKpz8ER6TxXvcPBYXw7wD34=
Date: Sat, 15 Jun 2019 20:53:55 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shobhit Kukreti <shobhitkukreti@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Resolve checkpatch error "that open
 brace { should be on the previous line" in the rtl8723bs driver
Message-ID: <20190615185355.GC10201@kroah.com>
References: <20190614021206.GA895@t-1000>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614021206.GA895@t-1000>
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
Cc: devel@driverdev.osuosl.org, Hans de Goede <hdegoede@redhat.com>,
 linux-kernel@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 13, 2019 at 07:12:10PM -0700, Shobhit Kukreti wrote:
> Cleaned up the code from the following files to get rid of
> check patch error "that open brace { should be on the previous line"
> 
> drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> drivers/staging/rtl8723bs/os_dep/recv_linux.c
> drivers/staging/rtl8723bs/os_dep/rtw_proc.c
> drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
> 
> Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/mlme_linux.c     | 14 ++---
>  drivers/staging/rtl8723bs/os_dep/recv_linux.c     | 76 ++++++++---------------
>  drivers/staging/rtl8723bs/os_dep/rtw_proc.c       |  6 +-
>  drivers/staging/rtl8723bs/os_dep/sdio_intf.c      | 15 ++---
>  drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c | 24 +++----
>  5 files changed, 47 insertions(+), 88 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> index aa2499f..6799ed4 100644
> --- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> @@ -46,8 +46,7 @@ void rtw_os_indicate_connect(struct adapter *adapter)
>  	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
>  
>  	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
> -		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true))
> -	{
> +		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
>  		rtw_cfg80211_ibss_indicate_connect(adapter);
>  	}
>  	else
> @@ -77,8 +76,8 @@ void rtw_reset_securitypriv(struct adapter *adapter)
>  
>  	spin_lock_bh(&adapter->security_key_mutex);
>  
> -	if (adapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X)/* 802.1x */
> -	{
> +	if (adapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) { /* 802.1x */
> +
>  		/*  Added by Albert 2009/02/18 */
>  		/*  We have to backup the PMK information for WiFi PMK Caching test item. */
>  		/*  */
> @@ -106,8 +105,8 @@ void rtw_reset_securitypriv(struct adapter *adapter)
>  		adapter->securitypriv.ndisencryptstatus = Ndis802_11WEPDisabled;
>  
>  	}
> -	else /* reset values in securitypriv */
> -	{
> +	else { /* reset values in securitypriv */
> +	

Trailing whitespace?

The comment should be on a new line, not on the same line.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
