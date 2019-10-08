Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF52CFD42
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 17:12:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E825C87FB2;
	Tue,  8 Oct 2019 15:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QhEvaehHqYzZ; Tue,  8 Oct 2019 15:12:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CFC4A87EE8;
	Tue,  8 Oct 2019 15:12:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D57F1BF2EA
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 15:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5942586372
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 15:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LBPYBkh4X58I for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 15:12:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE303860D5
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 15:12:26 +0000 (UTC)
Received: from localhost (unknown [89.205.136.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 067A8206BB;
 Tue,  8 Oct 2019 15:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570547546;
 bh=p42gS4RtNG7UoSOthmU6Kr/tgm5UoDEQiZTKBV+2H10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2HjncGEunDfYJSuoMrFF5QeN+G7qOZn/uPzk4UIKZhphoJuKp01qiyTlT1dTPb0yV
 DFZSnPGp10m5c2AuT0LFGS5tvI7rVoUodrdgk2QOLbp+BMltwlFqgyrc9F6t8qrpxD
 HXbg+/Y2Pu3Rqj+EyNj5zhL7GtP+0EvNtF6vqpQg=
Date: Tue, 8 Oct 2019 17:12:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH v2 5/6] staging: comedi: Remove set but not used variable
 'hi'
Message-ID: <20191008151223.GB2862237@kroah.com>
References: <1570520515-2186-1-git-send-email-zhengbin13@huawei.com>
 <1570520515-2186-6-git-send-email-zhengbin13@huawei.com>
 <03d15655-46fb-5312-5770-c0ebde1dc009@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03d15655-46fb-5312-5770-c0ebde1dc009@mev.co.uk>
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

On Tue, Oct 08, 2019 at 01:56:49PM +0100, Ian Abbott wrote:
> On 08/10/2019 08:41, zhengbin wrote:
> > Fixes gcc '-Wunused-but-set-variable' warning:
> > 
> > drivers/staging/comedi/drivers/dt2815.c: In function dt2815_ao_insn:
> > drivers/staging/comedi/drivers/dt2815.c:91:19: warning: variable hi set but not used [-Wunused-but-set-variable]
> > 
> > It is not used since commit d6a929b7608a ("Staging:
> > comedi: add dt2815 driver")
> > 
> > Reported-by: Hulk Robot <hulkci@huawei.com>
> > Signed-off-by: zhengbin <zhengbin13@huawei.com>
> > ---
> >   drivers/staging/comedi/drivers/dt2815.c | 3 +--
> >   1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/drivers/dt2815.c b/drivers/staging/comedi/drivers/dt2815.c
> > index 83026ba..bcf85ec 100644
> > --- a/drivers/staging/comedi/drivers/dt2815.c
> > +++ b/drivers/staging/comedi/drivers/dt2815.c
> > @@ -88,12 +88,11 @@ static int dt2815_ao_insn(struct comedi_device *dev, struct comedi_subdevice *s,
> >   	struct dt2815_private *devpriv = dev->private;
> >   	int i;
> >   	int chan = CR_CHAN(insn->chanspec);
> > -	unsigned int lo, hi;
> > +	unsigned int lo;
> >   	int ret;
> > 
> >   	for (i = 0; i < insn->n; i++) {
> >   		lo = ((data[i] & 0x0f) << 4) | (chan << 1) | 0x01;
> > -		hi = (data[i] & 0xff0) >> 4;
> > 
> >   		ret = comedi_timeout(dev, s, insn, dt2815_ao_status, 0x00);
> >   		if (ret)
> > --
> > 2.7.4
> > 
> 
> There is something fishy going on in this one too.  It should be writing the
> 'hi' value to the card registers.
> 
> Please could you omit this patch from the series so I can investigate?

Now dropped, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
