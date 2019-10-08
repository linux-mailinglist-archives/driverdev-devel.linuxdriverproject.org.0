Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE497CFD40
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 17:12:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17494860F2;
	Tue,  8 Oct 2019 15:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7fLlsdedGCM7; Tue,  8 Oct 2019 15:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D84B2860EA;
	Tue,  8 Oct 2019 15:12:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D4DF21BF2EA
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 15:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D15BB86372
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 15:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wnDZRVhRLr2C for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 15:12:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16EAB860D5
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 15:12:07 +0000 (UTC)
Received: from localhost (unknown [89.205.136.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CA13206BB;
 Tue,  8 Oct 2019 15:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570547526;
 bh=Ad+IHtMYB6KNA0HMz0d7EV6r806nIyb+RTadCXaQeLY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aPai4jqfXGfLiZFllDR+mjrwH1u9BJPwYrBFXR7ubpEe6D/xsSnmNIyke7B2A3g/c
 rc5iAJbN+Ct+YYciyWUqWMjNbhKdjJu8tQbI4pMBMfsfKpke2C7Lw/aaEIYDyLZmip
 a14/oqo4s+JEbl+3+bofHRKvL63o4B959Buq2f58=
Date: Tue, 8 Oct 2019 17:12:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH v2 4/6] staging: comedi: Remove set but not used variable
 'data'
Message-ID: <20191008151203.GA2862237@kroah.com>
References: <1570520515-2186-1-git-send-email-zhengbin13@huawei.com>
 <1570520515-2186-5-git-send-email-zhengbin13@huawei.com>
 <706c0f36-d616-3562-84c5-f0582d0bcbe9@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <706c0f36-d616-3562-84c5-f0582d0bcbe9@mev.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, zhengbin <zhengbin13@huawei.com>,
 eric@anholt.net, wahrenst@gmx.net, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 01:55:01PM +0100, Ian Abbott wrote:
> On 08/10/2019 08:41, zhengbin wrote:
> > Fixes gcc '-Wunused-but-set-variable' warning:
> > 
> > drivers/staging/comedi/drivers/dt2814.c: In function dt2814_interrupt:
> > drivers/staging/comedi/drivers/dt2814.c:193:6: warning: variable data set but not used [-Wunused-but-set-variable]
> > 
> > It is not used since commit 7806012e97ed ("staging:
> > comedi: refactor dt2814 driver and use module_comedi_driver")
> > 
> > Reported-by: Hulk Robot <hulkci@huawei.com>
> > Signed-off-by: zhengbin <zhengbin13@huawei.com>
> > ---
> >   drivers/staging/comedi/drivers/dt2814.c | 3 ---
> >   1 file changed, 3 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
> > index d2c7157..4825168 100644
> > --- a/drivers/staging/comedi/drivers/dt2814.c
> > +++ b/drivers/staging/comedi/drivers/dt2814.c
> > @@ -190,7 +190,6 @@ static irqreturn_t dt2814_interrupt(int irq, void *d)
> >   	struct comedi_device *dev = d;
> >   	struct dt2814_private *devpriv = dev->private;
> >   	struct comedi_subdevice *s = dev->read_subdev;
> > -	int data;
> > 
> >   	if (!dev->attached) {
> >   		dev_err(dev->class_dev, "spurious interrupt\n");
> > @@ -200,8 +199,6 @@ static irqreturn_t dt2814_interrupt(int irq, void *d)
> >   	hi = inb(dev->iobase + DT2814_DATA);
> >   	lo = inb(dev->iobase + DT2814_DATA);
> > 
> > -	data = (hi << 4) | (lo >> 4);
> > -
> >   	if (!(--devpriv->ntrig)) {
> >   		int i;
> > 
> > --
> > 2.7.4
> > 
> 
> There is something fishy going on there.  The driver ought to be writing the
> data to a buffer.
> 
> Can I suggest omitting this patch from the series so I can investigate and
> supply a proper fix?

Now dropped.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
