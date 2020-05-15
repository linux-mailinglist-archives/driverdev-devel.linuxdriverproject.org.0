Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B38DD1D4F70
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 15:44:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A37288D55;
	Fri, 15 May 2020 13:44:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KsyTukbDqBYi; Fri, 15 May 2020 13:44:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F74C880FB;
	Fri, 15 May 2020 13:44:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 540CC1BF2A1
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 13:44:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 50F6887AED
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 13:44:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ovpPFfKAlQhk for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 13:44:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B3AE887ADF
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 13:44:14 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FED420657;
 Fri, 15 May 2020 13:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589550254;
 bh=r+eQELqrjBFddckG+Gt03LDcdnmhomqDE2Tftv04Fr4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dMa9Tj35qNPBPJTGs1EME9EvNtrPJWYTB9yUNjyyWX7vjz+zVlSeWKP9QlqDJ342d
 paRbvUDpSJsMiQ/hguOnmnqH4SuxjgKwnFwTE/b7wDRrVMi3T4JordOKtzxdgKSXHt
 3WgzAimPEq2T2kXGisLnbuwstRyPHQocD5xePv2g=
Date: Fri, 15 May 2020 15:44:12 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [PATCH] greybus: audio: remove unused code
Message-ID: <20200515134412.GA2083757@kroah.com>
References: <20200507212912.599433-1-alexandre.belloni@bootlin.com>
 <20200513174530.GA32096@animalcreek.com>
 <CAAs3649-3dAmUqjLiEP8Ar3dKamp7ek1o0R5WN3g8kxTgz6fFg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAs3649-3dAmUqjLiEP8Ar3dKamp7ek1o0R5WN3g8kxTgz6fFg@mail.gmail.com>
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
 Alex Elder <elder@kernel.org>, linux-kernel@vger.kernel.org,
 Mark Greer <mgreer@animalcreek.com>, greybus-dev@lists.linaro.org,
 Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 14, 2020 at 01:07:36AM +0530, Vaibhav Agarwal wrote:
> On Wed, May 13, 2020 at 11:15 PM Mark Greer <mgreer@animalcreek.com> wrote:
> >
> > On Thu, May 07, 2020 at 11:29:11PM +0200, Alexandre Belloni wrote:
> > > GREYBUS_AUDIO_MSM8994 is not an existing configuration option and as
> > > reported in September 2016, it depends on an "out-of-tree qualcomm audio
> > > driver". This driver never made it upstream.
> > >
> > > https://lore.kernel.org/lkml/20160921073905.GA31263@kroah.com/
> > >
> > > Moreover, there doesn't seem to be any interest in actually fixing the
> > > driver as it uses ASoC APIs that have been removed from the kernel in 2018
> > > as shown by its use of snd_soc_register_codec and
> > > snd_soc_codec_get_drvdata, removed in commit 999f7f5af8eb ("ASoC: remove
> > > Codec related code").
> > >
> > > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > > ---
> Hi Alexandre,
> 
> As mentioned in the mail archive referred, the GB Codec driver that is
> currently available in kernel tree is dependent on qualcomm audio
> driver. And some time later I made some minor modifications to remove
> the unnecessary dependencies. However, I missed to share the same with
> the community :(
> 
> Thanks to you for triggering the thread. Now, I could retrieve my local
> changes and I have been in the process of updating it again to make it
> compatible with latest kernel.
> 
> I'm planning to share the same here in the next few days.  I'll mark you
> in CC to seek your review comments as well.

I'll give you a few more days for that patch to be sent before I apply
this one...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
