Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A549013706A
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 15:57:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC705221D9;
	Fri, 10 Jan 2020 14:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PI8PRyze3GQF; Fri, 10 Jan 2020 14:57:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED6B3221C6;
	Fri, 10 Jan 2020 14:57:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5AC421BF863
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 14:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4EBFE875E0
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 14:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OFoOHHx5m8iz for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 14:57:21 +0000 (UTC)
X-Greylist: delayed 00:15:38 by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9DA0687582
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 14:57:21 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id y4so2425765ljj.9
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 06:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fR6lP1zgvDKu/Vk7f95tLyKjHNECmLy4ZODwU6XXvRk=;
 b=oMKyFTUnPn8RNJpLhn1q02KOjxZJlZZ9VPykA25mq7Qu2JP+ihwHk0gSWGLtpxMDz2
 /AQfwwbC0TD/nXTTKi57chkFmPcoxO7vB8UkXx8YLSu1qkSDKVXKAIQHE4L4mtNkUK6B
 EEQjSgImvLDw8OhHqbgHe4K+SgwLMVLzgxRjolX/wSuQyynOf587dS5kGTkkrmHUIHlM
 /B/MDdLk0zENjZMUh1aBEDzP1Bbb2VgndUwbPqka0QYTdhNNZNEaKohUSiUYK8Bwh1uh
 hZTG7FonKTzkOi85mDmfoak7tBoRe7uxQ/W+MYnSKt+ABcPjCvy048Uy1gZbt/SUVS7z
 OCZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fR6lP1zgvDKu/Vk7f95tLyKjHNECmLy4ZODwU6XXvRk=;
 b=uTqOF/EBK+4iw+UM2HnLKtssdot+KvwSWIqAYbvOclR3+8r2mMm1oZ/DxJAA/QQca6
 ES71AVBi0gLqSbZRmIJU1L7OBk/OtWqo0N4M6XYORTLsT/Rv72NJJfSeE97ekwIIEKIi
 4mYMnLkM7pKK4M7AZU3FtEAQFBItZPpFrEO/tEkrCP1TyJ63EX0u4r4puFw1TMNtjLM5
 bFy1DANKV4owC+BCDuq21GqNTQT3LM0Rf1WELSCfaJUqVy1NQHk7d5rlr7dtlnbHer8x
 E49dOnJ8aj/R5UjsYxOJz83Muqb8hs3mycjjBM5ZrnHI110wl+Zo+zELKb6xOCy2Ln6n
 XBYw==
X-Gm-Message-State: APjAAAVm2jDJUplFTdtju1i2EibWkcT8woFUAErlg4v9OOh4mCSLpmQR
 26CqlpW2Aa8ICgCBMB8MDFXGLdSp4LXrIC+6S/pOFHx0H2Rhgg==
X-Google-Smtp-Source: APXvYqxEFT4t6ci312y+/g7e9vAaR90TUgHTNowFXe9gfh6DUIG6dMP98qv1vvSieZtNtI/KYxW53dyyPKyUy7ah+Nk=
X-Received: by 2002:adf:fc4b:: with SMTP id e11mr3904527wrs.326.1578666956616; 
 Fri, 10 Jan 2020 06:35:56 -0800 (PST)
MIME-Version: 1.0
References: <20191206085432.19962-1-michael.kupfer@fau.de>
 <3db2350b-0a6d-0693-258c-9d47f71c0627@xs4all.nl>
In-Reply-To: <3db2350b-0a6d-0693-258c-9d47f71c0627@xs4all.nl>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 10 Jan 2020 14:35:38 +0000
Message-ID: <CAPY8ntALS7Em42457fsHmUuQLD5vokKLc0RHn3a-T7amgS1Kvg@mail.gmail.com>
Subject: Re: [PATCH] staging/vc04_services/bcm2835-camera: distinct numeration
 and names for devices
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 Michael Kupfer <michael.kupfer@fau.de>, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, Dave Stevenson <dave.stevenson@raspberrypi.org>,
 rjui@broadcom.com, mchehab+samsung@kernel.org, linux-media@vger.kernel.org,
 Kay Friedrich <kay.friedrich@fau.de>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Hans

On Fri, 10 Jan 2020 at 13:25, Hans Verkuil <hverkuil-cisco@xs4all.nl> wrote:
>
> Hi Michael, Kay,
>
> On 12/6/19 9:54 AM, Michael Kupfer wrote:
> > Create a static atomic counter for numerating cameras.
> > Use the Media Subsystem Kernel Internal API to create distinct
> > device-names, so that the camera-number (given by the counter)
> > matches the camera-name.
> >
> > Co-developed-by: Kay Friedrich <kay.friedrich@fau.de>
> > Signed-off-by: Kay Friedrich <kay.friedrich@fau.de>
> > Signed-off-by: Michael Kupfer <michael.kupfer@fau.de>
> > ---
> >  .../vc04_services/bcm2835-camera/bcm2835-camera.c        | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > index beb6a0063bb8..be5f90a8b49d 100644
> > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > @@ -60,6 +60,9 @@ MODULE_PARM_DESC(max_video_width, "Threshold for video mode");
> >  module_param(max_video_height, int, 0644);
> >  MODULE_PARM_DESC(max_video_height, "Threshold for video mode");
> >
> > +/* camera instance counter */
> > +static atomic_t camera_instance = ATOMIC_INIT(0);
> > +
> >  /* global device data array */
> >  static struct bm2835_mmal_dev *gdev[MAX_BCM2835_CAMERAS];
> >
> > @@ -1870,7 +1873,6 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
> >
> >               /* v4l2 core mutex used to protect all fops and v4l2 ioctls. */
> >               mutex_init(&dev->mutex);
> > -             dev->camera_num = camera;
> >               dev->max_width = resolutions[camera][0];
> >               dev->max_height = resolutions[camera][1];
> >
> > @@ -1886,8 +1888,9 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
> >               dev->capture.fmt = &formats[3]; /* JPEG */
> >
> >               /* v4l device registration */
> > -             snprintf(dev->v4l2_dev.name, sizeof(dev->v4l2_dev.name),
> > -                      "%s", BM2835_MMAL_MODULE_NAME);
> > +             dev->camera_num = v4l2_device_set_name(&dev->v4l2_dev,
> > +                                                    BM2835_MMAL_MODULE_NAME,
> > +                                                    &camera_instance);
> >               ret = v4l2_device_register(NULL, &dev->v4l2_dev);
> >               if (ret) {
> >                       dev_err(&pdev->dev, "%s: could not register V4L2 device: %d\n",
> >
>
> Actually, in this specific case I would not use v4l2_device_set_name().
>
> Instead just use:
>
>                 snprintf(dev->v4l2_dev.name, sizeof(dev->v4l2_dev.name),
>                          "%s-%u", BM2835_MMAL_MODULE_NAME, camera);
>
> It would be even better if there would be just one top-level v4l2_device used
> for all the camera instances. After all, there really is just one platform
> device for all of the cameras, and I would expect to see just a single
> v4l2_device as well.
>
> It doesn't hurt to have multiple v4l2_device structs, but it introduces a
> slight memory overhead since one would have been sufficient.

Doesn't that make all controls for all cameras common? The struct
v4l2_ctrl_handler is part of struct v4l2_device.

Or do we:
- ditch the use of ctrl_handler in struct v4l2_device
- create and initialise a ctrl_handler per camera on an internal
structure so we retain the control state
- assign ctrl_handler in struct v4l2_fh to it every time a file handle
on the device is opened?

And if we only have one struct v4l2_device then is there the
possibility of the unique names that Michael and Kay are trying to
introduce?

I'm a little confused as to whether there really is a gain in having a
single v4l2_device. In this case the two cameras are independent
devices, even if they are loaded by a single platform driver.

  Dave

> v4l2_device_set_name() is meant for pci-like devices. And it really
> is a bit overkill to have it as a helper function.
>
> Regards,
>
>         Hans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
