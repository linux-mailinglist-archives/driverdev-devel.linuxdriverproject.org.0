Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DE431AE1E
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 22:36:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FEE36F59E
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 21:36:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6UWVbrTdAaYq for <lists+driverdev-devel@lfdr.de>;
	Sat, 13 Feb 2021 21:36:09 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 1C7666F5A6; Sat, 13 Feb 2021 21:36:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6389E6F5C1;
	Sat, 13 Feb 2021 21:35:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 300F21BF327
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 21:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C9918612E
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 21:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mYGAh1BkIfQd for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 21:35:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80ECC85F8F
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 21:35:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4909464E29;
 Sat, 13 Feb 2021 21:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613252109;
 bh=1ytCGjjECXEgqJktmY+2KLgPNFPsaQkh/sKICs2iaks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Sc5IXpdCdlthNE+3WdsP3WSOGmYKe/iQ/MjGk1Hqa8R/IN78s9htbqRjEm3sVu1jD
 Ei83qXUeKxRmcyYpudIHxvYD0QkWmdAEUXzm5vS5eyDrTeluTaEPQrQnY6alatvC9w
 ezlxi5XbHWn6A/oaK9J2ATL8KScPgDAG/Am9M2gI=
Date: Sat, 13 Feb 2021 22:35:03 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: zhuo1angt@outlook.com
Subject: Re: [PATCH] staging: wfx: logical continuations should be on the
 previous line
Message-ID: <YChGB00XaagfL+bI@kroah.com>
References: <ME4P282MB080801C23076AFA45F2445A8F98A9@ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ME4P282MB080801C23076AFA45F2445A8F98A9@ME4P282MB0808.AUSP282.PROD.OUTLOOK.COM>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 14, 2021 at 05:16:41AM +0800, zhuo1angt@outlook.com wrote:
> Move logical or operator to previous line to comply with
> the standard kernel coding style.
> 
> Signed-off-by: Zhuoran He <zhuo1angt@outlook.com>
> ---
> drivers/staging/wfx/hif_rx.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/wfx/hif_rx.c b/drivers/staging/wfx/hif_rx.c
> index 56a5f8914..9fca7f263 100644
> --- a/drivers/staging/wfx/hif_rx.c
> +++ b/drivers/staging/wfx/hif_rx.c
> @@ -391,9 +391,9 @@ void wfx_handle_rx(struct wfx_dev *wdev, struct sk_buff
> *skb)
>  }
>  // Note: mutex_is_lock cause an implicit memory barrier that protect
>  // buf_send
> - if (mutex_is_locked(&wdev->hif_cmd.lock)
> - && wdev->hif_cmd.buf_send
> - && wdev->hif_cmd.buf_send->id == hif_id) {
> + if (mutex_is_locked(&wdev->hif_cmd.lock) &&
> + wdev->hif_cmd.buf_send &&
> + wdev->hif_cmd.buf_send->id == hif_id) {
>   hif_generic_confirm(wdev, hif, hif->body);
>   goto free;
>  }
> --
> 2.30.1

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

- Your patch is malformed (tabs converted to spaces, linewrapped, etc.)
  and can not be applied.  Please read the file,
  Documentation/email-clients.txt in order to fix this.

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
