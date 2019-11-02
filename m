Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7047ECDFB
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Nov 2019 11:30:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC9AE8AB6B;
	Sat,  2 Nov 2019 10:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1IcF3B+OVM07; Sat,  2 Nov 2019 10:30:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B529B8AB40;
	Sat,  2 Nov 2019 10:30:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D286B1BF287
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 10:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF2E98AEDC
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 10:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Ce-PeNmJA1B for <devel@linuxdriverproject.org>;
 Sat,  2 Nov 2019 10:30:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C14D28AA27
 for <devel@driverdev.osuosl.org>; Sat,  2 Nov 2019 10:30:48 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 107F220862;
 Sat,  2 Nov 2019 10:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572690648;
 bh=sF4nfLxBOEZkHO9qQsfjmcuOOEgD4OvA99sJnz6xUY4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vrpSJR+uOL5bqcduqgk2DWrD4pkHenJ+/jO01+H5uUmRIqzQSEqSlSUzp2uRfSG2n
 Tg50Q72ftJ56no0KxlKTTpoOhgiuolf8srWn9PaCktEHS1avnBFmaOjt2tO5YE7csA
 16VEhvvQ74pPg68t7fON5N11wk2MJgBhIp/IaGR8=
Date: Sat, 2 Nov 2019 11:30:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] staging: wfx: Fix a memory leak in 'wfx_upload_beacon'
Message-ID: <20191102103045.GA135025@kroah.com>
References: <20191101172151.14295-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101172151.14295-1-christophe.jaillet@wanadoo.fr>
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 01, 2019 at 06:21:51PM +0100, Christophe JAILLET wrote:
> The current code is a no-op, because all it can do is 'dev_kfree_skb(NULL)'
> Revert the test to free skb, if not NULL.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> This patch is purely speculative.
> 
> The 'if  (...)' could also be removed completely if we refactor the code
> and return directly at the beginning of the function.
> Or the 'return -ENOMEM' should be 'err = -ENOMEM; goto done;' in order to
> avoid a mixup of goto and direct return.
> ---
>  drivers/staging/wfx/sta.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 688586e823c0..e14da8dce388 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -906,7 +906,7 @@ static int wfx_upload_beacon(struct wfx_vif *wvif)
>  	wfx_fwd_probe_req(wvif, false);
>  
>  done:
> -	if (!skb)
> +	if (skb)
>  		dev_kfree_skb(skb);

Just remove the "if" check entirely, as dev_kfree_skb() can handle NULL
being passed to it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
