Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 576A0143C6A
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jan 2020 13:00:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E1DFF204EC;
	Tue, 21 Jan 2020 12:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aGfsz+3sYbPt; Tue, 21 Jan 2020 12:00:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AFED020500;
	Tue, 21 Jan 2020 12:00:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86A081BF40A
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 12:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 82B2385429
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 12:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gD84ZLY5Gdrq for <devel@linuxdriverproject.org>;
 Tue, 21 Jan 2020 11:59:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F23C2850E1
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 11:59:58 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id v28so2648428edw.12
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 03:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jSiX5zz2vTnaHZTIQllFhI97EGPFguXdFsKsb3rblZU=;
 b=YQF+nryIbreDYQKsT+Vq6cVYKB1amnD6IVTr+9uTtsF+yqoC3cfr4Z9t6vm3CGzgg1
 Rod6OvZ4ZO7hP1kac7Su+H8AmWibUMZ5SAJPijfaKgw9US5cVTDn7KWlyJxEJ5nEsosR
 yKkDmcMrUUSvJC97OpqSQ8ZvWxTAJtgb/htEkobsRFkYu/lcqPWl5jHhfbFLYW8G103L
 cu2owgWO9EynKOvZQmbtA4NkcUpC+THGqQiH9Un8VhxbiEpHqFALTYbSOhj7OjsMf11J
 fxPkAO79PugLl4Xfzk3WCljXb1zt8YjZBfSmX32gMYYzusJjJPfXFO0UvUMfiyTahVzD
 6XYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jSiX5zz2vTnaHZTIQllFhI97EGPFguXdFsKsb3rblZU=;
 b=U6+HE451Bt3mQIiMn7F5w9BaTIzCqW5uDn/c+dJUdTutfjLyLzyhATL14FInaLDRxg
 OnTGP2zAwL8CMdai9Su+w17tOjipcuYLIikROnWbZWmC3Z2YGzXEBXDuytTof02IIIYu
 LvnhxO+HdlEq8Oq9rVJ18gcXzY6XrRNOviWylenxCAXIctVadiHY9tDjy8sqzXHNQAsz
 a0f6LEIeho9LbFmWqpV8HuKWpEdtYUnUbpMJ1m+osGLbkscIdRVgizZjd3fHVijgW8dM
 Kinz95LBQD9Eh+1KFizly93R0/VkNkfPakotth5Q3W7QYpYSVzZjZJtHSYlW/LcGXFdW
 AXsg==
X-Gm-Message-State: APjAAAVlIcuo1xku1CxxFkdnXxtWkUHBns6CynnadzlTXTdWzbNjBzga
 oCzAMC94FU15ZS63zMMs3KfhXHGwsHWKXJw0VC8=
X-Google-Smtp-Source: APXvYqxcFMRXWdad6Y1h3Chdzl/WPDJb1l2gynDLkt+Yf+IZ7vOD0hP5KCX5RWVNMnIGdpPCR6KEIodoncuVQA3mijI=
X-Received: by 2002:aa7:ce13:: with SMTP id d19mr3426381edv.296.1579607997278; 
 Tue, 21 Jan 2020 03:59:57 -0800 (PST)
MIME-Version: 1.0
References: <20200113055951.8718-1-hslester96@gmail.com>
 <20200121092350.466f62a8@litschi.hi.pengutronix.de>
In-Reply-To: <20200121092350.466f62a8@litschi.hi.pengutronix.de>
From: Chuhong Yuan <hslester96@gmail.com>
Date: Tue, 21 Jan 2020 19:59:46 +0800
Message-ID: <CANhBUQ25dp5kt3EGijLUC1LEjQon5wS8MHJqEiBNcAXSLdvjQw@mail.gmail.com>
Subject: Re: [PATCH v3] media: allegro: add missed checks in allegro_open()
To: Michael Tretter <m.tretter@pengutronix.de>
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

On Tue, Jan 21, 2020 at 4:23 PM Michael Tretter
<m.tretter@pengutronix.de> wrote:
>
> On Mon, 13 Jan 2020 13:59:51 +0800, Chuhong Yuan wrote:
> > allegro_open() misses checks for v4l2_m2m_ctx_init() and results of
> > v4l2_ctrl_new* calls.
> > Add checks and error handlers to fix the problems.
> >
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > ---
> > Changes in v3:
> >   - Make code cleaner.
> >   - Add a check for handler->error.
> >
> >  .../staging/media/allegro-dvt/allegro-core.c  | 24 +++++++++++++++----
> >  1 file changed, 20 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
> > index 6f0cd0784786..e86001e42963 100644
> > --- a/drivers/staging/media/allegro-dvt/allegro-core.c
> > +++ b/drivers/staging/media/allegro-dvt/allegro-core.c
> > @@ -2270,15 +2270,12 @@ static int allegro_open(struct file *file)
> >       struct allegro_channel *channel = NULL;
> >       struct v4l2_ctrl_handler *handler;
> >       u64 mask;
> > +     int ret;
> >
> >       channel = kzalloc(sizeof(*channel), GFP_KERNEL);
> >       if (!channel)
> >               return -ENOMEM;
> >
> > -     v4l2_fh_init(&channel->fh, vdev);
> > -     file->private_data = &channel->fh;
> > -     v4l2_fh_add(&channel->fh);
> > -
> >       init_completion(&channel->completion);
> >
> >       channel->dev = dev;
> > @@ -2328,6 +2325,11 @@ static int allegro_open(struct file *file)
> >                       V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
> >                       1, 32,
> >                       1, 1);
> > +     if (handler->error != 0) {
> > +             ret = handler->error;
> > +             goto error;
> > +     }
> > +
> >       channel->fh.ctrl_handler = handler;
> >
> >       channel->mcu_channel_id = -1;
> > @@ -2341,7 +2343,21 @@ static int allegro_open(struct file *file)
> >       channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
> >                                               allegro_queue_init);
> >
> > +     if (IS_ERR(channel->fh.m2m_ctx)) {
> > +             ret = PTR_ERR(channel->fh.m2m_ctx);
> > +             goto error;
> > +     }
> > +
> > +     v4l2_fh_init(&channel->fh, vdev);
>
> This call sets channel->fh.ctrl_handler to vdev->ctrl_handler, which
> has previously been overriden by the driver to handler. Therefore, this
> patch breaks all controls. I think we should initialize channel->fh
> before setting any fields of this struct.
>

I'm not very clear about this issue.
In my second version, Hans replied that init could be moved before return 0.
I have sent this mail to him.

> Michael
>
> > +     file->private_data = &channel->fh;
> > +     v4l2_fh_add(&channel->fh);
> > +
> >       return 0;
> > +
> > +error:
> > +     v4l2_ctrl_handler_free(handler);
> > +     kfree(channel);
> > +     return ret;
> >  }
> >
> >  static int allegro_release(struct file *file)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
