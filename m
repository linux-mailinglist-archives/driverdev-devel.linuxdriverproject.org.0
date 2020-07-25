Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7F622D7E4
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 15:34:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F4AF88A81;
	Sat, 25 Jul 2020 13:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HLWl453nWBKN; Sat, 25 Jul 2020 13:34:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43D4788863;
	Sat, 25 Jul 2020 13:34:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A7DAC1BF5E6
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 13:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A462C868E7
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 13:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O_CIzK_Vi8HJ for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 13:34:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 37566868E1
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 13:34:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 779672070C;
 Sat, 25 Jul 2020 13:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595684075;
 bh=1xJLgPKo17XB2bbhytRqI3o6mCjroafyaZ1pK+RLnc8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OC5t1ZjACNZQsWL+I/n74e85vGj+lQ1sL8xg4rlOZWOYRZYHCYZg+gZ/CQW4Whnhy
 xiRqz3F9JtbmyYp39GaTg+414zoU7fSgQEOtLH9ivhf/PO/gh9058YU22a93NGYmKj
 +yk7kZO1cPMHD14yk8zfkQ6XK4MqSVE8+ClDhDMU=
Date: Sat, 25 Jul 2020 15:34:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH V2] Subject: [PATCH] staging: rtl8723bs: core: Using
 comparison to true is error prone
Message-ID: <20200725133434.GA1143075@kroah.com>
References: <20200725132806.15019-1-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200725132806.15019-1-john.oldman@polehill.co.uk>
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
 gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 25, 2020 at 02:28:06PM +0100, John Oldman wrote:
> clear below issues reported by checkpatch.pl:
> 
> CHECK: Using comparison to true is error prone

Your subject line is very odd :(

> Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> ---
> v1: Initial attempt.
> v2: Removed unneccessary parentheses around 'pregistrypriv->ht_enable'
> Also considered clearing 'CHECK: Logical continuations should be on the previous line' report
> but this results in exceeding line length guideline.
>  drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> index ca98274ae390..7aacbe1b763e 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> @@ -363,8 +363,9 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
>  	}
> 
>  	/* HT Cap. */
> -	if (((pregistrypriv->wireless_mode&WIRELESS_11_5N) || (pregistrypriv->wireless_mode&WIRELESS_11_24N))
> -		&& (pregistrypriv->ht_enable == true)) {
> +	if (((pregistrypriv->wireless_mode & WIRELESS_11_5N)
> +	      || (pregistrypriv->wireless_mode & WIRELESS_11_24N))
> +	      && pregistrypriv->ht_enable) {

 || and && go on the end of the line, not the front.

But you also changed other things that were not needed here, and you did
not say that in your changelog text :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
