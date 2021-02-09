Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0279315731
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 20:53:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 740426F635
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 19:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2tlxPh6Ery3s for <lists+driverdev-devel@lfdr.de>;
	Tue,  9 Feb 2021 19:53:05 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 6DCDF6F651; Tue,  9 Feb 2021 19:53:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE87A6F5FC;
	Tue,  9 Feb 2021 19:52:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30E321BF284
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 19:52:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D0C385A5A
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 19:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vIUbdYtR7Zfa for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 19:52:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3C608560E
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 19:52:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7FFF764E7C;
 Tue,  9 Feb 2021 19:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612900345;
 bh=dbd5zXuf2tAOK3nMwJXXBkMx5zGP7piyCLS8ORXFt2o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DzkpWRpLdUkjK9cWF6rjSftsMfVhYEcr3Z2NG5pGjFCANHBvgrZkYRVlZ1mggMoIF
 ntZvNZWKLzJbYUOHOExhowcDA80gQgzub5t/r90r5oP2f+FAkToGkJFIXfyNKlUPfW
 t429lzoDtxYkSnPLrSXdKPBZ3urvac0Xxnbx9Edk=
Date: Tue, 9 Feb 2021 20:52:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: ameynarkhede03@gmail.com
Subject: Re: [PATCH v2] staging: gdm724x: Fix DMA from stack
Message-ID: <YCLn9j60wD2/RG9K@kroah.com>
References: <20210209193147.558514-1-ameynarkhede03@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209193147.558514-1-ameynarkhede03@gmail.com>
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
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 01:01:47AM +0530, ameynarkhede03@gmail.com wrote:
> From: Amey Narkhede <ameynarkhede03@gmail.com>
> 
> Stack allocated buffers cannot be used for DMA
> on all architectures so allocate hci_packet buffer
> using kzalloc().
> 
> Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_usb.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> index dc4da66c3..c4a9b90c5 100644
> --- a/drivers/staging/gdm724x/gdm_usb.c
> +++ b/drivers/staging/gdm724x/gdm_usb.c
> @@ -56,11 +56,15 @@ static int gdm_usb_recv(void *priv_dev,
> 
>  static int request_mac_address(struct lte_udev *udev)
>  {
> -	u8 buf[16] = {0,};
> -	struct hci_packet *hci = (struct hci_packet *)buf;
> +	u8 *buf;
> +	struct hci_packet *hci;
>  	struct usb_device *usbdev = udev->usbdev;
>  	int actual;
>  	int ret = -1;
> +	buf = kzalloc(16, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +	hci = (struct hci_packet *)buf;
> 
>  	hci->cmd_evt = gdm_cpu_to_dev16(udev->gdm_ed, LTE_GET_INFORMATION);
>  	hci->len = gdm_cpu_to_dev16(udev->gdm_ed, 1);
> @@ -70,6 +74,7 @@ static int request_mac_address(struct lte_udev *udev)
>  			   &actual, 1000);
> 
>  	udev->request_mac_addr = 1;
> +	kfree(buf);
> 
>  	return ret;
>  }
> --
> 2.30.0
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

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

- Your patch contains warnings and/or errors noticed by the
  scripts/checkpatch.pl tool.

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for what needs to be done
  here to properly describe this.

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
