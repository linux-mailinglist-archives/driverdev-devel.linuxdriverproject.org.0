Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB80315551
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 18:41:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7773E6F5F5
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 17:41:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oAlpTFHBAEFX for <lists+driverdev-devel@lfdr.de>;
	Tue,  9 Feb 2021 17:41:24 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 650366F613; Tue,  9 Feb 2021 17:41:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44C396F537;
	Tue,  9 Feb 2021 17:41:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36EB91BF283
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 17:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33BC8871B0
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 17:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PGTBFP7WFWgC for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 17:40:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BB99D871AE
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 17:40:47 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CA35864EC2;
 Tue,  9 Feb 2021 17:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612892447;
 bh=3FqKB+k3RfOfv2X1i7iR67+j0FQVQ8+RruM8LxXLsvw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I5AP7v2VNsVgS/qju4gDvVBnYtI9mQXeTQanUHIEvN1JD8Z6OCEDer4t3+NYktWia
 qtnhM2eX8k7TpH+I67PHgI2LajOWhc/6pVFNlF8LIVslIlts8/OEbLZKRn+0lfxIVX
 yPGHtMQNeLxJ0m493QUx4/0sNXij4z+e9ME1AgOk=
Date: Tue, 9 Feb 2021 18:40:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: ameynarkhede03@gmail.com
Subject: Re: [PATCH] staging: gdm724x: Fix DMA from stack
Message-ID: <YCLJHNvKhiMJmTP8@kroah.com>
References: <20210209145415.29609-1-ameynarkhede03@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209145415.29609-1-ameynarkhede03@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 09, 2021 at 08:24:15PM +0530, ameynarkhede03@gmail.com wrote:
> From: Amey Narkhede <ameynarkhede03@gmail.com>
> 
> Stack allocated buffers cannot be used for DMA
> on all architectures so allocate usbdev buffer
> using kmalloc().
> 
> Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_usb.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> index dc4da66c3..50dc463d4 100644
> --- a/drivers/staging/gdm724x/gdm_usb.c
> +++ b/drivers/staging/gdm724x/gdm_usb.c
> @@ -56,7 +56,7 @@ static int gdm_usb_recv(void *priv_dev,
> 
>  static int request_mac_address(struct lte_udev *udev)
>  {
> -	u8 buf[16] = {0,};
> +	u8 *buf;
>  	struct hci_packet *hci = (struct hci_packet *)buf;
>  	struct usb_device *usbdev = udev->usbdev;
>  	int actual;
> @@ -66,6 +66,10 @@ static int request_mac_address(struct lte_udev *udev)
>  	hci->len = gdm_cpu_to_dev16(udev->gdm_ed, 1);
>  	hci->data[0] = MAC_ADDRESS;
> 
> +	buf = kmalloc(16, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +

This is great, but you just added a build warning, which implies that
the patch is incorrect.

You also have a memory leak here, which is not acceptable :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
