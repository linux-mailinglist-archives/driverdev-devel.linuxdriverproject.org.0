Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 422582EC2BD
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 18:51:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61D3F867ED;
	Wed,  6 Jan 2021 17:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 51kLSll57s0b; Wed,  6 Jan 2021 17:51:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F12B86739;
	Wed,  6 Jan 2021 17:51:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71F581BF479
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 17:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6E71886D06
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 17:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K+jDy1DQuUSa for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 17:51:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91B9886C10
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 17:51:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B044A2311B;
 Wed,  6 Jan 2021 17:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609955478;
 bh=AQpKhsAGsqhFg0SXDC3NmRpXTX27a/Y5tEj0l9Oqrfs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MOm/PHzou5OnLA39Woslo2/GbRyZixIxWIQdAos9BNeA/tw3KQPLkSOfjG/wJBwnI
 qpeFqDBfJsJiMe2T7cVadDGjtiJuBLVHYKNJnhoi3EMCbwk2Yl64N5e8O4ttXC2O6q
 s4qH0oqg2lGPYwVfxNioX6jSFr6Aml4M1hzB6PLs=
Date: Wed, 6 Jan 2021 18:52:39 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Filip Kolev <fil.kolev@gmail.com>
Subject: Re: [PATCH] media: atomisp: ov2722: replace hardcoded function name
Message-ID: <X/X45909l1Tk7Bni@kroah.com>
References: <20210105202945.26913-1-fil.kolev@gmail.com>
 <X/VsF364jpGz6oze@kroah.com>
 <dcdda829-89d6-badd-4f22-72d95d24e9e3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dcdda829-89d6-badd-4f22-72d95d24e9e3@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 06, 2021 at 07:43:42PM +0200, Filip Kolev wrote:
> 
> 
> On 06-Jan-21 09:51, Greg Kroah-Hartman wrote:
> > On Tue, Jan 05, 2021 at 10:29:18PM +0200, Filip Kolev wrote:
> > > There is a debug message using hardcoded function name instead of the
> > > __func__ macro. Replace it.
> > > 
> > > Report from checkpatch.pl on the file:
> > > 
> > > WARNING: Prefer using '"%s...", __func__' to using 'ov2722_remove', this function's name, in a string
> > > +	dev_dbg(&client->dev, "ov2722_remove...\n");
> > > 
> > > Signed-off-by: Filip Kolev <fil.kolev@gmail.com>
> > > ---
> > >   drivers/staging/media/atomisp/i2c/atomisp-ov2722.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
> > > index eecefcd734d0e..21d6bc62d452a 100644
> > > --- a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
> > > +++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
> > > @@ -1175,7 +1175,7 @@ static int ov2722_remove(struct i2c_client *client)
> > >   	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > >   	struct ov2722_device *dev = to_ov2722_sensor(sd);
> > > -	dev_dbg(&client->dev, "ov2722_remove...\n");
> > > +	dev_dbg(&client->dev, "%s...\n", __func__);
> > 
> > dev_dbg() provides the function name already, and this is just a "trace"
> > call, and ftrace should be used instead, so the whole line should be
> > removed entirely.
> 
> Thank you for the review!
> 
> How do I go about this? Do I amend the patch and re-send as v2 or create a
> new patch entirely?

New patch entirely please.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
