Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A1D143EA5
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jan 2020 14:53:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B487864F3;
	Tue, 21 Jan 2020 13:53:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1dS-0+LfphsP; Tue, 21 Jan 2020 13:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD7E486447;
	Tue, 21 Jan 2020 13:53:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAC151BF38E
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 13:53:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C2D8185D22
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 13:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jMkHyVTEqe8o for <devel@linuxdriverproject.org>;
 Tue, 21 Jan 2020 13:53:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2FB60855F7
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 13:53:14 +0000 (UTC)
Received: from litschi.hi.pengutronix.de
 ([2001:67c:670:100:feaa:14ff:fe6a:8db5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <m.tretter@pengutronix.de>)
 id 1ittxt-0003p7-7p; Tue, 21 Jan 2020 14:53:09 +0100
Date: Tue, 21 Jan 2020 14:53:06 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH v3] media: allegro: add missed checks in allegro_open()
Message-ID: <20200121145306.1e144782@litschi.hi.pengutronix.de>
In-Reply-To: <CANhBUQ25dp5kt3EGijLUC1LEjQon5wS8MHJqEiBNcAXSLdvjQw@mail.gmail.com>
References: <20200113055951.8718-1-hslester96@gmail.com>
 <20200121092350.466f62a8@litschi.hi.pengutronix.de>
 <CANhBUQ25dp5kt3EGijLUC1LEjQon5wS8MHJqEiBNcAXSLdvjQw@mail.gmail.com>
Organization: Pengutronix
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:feaa:14ff:fe6a:8db5
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 21 Jan 2020 19:59:46 +0800, Chuhong Yuan wrote:
> On Tue, Jan 21, 2020 at 4:23 PM Michael Tretter
> <m.tretter@pengutronix.de> wrote:
> >
> > On Mon, 13 Jan 2020 13:59:51 +0800, Chuhong Yuan wrote:  
> > > allegro_open() misses checks for v4l2_m2m_ctx_init() and results of
> > > v4l2_ctrl_new* calls.
> > > Add checks and error handlers to fix the problems.
> > >
> > > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > > ---
> > > Changes in v3:
> > >   - Make code cleaner.
> > >   - Add a check for handler->error.
> > >
> > >  .../staging/media/allegro-dvt/allegro-core.c  | 24 +++++++++++++++----
> > >  1 file changed, 20 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
> > > index 6f0cd0784786..e86001e42963 100644
> > > --- a/drivers/staging/media/allegro-dvt/allegro-core.c
> > > +++ b/drivers/staging/media/allegro-dvt/allegro-core.c
> > > @@ -2270,15 +2270,12 @@ static int allegro_open(struct file *file)
> > >       struct allegro_channel *channel = NULL;
> > >       struct v4l2_ctrl_handler *handler;
> > >       u64 mask;
> > > +     int ret;
> > >
> > >       channel = kzalloc(sizeof(*channel), GFP_KERNEL);
> > >       if (!channel)
> > >               return -ENOMEM;
> > >
> > > -     v4l2_fh_init(&channel->fh, vdev);
> > > -     file->private_data = &channel->fh;
> > > -     v4l2_fh_add(&channel->fh);
> > > -
> > >       init_completion(&channel->completion);
> > >
> > >       channel->dev = dev;
> > > @@ -2328,6 +2325,11 @@ static int allegro_open(struct file *file)
> > >                       V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
> > >                       1, 32,
> > >                       1, 1);
> > > +     if (handler->error != 0) {
> > > +             ret = handler->error;
> > > +             goto error;
> > > +     }
> > > +
> > >       channel->fh.ctrl_handler = handler;
> > >
> > >       channel->mcu_channel_id = -1;
> > > @@ -2341,7 +2343,21 @@ static int allegro_open(struct file *file)
> > >       channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
> > >                                               allegro_queue_init);
> > >
> > > +     if (IS_ERR(channel->fh.m2m_ctx)) {
> > > +             ret = PTR_ERR(channel->fh.m2m_ctx);
> > > +             goto error;
> > > +     }
> > > +
> > > +     v4l2_fh_init(&channel->fh, vdev);  
> >
> > This call sets channel->fh.ctrl_handler to vdev->ctrl_handler, which
> > has previously been overriden by the driver to handler. Therefore, this
> > patch breaks all controls. I think we should initialize channel->fh
> > before setting any fields of this struct.
> >  
> 
> I'm not very clear about this issue.
> In my second version, Hans replied that init could be moved before return 0.
> I have sent this mail to him.

This driver uses its own v4l2_ctrl_handler, which is initialized in this
function (see the "handler" variable). After the initialization, the
handler is added to the fh as

	channel->fh.ctrl_handler = handler;

to override the ctrl_handler of the fh.

However, the v4l2_fh_init() function re-initializes the ctrl_handler of
the fh

	/* Inherit from video_device. May be overridden by the driver. */
	fh->ctrl_handler = vdev->ctrl_handler;

which reverts the ctrl_handler override by the driver.

Therefore, the ctrl_handler must be overridden after the call to
v4l2_fh_init().

Michael

> 
> > Michael
> >  
> > > +     file->private_data = &channel->fh;
> > > +     v4l2_fh_add(&channel->fh);
> > > +
> > >       return 0;
> > > +
> > > +error:
> > > +     v4l2_ctrl_handler_free(handler);
> > > +     kfree(channel);
> > > +     return ret;
> > >  }
> > >
> > >  static int allegro_release(struct file *file)  
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
