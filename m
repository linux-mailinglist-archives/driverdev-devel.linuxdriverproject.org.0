Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E6ACDF5E
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 12:30:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09A6886759;
	Mon,  7 Oct 2019 10:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDGxwNLzGTVo; Mon,  7 Oct 2019 10:30:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E63B88669E;
	Mon,  7 Oct 2019 10:30:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF4851BF3C2
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 10:30:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D845220380
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 10:30:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jkt9acM+mzbr for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 10:30:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 50C3F20133
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 10:30:49 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB92A206C2;
 Mon,  7 Oct 2019 10:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570444249;
 bh=gsl3ZXP+ZS1oZW8DYEeXp2UrDMCpPrpabAd4v6c8RMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S/KXzZzVtExtji6o2N/O73kkm44lWVh5MoYp7WaXXCEyLpS7odQFJ4zJv6JqUnAU1
 fpksmZr73zSSyjFEszx1SSPj2RiYs7lHAiNJHCLov3u65Ml3A/BbMDkNx25gH7+t2h
 ifr//rqF4j2nfkb1e6Vi7yyPs6WIYUCogLk8BFf8=
Date: Mon, 7 Oct 2019 12:30:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH 1/5] staging: rtl8723bs: Remove set but not used variable
 'i'
Message-ID: <20191007103046.GA392903@kroah.com>
References: <1570352999-45790-1-git-send-email-zhengbin13@huawei.com>
 <1570352999-45790-2-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570352999-45790-2-git-send-email-zhengbin13@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, colin.king@canonical.com,
 hardiksingh.k@gmail.com, hdegoede@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 06, 2019 at 05:09:55PM +0800, zhengbin wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/staging/rtl8723bs/core/rtw_xmit.c: In function update_attrib:
> drivers/staging/rtl8723bs/core/rtw_xmit.c:680:7: warning: variable i set but not used [-Wunused-but-set-variable]
> 
> It is not used since commit 554c0a3abf21 ("staging:
> Add rtl8723bs sdio wifi driver")
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index b5dcb78..c24b524 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -675,7 +675,6 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
> 
>  static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib *pattrib)
>  {
> -	uint i;
>  	struct pkt_file pktfile;
>  	struct sta_info *psta = NULL;
>  	struct ethhdr etherhdr;
> @@ -689,7 +688,7 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
>  	DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib);
> 
>  	_rtw_open_pktfile(pkt, &pktfile);
> -	i = _rtw_pktfile_read(&pktfile, (u8 *)&etherhdr, ETH_HLEN);
> +	(void)_rtw_pktfile_read(&pktfile, (u8 *)&etherhdr, ETH_HLEN);

No need for the (void) marking here.  If you really are supposed to do
something with the return value, then do something with it, don't ignore
it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
