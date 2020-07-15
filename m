Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E240622073D
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 10:30:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F79A8AA37;
	Wed, 15 Jul 2020 08:30:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wBigePuHyprl; Wed, 15 Jul 2020 08:30:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F8448AA29;
	Wed, 15 Jul 2020 08:30:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 926E61BF407
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 08:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8C4A78856C
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 08:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3-bLMR8G0C4O for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 08:30:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 75FA288497
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 08:30:44 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id s9so1574562ljm.11
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 01:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B3ejnOQQmWzHP79lAAQ13IkNooDDg0zjPEA+y5ajSb0=;
 b=tQqCdYlGVkLA0Ex5TiEzuW15QH8ndclmX2zY537HleDy175mergZI0Vit13wECLCfM
 uDQc7A6zQFdzqF6OFVTjKw1u368mN6BOaN6oQ3DROu1GyJFJxuucJQBveTlVNY5TSpFd
 6hrrrf87ZbsyGY7gDGpjwKWUzgGDZNlddX5II8fUjxxV/VukTyr5cTiDn0kk9o1kNfqy
 Moj/5e49U6whIGBo3EdrG9U7hVd6E+VHyS6x/6CgNk4swNC83guuUZI4Yi9MC3dAdqnb
 G/bNwEZ3+nPMXVpxfX2Zm8+jKF3Ikzfgi/ckCQHp9HU0JKYRSnKIxV0ProUF271g6bff
 hqoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B3ejnOQQmWzHP79lAAQ13IkNooDDg0zjPEA+y5ajSb0=;
 b=QN6Ejy/tA10v/P0hRerb4mtycEF4sWkIy2NOyknf9VLuqnyjANYWuznmJ3pXXG4zT5
 eio5VrNrKnabtyPek5Bycy2A39UKWctS+hIu1zZZSy1z5MQfr5r+PoA+peU2zr7EaEO+
 tYyOtqXort3YcO7tERN7ras1ukzEyu3XvZlrDkkHhU0z7zWKW5HXL594PcAa5tc5mtWN
 4t5pM4D/1We3EJ7PaXT2mYu6Y0zKTUMJs0B04IiTpyCbWohfY7zlo6EvyS7VCTFOYq2W
 ezjgOHmmqd7VDrDA7FxlIIjVhKvr9WaM/YrgLsikaeRSCTCgnWJztHuwhto1ssrFN3pO
 xIig==
X-Gm-Message-State: AOAM531OnBt6MlZ7nsyTgqjFrh8CKVaWkQAZYN1GBBnryZ5BxOm4zc9A
 3AMAJPOOX9zfgL9QzyGt5fcvC/oQIAs6VwZjb65FUw==
X-Google-Smtp-Source: ABdhPJy/3vzGGaIc88bO0IRdpA4YoVp/+trw/nQY1R4popXldKj99HgF+jRfT2fOY4FBGKh56wwwmlenF5cSUCI0Wns=
X-Received: by 2002:a2e:9cd6:: with SMTP id g22mr4516750ljj.429.1594801841908; 
 Wed, 15 Jul 2020 01:30:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
 <20200715070842.GA2303720@kroah.com>
In-Reply-To: <20200715070842.GA2303720@kroah.com>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Wed, 15 Jul 2020 04:30:30 -0400
Message-ID: <CAAhDqq3_4=5J8oYpNVWu-M-JuLWDJSFQ89YDL5qmS6saDm_aFQ@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: comedi_fops.c: changed type in
 assignment to unsigned int *
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 3:08 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jul 15, 2020 at 12:48:13AM -0400, B K Karthik wrote:
> > fixed a sparse warning by changing the type in
> > assignment from void [noderef] __user * to unsigned int *
> > (different address space)
> >
> > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > ---
> >  drivers/staging/comedi/comedi_fops.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > index 3f70e5dfac39..4cc012e231b7 100644
> > --- a/drivers/staging/comedi/comedi_fops.c
> > +++ b/drivers/staging/comedi/comedi_fops.c
> > @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> >       cmd->scan_end_arg = v32.scan_end_arg;
> >       cmd->stop_src = v32.stop_src;
> >       cmd->stop_arg = v32.stop_arg;
> > -     cmd->chanlist = compat_ptr(v32.chanlist);
> > +     cmd->chanlist = (unsigned int *) compat_ptr(v32.chanlist);
> >       cmd->chanlist_len = v32.chanlist_len;
> >       cmd->data = compat_ptr(v32.data);
> >       cmd->data_len = v32.data_len;
>
> Always run your patches through checkpatch before sending them, so you
> do not have a grumpy maintainer telling you that you have to run
> checkpatch on your patch before sending them.

I will, Sorry for that.

But this particular error which showed up after running checkpatch is
something 'git format-patch' does unintentionally.
It has been reported to the maintainers.

thanks,

karthik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
