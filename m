Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD5B289F92
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 11:34:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF1932040B;
	Sat, 10 Oct 2020 09:34:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdaA2PcUNxYT; Sat, 10 Oct 2020 09:34:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EEF6E203E2;
	Sat, 10 Oct 2020 09:34:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D0301BF82D
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 09:34:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 35022203D4
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 09:34:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TtWGtrtkMDMs for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 09:34:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 38A82203A5
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 09:34:36 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36CFA208C7;
 Sat, 10 Oct 2020 09:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602322475;
 bh=8G56kfNsKN2o+qwV8vuB+SUXCDERhQbqnXbs1jkx5yc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YyfjRMFzoI8iBbEwupEs+h0rwJrqBDmuYxRIp40itCm9pFPhRx/M5C45rvN/IkzBl
 gPnOtJ++HEF4aCOQWyJf05y6ZPBk/dToQPjI4TNLuiT9VMOfmk843soS2P2BfFRnXs
 EleVu+VBEezmhC+6F+gREWOObJXDCuxhPmEkRxqk=
Date: Sat, 10 Oct 2020 11:35:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Subject: Re: [PATCH v3] staging: comedi: check validity of wMaxPacketSize of
 usb endpoints found
Message-ID: <20201010093519.GA981987@kroah.com>
References: <20201010082933.5417-1-anant.thazhemadam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010082933.5417-1-anant.thazhemadam@gmail.com>
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
 syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com,
 Ian Abbott <abbotti@mev.co.uk>, linux-kernel-mentees@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 10, 2020 at 01:59:32PM +0530, Anant Thazhemadam wrote:
> While finding usb endpoints in vmk80xx_find_usb_endpoints(), check if 
> wMaxPacketSize = 0 for the endpoints found.
> 
> Some devices have isochronous endpoints that have wMaxPacketSize = 0
> (as required by the USB-2 spec).
> However, since this doesn't apply here, wMaxPacketSize = 0 can be
> considered to be invalid.
> 
> Reported-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
> Tested-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
> ---
> Changes in v3:
> 	* Correctly list version information
> 
> Changes in v2:
> 	* Fix coding style issue
> 
> The error (as detected by syzbot) is generated in 
> vmk80xx_write_packet() (which is called in vmk80xx_reset_device()) when
> it tries to assign devpriv->usb_tx_buf[0] = cmd.
> 
> This NULL pointer dereference issue arises because
> size = usb_endpoint_maxp(devpriv->ep_tx) = 0.
> 
> This can be traced back to vmk80xx_find_usb_endpoints(), where the usb 
> endpoints are found, and assigned accordingly.
> (For some more insight, in vmk80xx_find_usb_endpoints(), 
> if one of intf->cur_altsetting->iface_desc->endpoints' desc value = 0, 
> and consequently this endpoint is assigned to devpriv->ep_tx,
> this issue gets triggered.)
> 
> Checking if the wMaxPacketSize of an endpoint is invalid and returning
> an error value accordingly, seems to fix the error.
> 
> We could also alternatively perform this checking (if the size is 0 or not) 
> in vmk80xx_reset_device() itself, but it only seemed like covering up the issue
> at that place, rather than fixing it, so I wasn't sure that was any better.
> 
> However, if I'm not wrong, this might end up causing the probe to fail, and I'm 
> not sure if that's the right thing to do in cases like this, and if it isn't I'd
> like some input on what exactly is the required course of action in cases like this.
> 
>  drivers/staging/comedi/drivers/vmk80xx.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/comedi/drivers/vmk80xx.c b/drivers/staging/comedi/drivers/vmk80xx.c
> index 65dc6c51037e..cb0a965d3c37 100644
> --- a/drivers/staging/comedi/drivers/vmk80xx.c
> +++ b/drivers/staging/comedi/drivers/vmk80xx.c
> @@ -667,6 +667,9 @@ static int vmk80xx_find_usb_endpoints(struct comedi_device *dev)
>  	if (!devpriv->ep_rx || !devpriv->ep_tx)
>  		return -ENODEV;
>  
> +	if (!usb_endpoint_maxp(devpriv->ep_rx) || !usb_endpoint_maxp(devpriv->ep_tx))
> +		return -EINVAL;
> +
>  	return 0;
>  }

Why not just rewrite vmk80xx_find_usb_endpoints() to use the
usb_find_common_endpoints() or other helper functions like
usb_find_bulk_in_endpoint() or others, so that this type of thing is
checked there?

Ah, wait, no, the packet size is not checked there, sorry, maybe that
will not help out here.  Is a bulk urb allowed to have a 0 size?  If
not, maybe we should just forbid that in the core?  Time to go read the
USB spec...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
