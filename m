Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 157A8316985
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 15:56:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98DA86F655
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 14:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mhgLx33NX9mu for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 14:56:14 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id DA5896F6BB; Wed, 10 Feb 2021 14:56:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F6F36F5BE;
	Wed, 10 Feb 2021 14:55:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 102931BF3FD
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 14:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 090978732A
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 14:55:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JPQCUny8e-AX for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 14:55:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 70CFC8733D
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 14:55:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3C4A564EB4;
 Wed, 10 Feb 2021 14:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612968945;
 bh=D+I1p8kFl9V98gx/oh6Plr3WzbCSyGVrh7RCkNdJOSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XN7u1YG3A+jYzRa8amvNC76Jaip3/lWern/bfYTAxCtfTL8zrgyCGD+ZjZ2qqUSsK
 VtME7XUg6AyN+2+7wNyyBmNhz04JgD2RNoFprlfLWch3e9K69TdbmMjzb9cxdTyRnK
 L6VnEb5VgOyEjwqTBRb4h3x4soE2UCRT7ac3IphU=
Date: Wed, 10 Feb 2021 15:55:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amey Narkhede <ameynarkhede03@gmail.com>
Subject: Re: [PATCH v3] staging: gdm724x: Fix DMA from stack
Message-ID: <YCPz7jy6BLRzmvU3@kroah.com>
References: <20210210142512.23152-1-ameynarkhede03@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210142512.23152-1-ameynarkhede03@gmail.com>
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

On Wed, Feb 10, 2021 at 07:55:12PM +0530, Amey Narkhede wrote:
> Stack allocated buffers cannot be used for DMA
> on all architectures so allocate hci_packet buffer
> using kmalloc.
> 
> Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> ---
> Changes in v3:
> 	- Remove superfluous buf pointer
> 	- Reduce size of allocation of hci_packet to match number of
> 	bytes used for DMA
> 
>  drivers/staging/gdm724x/gdm_usb.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> index dc4da66c3..80c58a3ef 100644
> --- a/drivers/staging/gdm724x/gdm_usb.c
> +++ b/drivers/staging/gdm724x/gdm_usb.c
> @@ -56,20 +56,24 @@ static int gdm_usb_recv(void *priv_dev,
> 
>  static int request_mac_address(struct lte_udev *udev)
>  {
> -	u8 buf[16] = {0,};
> -	struct hci_packet *hci = (struct hci_packet *)buf;
> +	struct hci_packet *hci;
>  	struct usb_device *usbdev = udev->usbdev;
>  	int actual;
>  	int ret = -1;
> 
> +	hci = kmalloc(5, GFP_KERNEL);

Why "5" and not:
	hci = kmalloc(sizeof(*hci), GFP_KERNEL);
?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
