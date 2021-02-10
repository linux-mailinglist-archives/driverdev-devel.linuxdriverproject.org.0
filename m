Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 070123161BC
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 10:09:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD38686710;
	Wed, 10 Feb 2021 09:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0JI71qxSOf4W; Wed, 10 Feb 2021 09:09:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E6CB866A9;
	Wed, 10 Feb 2021 09:09:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE9761BF3A7
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 09:09:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB2D587264
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 09:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y1MALgKB9ywW for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 09:09:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 38CA587259
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 09:09:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3B37B64E53;
 Wed, 10 Feb 2021 09:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612948153;
 bh=JeAKwEtzgqGCw6CFOaksMkSTwUMVf0rtgYMmRNER66c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fb7bQ2h9/YqZFmNJG2/xrpJTRU/CgkGBUSpHS/Ytn2XgH2Vy9kExs5z1INUC2vopr
 slIBlWV25ylralQUIuS4RFQ9aqvfSrVDDnFOVhPHi4uAv+JtVIhIDtQDJt81jKrGaN
 dekSZ4C9l7KHaFIGNybn2FARbpQod8OGQwq8TXdM=
Date: Wed, 10 Feb 2021 10:09:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amey Narkhede <ameynarkhede03@gmail.com>
Subject: Re: [PATCH v2] staging: gdm724x: Fix DMA from stack
Message-ID: <YCOit8SI7k1Gv7dl@kroah.com>
References: <20210210080134.1978-1-ameynarkhede03@gmail.com>
 <YCOUIFVuvJuPP3lX@kroah.com>
 <20210210085811.7dunnfly6cqw67m3@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210085811.7dunnfly6cqw67m3@archlinux>
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

On Wed, Feb 10, 2021 at 02:28:11PM +0530, Amey Narkhede wrote:
> On 21/02/10 09:06AM, Greg KH wrote:
> > On Wed, Feb 10, 2021 at 01:31:34PM +0530, Amey Narkhede wrote:
> > > Stack allocated buffers cannot be used for DMA
> > > on all architectures so allocate hci_packet buffer
> > > using kzalloc().
> > >
> > > Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> > > ---
> > > Changes in v2:
> > > 	- Fixed build warning
> > > 	- Fixed memory leak using kfree
> > >
> > >  drivers/staging/gdm724x/gdm_usb.c | 9 +++++++--
> > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> > > index dc4da66c3..c4a9b90c5 100644
> > > --- a/drivers/staging/gdm724x/gdm_usb.c
> > > +++ b/drivers/staging/gdm724x/gdm_usb.c
> > > @@ -56,11 +56,15 @@ static int gdm_usb_recv(void *priv_dev,
> > >
> > >  static int request_mac_address(struct lte_udev *udev)
> > >  {
> > > -	u8 buf[16] = {0,};
> > > -	struct hci_packet *hci = (struct hci_packet *)buf;
> > > +	u8 *buf;
> > > +	struct hci_packet *hci;
> > >  	struct usb_device *usbdev = udev->usbdev;
> > >  	int actual;
> > >  	int ret = -1;
> > > +	buf = kzalloc(16, GFP_KERNEL);
> >
> > checkpatch did not complain about this?
> No. checkpatch shows no errors and warnings.

Please add a blank line after variables and before logic.

> > And why do you need 'buf' anymore now?  Why not just allocate hci and
> > pass that to the request instead?  Saves you an extra cast and an extra
> > pointer.
> >
> > thanks,
> >
> > greg k-h
> Thanks. I'll send v3. I assume now we don't need kzalloc anymore as we initialize
> the hci_packet so kmalloc(sizeof(struct hci_packet),..) will do.

Why is it needed now?  And why would that change?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
