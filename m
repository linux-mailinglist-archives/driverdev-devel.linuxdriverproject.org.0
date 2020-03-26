Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C190119398C
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 08:23:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9777A8837A;
	Thu, 26 Mar 2020 07:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fzhclcyJ7paJ; Thu, 26 Mar 2020 07:23:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C79C787770;
	Thu, 26 Mar 2020 07:23:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5733A1BF36A
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 07:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 53D9D87FA4
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 07:23:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9YD+HjcVCo1m for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 07:23:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E0BFE87F9C
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 07:23:37 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.72,307,1580770800"; d="scan'208";a="343773967"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 08:23:35 +0100
Date: Thu, 26 Mar 2020 08:23:34 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Simran Singhal <singhalsimran0@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Clean up tests
 if NULL returned on failure
In-Reply-To: <20200325222908.GA5370@simran-Inspiron-5558>
Message-ID: <alpine.DEB.2.21.2003260822280.3019@hadrien>
References: <20200325222908.GA5370@simran-Inspiron-5558>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Thu, 26 Mar 2020, Simran Singhal wrote:

> Some functions like kmalloc/kzalloc return NULL on failure.
> When NULL represents failure, !x is commonly used.

Try for a shorter subject line.  "Simplify NULL tests" would do.  Then the
log message should be in the imperative.

julia


>
> This was done using Coccinelle:
> @@
> expression *e;
> identifier l1;
> @@
>
> e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
> ...
> - e == NULL
> + !e
>
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 29f36cca3972..5c27c11f006a 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -474,7 +474,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
>  			wep_key_len = wep_key_len <= 5 ? 5 : 13;
>  			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
>  			pwep = kzalloc(wep_total_len, GFP_KERNEL);
> -			if (pwep == NULL) {
> +			if (!pwep) {
>  				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
>  				goto exit;
>  			}
> @@ -2137,7 +2137,7 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
>
>  	param_len = sizeof(struct ieee_param) + pext->key_len;
>  	param = kzalloc(param_len, GFP_KERNEL);
> -	if (param == NULL)
> +	if (!param)
>  		return -1;
>
>  	param->cmd = IEEE_CMD_SET_ENCRYPTION;
> @@ -3491,7 +3491,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
>  			wep_key_len = wep_key_len <= 5 ? 5 : 13;
>  			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
>  			pwep = kzalloc(wep_total_len, GFP_KERNEL);
> -			if (pwep == NULL) {
> +			if (!pwep) {
>  				DBG_871X(" r871x_set_encryption: pwep allocate fail !!!\n");
>  				goto exit;
>  			}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200325222908.GA5370%40simran-Inspiron-5558.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
