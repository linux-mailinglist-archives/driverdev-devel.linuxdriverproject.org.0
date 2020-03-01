Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2B1174DF9
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Mar 2020 16:09:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA79A8651E;
	Sun,  1 Mar 2020 15:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wKuzvXa0m2Os; Sun,  1 Mar 2020 15:09:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F8C8864D8;
	Sun,  1 Mar 2020 15:09:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F9481BF2E3
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 15:09:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 70936854AD
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 15:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7DWmmXvFqkt3 for <devel@linuxdriverproject.org>;
 Sun,  1 Mar 2020 15:09:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ABA0384C29
 for <devel@driverdev.osuosl.org>; Sun,  1 Mar 2020 15:09:24 +0000 (UTC)
Received: from localhost (unknown [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00582214DB;
 Sun,  1 Mar 2020 15:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583075364;
 bh=L1d+AItbkkBXszkIwnSetgpZqP66VqdmSi0YX0Mk4EY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bZ59e6zO12/gehlMba0wC1AqoYskJYZ31aUz4qLL0ZrKxlDM8sc/4RI3soeWvuW6p
 8e7qZxnQ0j/KSyqYcHl131c+J+qPMNcBVi9Rmf00PcoQCIc6z4VBPdhRk3Yv0deJBj
 z7JsJOlgYSYYeEDeSQVfhNcc3svn+CQ9EoEtivds=
Date: Sun, 1 Mar 2020 16:09:13 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Declare a few variables as __read_mostly
Message-ID: <20200301150913.GA1470815@kroah.com>
References: <20200301112620.7892-1-oscar.carter@gmx.com>
 <20200301122514.GA1461917@kroah.com> <20200301131701.GA7487@ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301131701.GA7487@ubuntu>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 linux-kernel@vger.kernel.org, Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 01, 2020 at 02:17:01PM +0100, Oscar Carter wrote:
> On Sun, Mar 01, 2020 at 01:25:14PM +0100, Greg Kroah-Hartman wrote:
> > On Sun, Mar 01, 2020 at 12:26:20PM +0100, Oscar Carter wrote:
> > > These include module parameters.
> > >
> > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > > ---
> > >  drivers/staging/vt6656/main_usb.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> > > index 5e48b3ddb94c..701300202b21 100644
> > > --- a/drivers/staging/vt6656/main_usb.c
> > > +++ b/drivers/staging/vt6656/main_usb.c
> > > @@ -49,12 +49,12 @@ MODULE_LICENSE("GPL");
> > >  MODULE_DESCRIPTION(DEVICE_FULL_DRV_NAM);
> > >
> > >  #define RX_DESC_DEF0 64
> > > -static int vnt_rx_buffers = RX_DESC_DEF0;
> > > +static int __read_mostly vnt_rx_buffers = RX_DESC_DEF0;
> > >  module_param_named(rx_buffers, vnt_rx_buffers, int, 0644);
> > >  MODULE_PARM_DESC(rx_buffers, "Number of receive usb rx buffers");
> > >
> > >  #define TX_DESC_DEF0 64
> > > -static int vnt_tx_buffers = TX_DESC_DEF0;
> > > +static int __read_mostly vnt_tx_buffers = TX_DESC_DEF0;
> > >  module_param_named(tx_buffers, vnt_tx_buffers, int, 0644);
> > >  MODULE_PARM_DESC(tx_buffers, "Number of receive usb tx buffers");
> > >
> >
> > Why?  What does this help with?
> 
> If we declare these variables __read_mostly we can improve the performance. If
> these variables are read many more times than written, each core of a multicore
> system can maintain a copy in a local cache and the time to access is less than
> if they use the shared-cache.

This is a USB driver, performance is always limited to the hardware, not
the CPU location of variables.

Please always benchmark things to see if it actually makes sense to make
changes like this, before proposing them.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
