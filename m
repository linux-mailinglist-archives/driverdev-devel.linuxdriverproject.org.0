Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB5422F75
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:55:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19FC1854A0;
	Mon, 20 May 2019 08:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WrOR5Do37obm; Mon, 20 May 2019 08:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A77378545E;
	Mon, 20 May 2019 08:55:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 884421BF83A
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 81A6A81F2C
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id upiexlfrWfbs for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:55:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB5828545E
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:55:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 482B2204FD;
 Mon, 20 May 2019 08:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558342541;
 bh=Oee/c2MDV3HNg8hnxn5HjjMAZd7qfmNnxGQ5OCvwopI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O5F6SFVQ3q7yTeuTaEgQdA4PTRRLzNIx/A0ruDGhMl2xgHlouZPiVEYr9s/bj2pBJ
 K8LpDTVsB6Y8VQsty+TM43JBqHxZYQJIy5eyIXTY6uVmKUMhT/hjqM1sD0U1KPZFIQ
 HVpTsw4KwlXfaRSlvs9gfk4l9jDIM7BxzKH0pRrg=
Date: Mon, 20 May 2019 10:55:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: rtw_mlme_ext: fix warning
 Unneeded variable: "ret"
Message-ID: <20190520085539.GD19183@kroah.com>
References: <20190519171227.GA8089@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190519171227.GA8089@hari-Inspiron-1545>
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
Cc: devel@driverdev.osuosl.org, Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>, linux-kernel@vger.kernel.org,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Young Xiao <YangX92@hotmail.com>, Henriette Hofmeier <passt@h-hofmeier.de>,
 Vatsala Narang <vatsalanarang@gmail.com>, Aymen Qader <qader.aymen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 19, 2019 at 10:42:27PM +0530, Hariprasad Kelam wrote:
> This patch fixes below warnings reported by coccicheck
> 
> drivers/staging/rtl8723bs/core/rtw_mlme_ext.c:1888:14-17: Unneeded
> variable: "ret". Return "_FAIL" on line 1920
> drivers/staging/rtl8723bs/core/rtw_mlme_ext.c:466:5-8: Unneeded
> variable: "res". Return "_SUCCESS" on line 494
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index d110d45..6a2eb66 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -463,7 +463,6 @@ static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, RT_CHANNEL_
>  
>  int	init_mlme_ext_priv(struct adapter *padapter)
>  {
> -	int	res = _SUCCESS;
>  	struct registry_priv *pregistrypriv = &padapter->registrypriv;
>  	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
>  	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
> @@ -491,7 +490,7 @@ int	init_mlme_ext_priv(struct adapter *padapter)
>  	pmlmeext->fixed_chan = 0xFF;
>  #endif
>  
> -	return res;
> +	return _SUCCESS;

If it can never fail, it should not be returning a value :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
