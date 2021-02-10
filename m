Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D63531608F
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 09:07:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE46385CD0;
	Wed, 10 Feb 2021 08:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V0HC6OgaAbr9; Wed, 10 Feb 2021 08:07:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4F488598A;
	Wed, 10 Feb 2021 08:07:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2E711BF330
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CFA62855F6
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mZP1CsXz4Pac for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 08:06:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6F1728584A
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 08:06:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 70194601FF;
 Wed, 10 Feb 2021 08:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612944419;
 bh=o/TOPS3k0kpXwL2Hy6xpabDld9yXGPoEwFHlhrBz/bI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DE+CAPc4vpkx4cmyO2B7uX8dzdvGhplkcvuXkxl16dJmd2MfshXH2DWSPZxK4uh2S
 9fSvsN/hbmhGHAucDpGvkjmJ17C65Co20T4x/e06Arf35vSzjTgd9DAJyBY9yGIrHg
 I41SFYwWCqMeqrmfv/mK/ELI/neyV0TFImilxRY4=
Date: Wed, 10 Feb 2021 09:06:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amey Narkhede <ameynarkhede03@gmail.com>
Subject: Re: [PATCH v2] staging: gdm724x: Fix DMA from stack
Message-ID: <YCOUIFVuvJuPP3lX@kroah.com>
References: <20210210080134.1978-1-ameynarkhede03@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210080134.1978-1-ameynarkhede03@gmail.com>
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

On Wed, Feb 10, 2021 at 01:31:34PM +0530, Amey Narkhede wrote:
> Stack allocated buffers cannot be used for DMA
> on all architectures so allocate hci_packet buffer
> using kzalloc().
> 
> Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> ---
> Changes in v2:
> 	- Fixed build warning
> 	- Fixed memory leak using kfree
> 
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

checkpatch did not complain about this?

And why do you need 'buf' anymore now?  Why not just allocate hci and
pass that to the request instead?  Saves you an extra cast and an extra
pointer.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
