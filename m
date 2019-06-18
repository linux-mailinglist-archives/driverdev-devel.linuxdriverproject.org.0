Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5A9499AB
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 09:00:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E6FF878E3;
	Tue, 18 Jun 2019 07:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 20Z-bZ6+gXwB; Tue, 18 Jun 2019 07:00:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A779C877E1;
	Tue, 18 Jun 2019 07:00:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DFB571BF865
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 07:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D72E2856E9
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 07:00:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H0_Vk6kVcURU for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 07:00:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 77FED844FB
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 07:00:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CEB1B20665;
 Tue, 18 Jun 2019 07:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560841221;
 bh=zyoTbA/X8DjK3gQ0rzJxs92dPQZZnv6PtxgiKe9KUbI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UMqfrvGmoZKS6fDsGggwuNfWr0M4aOYHDvAEomPqWZK5kBsXiByGfxwWulvle/eGL
 3LajHF7zPGnjoHdAURTpA3CkD7zeNLMjXhLy8BqsaD6Wc6FjS6D/GvkM5OK9eD003v
 xIr81+VyroIKqPGMUuUJCVv7+hRFJ7xaWonj4rGc=
Date: Tue, 18 Jun 2019 09:00:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shobhit Kukreti <shobhitkukreti@gmail.com>
Subject: Re: [PATCH v3 1/3] staging: rtl8723bs: Resolve checkpatch error
 "that open brace { should be on the previous line" in the rtl8723 driver
Message-ID: <20190618070019.GA20601@kroah.com>
References: <cover.1560701271.git.shobhitkukreti@gmail.com>
 <387734fb053e04eb44a0813ab3531a1f4344fdb2.1560701271.git.shobhitkukreti@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <387734fb053e04eb44a0813ab3531a1f4344fdb2.1560701271.git.shobhitkukreti@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 Joe Perches <joe@perches.com>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 16, 2019 at 09:19:49AM -0700, Shobhit Kukreti wrote:
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
>  drivers/staging/rtl8723bs/os_dep/mlme_linux.c     | 15 +++--
>  drivers/staging/rtl8723bs/os_dep/recv_linux.c     | 77 ++++++++---------------
>  drivers/staging/rtl8723bs/os_dep/rtw_proc.c       |  6 +-
>  drivers/staging/rtl8723bs/os_dep/sdio_intf.c      | 15 ++---
>  drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c | 24 +++----
>  5 files changed, 49 insertions(+), 88 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> index aa2499f..4631b68 100644
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

Why the blank line?

And don't keep the comment on the right side, that's just a pain to work
with.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
