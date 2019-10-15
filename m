Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889CBD74EF
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 13:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B443688263;
	Tue, 15 Oct 2019 11:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6l+Ds7Sb0LYr; Tue, 15 Oct 2019 11:29:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 056C088182;
	Tue, 15 Oct 2019 11:29:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 634D51BF2F5
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 11:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 58A632045B
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 11:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ugtDHmZZyq9s for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 11:29:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by silver.osuosl.org (Postfix) with ESMTPS id A1F1D2042D
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 11:29:15 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,299,1566856800"; d="scan'208";a="322762634"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 13:29:12 +0200
Date: Tue, 15 Oct 2019 13:29:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: remove casts to
 pointers in kfree
In-Reply-To: <20191015112637.20824-1-wambui.karugax@gmail.com>
Message-ID: <alpine.DEB.2.21.1910151328500.2818@hadrien>
References: <20191015112637.20824-1-wambui.karugax@gmail.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Tue, 15 Oct 2019, Wambui Karuga wrote:

> Remove unnecessary casts in pointer types passed to kfree.
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 3030ae5b6b6d..71fcb466019a 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -2155,7 +2155,7 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
>
>  	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
>  	if (!psetauthparm) {
> -		kfree((unsigned char *)pcmd);
> +		kfree(pcmd);
>  		res = _FAIL;
>  		goto exit;
>  	}
> @@ -2238,7 +2238,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
>  	if (enqueue) {
>  		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
>  		if (!pcmd) {
> -			kfree((unsigned char *)psetkeyparm);
> +			kfree(psetkeyparm);
>  			res = _FAIL;  /* try again */
>  			goto exit;
>  		}
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191015112637.20824-1-wambui.karugax%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
