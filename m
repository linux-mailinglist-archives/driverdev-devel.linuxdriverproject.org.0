Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776B41D1F61
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 21:38:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35D08880A1;
	Wed, 13 May 2020 19:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LFvXTr0Y-ZB4; Wed, 13 May 2020 19:38:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E9198940B;
	Wed, 13 May 2020 19:38:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 318031BF321
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 19:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 27AA82263E
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 19:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pVlL6x3GB3ul for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 19:38:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
 [209.85.217.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 08DA222786
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 19:38:15 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id h9so543912vsa.3
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 12:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ke4uWAP9sQZ5K5ZqcbNueL/vqjGx4KuSfWacNnG9IP8=;
 b=KNAIVCs5xSS7MZJNvGuxgkkkhNsEsO5VSgsdXDdeQrNZCf9D+Sn2/2tSsN24QHNc8p
 AvOTOqWe+sx6il52JIgv4kXuEZRZ0u51yvR7MKLbd9tIyP/Xzg0IqYK18kjhr/kYWe8G
 42W/luCMqYbPVnfkpDJFoAuovJCbFmCn0DUVGtv2AI+0lmnPI1YqLE94SS104mzu4Bjn
 J7x8nTO846CB35bhaKjcdPKDUbf8Oyd0b6uSZ9hhsip1o3y4p9Xj3RyjiOkcm4fR3SZb
 rWElA7JW0rGfwLmbIywb7vTWW//w2WZ3cy/2DbHbqz7sRN8cCVSvbfjnaB4p2AXGG6Ig
 xLiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ke4uWAP9sQZ5K5ZqcbNueL/vqjGx4KuSfWacNnG9IP8=;
 b=QzlIl2Y2Mq8HsMIgwR3/aeOThaBJTxYeg7vLZg6OQkB5XfxvGtmJ2HXldf0d1+66vr
 3o+I4172dD5HxVD8rWTIOpiBTMp3OSOqzGViLAlvzS0tP20AbjKasSwEXuda1SM52XcW
 4W7baSaOlilabSpwuyzZlXEhWEdajhoQCNX3033F+NrK241fS4l7mL4EdjcwTFKMJQ7J
 FeDjWeLNqPal06Z8Zm+vWACDqzL+uzOpAaGKjQLHm9A24JzDNLkPcck1bNyVqlO0TJJN
 u1//z+fk1ZCVRjctJc8bCmhhmrwmd2fwrlaoiYl3br5GPA1bESOxs3KAavN0dG0us6GH
 RgzQ==
X-Gm-Message-State: AOAM5302SxrPPC552fCsxAXRmomMMxllE03JW8q0cVVPydMikqz3Iltg
 Cx+Jv4OZ61AjZKWxZhmpigBIoXnToBkwRYtuBQA=
X-Google-Smtp-Source: ABdhPJxXY5J5q/rrCCt9ey3fgywEcsxm9dJjt4mAdeE5DwUTG5N/TW670z8VUoUjQ46NKw8Hm0DCwBQ7+Eq+mRYUQ04=
X-Received: by 2002:a67:7f0a:: with SMTP id a10mr669800vsd.147.1589398693723; 
 Wed, 13 May 2020 12:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200507212912.599433-1-alexandre.belloni@bootlin.com>
 <20200513174530.GA32096@animalcreek.com>
In-Reply-To: <20200513174530.GA32096@animalcreek.com>
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Date: Thu, 14 May 2020 01:07:36 +0530
Message-ID: <CAAs3649-3dAmUqjLiEP8Ar3dKamp7ek1o0R5WN3g8kxTgz6fFg@mail.gmail.com>
Subject: Re: [PATCH] greybus: audio: remove unused code
To: Mark Greer <mgreer@animalcreek.com>
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
Cc: devel@driverdev.osuosl.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 13, 2020 at 11:15 PM Mark Greer <mgreer@animalcreek.com> wrote:
>
> On Thu, May 07, 2020 at 11:29:11PM +0200, Alexandre Belloni wrote:
> > GREYBUS_AUDIO_MSM8994 is not an existing configuration option and as
> > reported in September 2016, it depends on an "out-of-tree qualcomm audio
> > driver". This driver never made it upstream.
> >
> > https://lore.kernel.org/lkml/20160921073905.GA31263@kroah.com/
> >
> > Moreover, there doesn't seem to be any interest in actually fixing the
> > driver as it uses ASoC APIs that have been removed from the kernel in 2018
> > as shown by its use of snd_soc_register_codec and
> > snd_soc_codec_get_drvdata, removed in commit 999f7f5af8eb ("ASoC: remove
> > Codec related code").
> >
> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > ---
Hi Alexandre,

As mentioned in the mail archive referred, the GB Codec driver that is
currently available in kernel tree is dependent on qualcomm audio
driver. And some time later I made some minor modifications to remove
the unnecessary dependencies. However, I missed to share the same with
the community :(

Thanks to you for triggering the thread. Now, I could retrieve my local
changes and I have been in the process of updating it again to make it
compatible with latest kernel.

I'm planning to share the same here in the next few days.  I'll mark you
in CC to seek your review comments as well.

In case, I'm unable to make those changes to the staging tree, I would
also recommend to drop this code. Kindly let me know your opinion.

--
thanks,
./va

>
> Everything you say is true but it is still kinda sad to see this go.
> But that is life...  If and when someone has the motivation to get this
> working again they can take a look at the git history.
>
> Thanks for this, Alexandre.
>
> Acked-by: Mark Greer <mgreer@animalcreek.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
