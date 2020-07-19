Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 735232250DF
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 11:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A0841203E4;
	Sun, 19 Jul 2020 09:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W-qRpofZHl0I; Sun, 19 Jul 2020 09:23:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA52320345;
	Sun, 19 Jul 2020 09:23:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D7A21BF484
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 09:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0774320133
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 09:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pAPP1OO4AcFS for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 09:23:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CBE1B2001E
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 09:23:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0AD8F20734;
 Sun, 19 Jul 2020 09:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595150605;
 bh=FXGs3363erCGNX9TvamANt772GZXMe1t8CEolW3wfm0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1fI3FoyPB5WBOn4JCjyjO8Bcy2Verdht6rMHQfwSeQkCv/UCmqRmfBZUupKHYk4la
 C0nyl1Puf2jMPkX+Tch5T0l49QbBMh91nFayM1rhuINf9hSN337UFPEB3aN/Cly7Ep
 CqJBlE5mzvHJLtJ0ySjArhYO9GVYUa5VwsZ3hmiA=
Date: Sun, 19 Jul 2020 11:23:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rustam Kovhaev <rkovhaev@gmail.com>
Subject: Re: [PATCH] staging: wlan-ng: properly check endpoint types
Message-ID: <20200719092338.GC171181@kroah.com>
References: <20200718155836.86384-1-rkovhaev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200718155836.86384-1-rkovhaev@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 syzbot+c2a1fa67c02faa0de723@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 18, 2020 at 08:58:36AM -0700, Rustam Kovhaev wrote:
> As syzkaller detected, wlan-ng driver submits bulk urb without checking
> that the endpoint type is actually bulk, add usb_urb_ep_type_check()
> 
> Reported-and-tested-by: syzbot+c2a1fa67c02faa0de723@syzkaller.appspotmail.com
> Link: https://syzkaller.appspot.com/bug?extid=c2a1fa67c02faa0de723
> Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x_usb.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> index fa1bf8b069fd..7cde60ea68a2 100644
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -339,6 +339,12 @@ static int submit_rx_urb(struct hfa384x *hw, gfp_t memflags)
>  
>  	hw->rx_urb_skb = skb;
>  
> +	result = usb_urb_ep_type_check(&hw->rx_urb);
> +	if (result) {
> +	       netdev_warn(hw->wlandev->netdev, "invalid rx endpoint");
> +	       goto cleanup;
> +	}

In looking at this again, can you just make these checks in the probe
function, and abort binding the driver to the device at that point in
time?  This feels really late in the init sequence.

The real problem here is in the hfa384x_create() function, where it
blindly takes the 1 and 2 endpoints and assumes that those are the
"correct type".  How about checking the types there, and if they are
incorrect, returning an error from that function and have the caller
return the error as well.

That should keep anything else in the driver from being initialized and
set up, and stop bad devices from being bound to the driver at a much
earlier point in time.

Note, just checking for the valid type/direction of those endpoints
should be sufficient.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
