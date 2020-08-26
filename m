Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F880253327
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Aug 2020 17:13:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 994B920506;
	Wed, 26 Aug 2020 15:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id im57ETD6m9cm; Wed, 26 Aug 2020 15:13:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AAD0B20415;
	Wed, 26 Aug 2020 15:13:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A06391BF3FD
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 15:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9982186995
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 15:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BL8e1Qx-WRLp for <devel@linuxdriverproject.org>;
 Wed, 26 Aug 2020 15:13:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9D84B868B0
 for <devel@driverdev.osuosl.org>; Wed, 26 Aug 2020 15:13:32 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id w186so1168510pgb.8
 for <devel@driverdev.osuosl.org>; Wed, 26 Aug 2020 08:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CmlsOBKmXTTcSfq5zGubBNNUb0gupInXkPP8EnZ3d+A=;
 b=ZqQGx8lCIpp9MgN3WVINar6Fy8irHzrpJRsjxGoHQTeWbqHYD6il/g9q7DvpK/dmQm
 0qW7aVa3Tr+PGt5edZDuPZxHNjlNPlIhusw3juLIWAAlHZXHD4KNjNATv1u3ZoCJvNEC
 S2smx23jdqkXqQh3IP6NS4LTsP6Gm53DxBdKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CmlsOBKmXTTcSfq5zGubBNNUb0gupInXkPP8EnZ3d+A=;
 b=hthzKyi9SoggV2m5Mm6PhPrtAd55b2t18KGPI7SzjTSLAYRGa/useAFJMlfJVw9Xdj
 mBiGDgkc0DqwBJADDSdtWXdS0Z6rvY1qAegenhmyyhFBAz/tfImnhWp0fO5ecjjGxzvT
 a7x3DK8oRcf6jpEBRj9eG19a+uqQ8dgZQziy9G9xMt+e1YT9y8niiLwDFZriY8PdYaon
 2dWWgCZFk9Na8U1LI/2TjGJ+N7rywFJu/6GsDGxOckChUEYtyGmVfTnNFFueCWIQbsQL
 B2+p0VU2BKxC7iXMMnMoWXf7Cuftr/VplF0tkNNclC0SWWmYJ4JzN8K6FwmY8/fTIK2u
 vVEw==
X-Gm-Message-State: AOAM53313jVFe7qHAlcy3LptYTf69Aqi+9TSek6aQI5yVTibId8cl+UG
 vgVWiaKwgRvIl4N77ZvQn+qp8g==
X-Google-Smtp-Source: ABdhPJz9xFq7qO/RuT9QubtB+V2mx2933Vq5WDSuN5fCly0WI0GYA2lIh7xhcXijBK2JnQjkWRm3gA==
X-Received: by 2002:a63:f909:: with SMTP id h9mr10562477pgi.250.1598454811989; 
 Wed, 26 Aug 2020 08:13:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d127sm3380122pfc.175.2020.08.26.08.13.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 08:13:30 -0700 (PDT)
Date: Wed, 26 Aug 2020 08:13:29 -0700
From: Kees Cook <keescook@chromium.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
Message-ID: <202008260811.1CE425B5C2@keescook>
References: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
 <1597873172.4030.2.camel@HansenPartnership.com>
 <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
 <20200826095528.GX1793@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200826095528.GX1793@kadam>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 linux-atm-general@lists.sourceforge.net, s.hauer@pengutronix.de,
 manohar.vanga@gmail.com, airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Allen <allen.lkml@gmail.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux1394-devel@lists.sourceforge.net, anton.ivanov@cambridgegreys.com,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, linux-input@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 jdike@addtoit.com, oakad@yahoo.com, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 Daniel Vetter <daniel@ffwll.ch>, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 26, 2020 at 12:55:28PM +0300, Dan Carpenter wrote:
> On Wed, Aug 26, 2020 at 07:21:35AM +0530, Allen Pais wrote:
> > On Thu, Aug 20, 2020 at 3:09 AM James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> > >
> > > On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > > > > [...]
> > > > > > > Since both threads seem to have petered out, let me suggest in
> > > > > > > kernel.h:
> > > > > > >
> > > > > > > #define cast_out(ptr, container, member) \
> > > > > > >     container_of(ptr, typeof(*container), member)
> > > > > > >
> > > > > > > It does what you want, the argument order is the same as
> > > > > > > container_of with the only difference being you name the
> > > > > > > containing structure instead of having to specify its type.
> > > > > >
> > > > > > Not to incessantly bike shed on the naming, but I don't like
> > > > > > cast_out, it's not very descriptive. And it has connotations of
> > > > > > getting rid of something, which isn't really true.
> > > > >
> > > > > Um, I thought it was exactly descriptive: you're casting to the
> > > > > outer container.  I thought about following the C++ dynamic casting
> > > > > style, so out_cast(), but that seemed a bit pejorative.  What about
> > > > > outer_cast()?
> > > > >
> > > > > > FWIW, I like the from_ part of the original naming, as it has
> > > > > > some clues as to what is being done here. Why not just
> > > > > > from_container()? That should immediately tell people what it
> > > > > > does without having to look up the implementation, even before
> > > > > > this becomes a part of the accepted coding norm.
> > > > >
> > > > > I'm not opposed to container_from() but it seems a little less
> > > > > descriptive than outer_cast() but I don't really care.  I always
> > > > > have to look up container_of() when I'm using it so this would just
> > > > > be another macro of that type ...
> > > > >
> > > >
> > > >  So far we have a few which have been suggested as replacement
> > > > for from_tasklet()
> > > >
> > > > - out_cast() or outer_cast()
> > > > - from_member().
> > > > - container_from() or from_container()
> > > >
> > > > from_container() sounds fine, would trimming it a bit work? like
> > > > from_cont().
> > >
> > > I'm fine with container_from().  It's the same form as container_of()
> > > and I think we need urgent agreement to not stall everything else so
> > > the most innocuous name is likely to get the widest acceptance.
> > 
> > Kees,
> > 
> >   Will you be  sending the newly proposed API to Linus? I have V2
> > which uses container_from()
> > ready to be sent out.
> 
> I liked that James swapped the first two arguments so that it matches
> container_of().  Plus it's nice that when you have:
> 
> 	struct whatever *foo = container_from(ptr, foo, member);
> 
> Then it means that "ptr == &foo->member".

I'm a bit stalled right now -- the merge window was keeping me busy, and
this week is the Linux Plumbers Conference. This is on my list, but I
haven't gotten back around to it. If you want, feel free to send the
container_from() patch; you might be able to unblock this faster than me
right now. :)

-Kees

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
