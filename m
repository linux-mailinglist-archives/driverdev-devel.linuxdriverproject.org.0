Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2797344ABB
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 17:11:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A6D740387;
	Mon, 22 Mar 2021 16:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46xzuuOKoslT; Mon, 22 Mar 2021 16:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7565440301;
	Mon, 22 Mar 2021 16:11:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAEF71BF319
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97E4E605DC
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IGZTZ1dHNNuz for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 16:11:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2999160594
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 16:11:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 40D1E61974;
 Mon, 22 Mar 2021 16:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616429475;
 bh=uXWzdJao91erGlT0gjrKYueZuvbCNU6HdOT0WlaF5yM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CEnzfShKpZ2/pZOcNP/XY/SJVhKtnYD0qkwdfM9k86Gkx37aPGO69jshLHe4dn9Lg
 J2HxkOUpDIr+SgybbHXxZ/YVlbhc/C6tyZI9vxI5dW4607Ohk4b61TMLVTdaZQ6pos
 wBNMYjhhrqidz/uW9WlAo7fm7f6RGISOFMLu/fKo=
Date: Mon, 22 Mar 2021 17:11:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH 05/11] staging: rtl8723bs: remove argument in
 recv_indicatepkts_pkt_loss_cnt
Message-ID: <YFjBoZJBnAqDh+jY@kroah.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
 <fb3d6e0ae858738e3213b60d87e70c2f1697f051.1616422773.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb3d6e0ae858738e3213b60d87e70c2f1697f051.1616422773.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 03:31:43PM +0100, Fabio Aiuto wrote:
> remove debug_priv argument so function prototype can be
> easily moved away
> 
> Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_recv.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
> index 9ef2408ded57..e2a6afed723c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_recv.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
> @@ -1983,13 +1983,13 @@ int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union rec
>  
>  }
>  
> -void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u64 current_seq);
> -void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u64 current_seq)
> +u64 recv_indicatepkts_pkt_loss_cnt(u64 prev_seq, u64 current_seq);

But you did not drop the function prototype, why keep it?

And shouldn't this be static?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
