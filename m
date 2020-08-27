Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC7E253B7E
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 03:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1CEA86C40;
	Thu, 27 Aug 2020 01:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pz7zPRZWQBy0; Thu, 27 Aug 2020 01:38:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6E3586C32;
	Thu, 27 Aug 2020 01:38:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E540C1BF373
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 01:38:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E1DA786C32
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 01:38:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TiPIFnleIsUx for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 01:38:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 15B1C86C2D
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 01:38:00 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id b9so3318724oiy.3
 for <devel@driverdev.osuosl.org>; Wed, 26 Aug 2020 18:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rsb5LLd+wEYl5+11BE05ItDTZCXQhjeMW019xM5KW9w=;
 b=I80xaBRJ50n8a6fI5zGd+zDFXBJzdkM/CYwdFxWUUjYU3c+2p64n4BZ92Q57vwyNvT
 WA9AXEE5mkmSWs9RicapGSPmYl7SBg2jYYPKSa/nI/+15pdR7K1Y4Cu0DHfnjPwN8yXR
 icr8tNGeIcQL3s2nHPbJyB6yfauHJDS+gWazTyaRFZfsu6K/xYzwtyDy670Ye8cnRtyg
 TR/hJM9qLFyVWX5fPwsxGxi/JNo/PLB2M5jflTu50Xv+DnpTnsNDIefohCCH/iR6ipaV
 nyjrEne62FM9W1doljqrO4mZtREkO1PUraYtOXDLLpGubpcLL1+FWyQrEJDylKkUrU3D
 wKgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rsb5LLd+wEYl5+11BE05ItDTZCXQhjeMW019xM5KW9w=;
 b=CP2+W5VaAMT89LhbsuuH0fqkqQV5B387dLIi115Sz7FkMM17nlJaZGbg+EOOr9aiAT
 IfIWK8XBhSiAG1Wx5HmLD69aX2erKAAw9X/7ZBr2tq5omEDWM9hPSgB9CzEHZziURMoZ
 JpNWu9kpiyK7Dvr1VH5xBp8R4EZB9UDpJpufJ52V5HyCulz7LK2Es6P6YigDM4gltdFc
 D1KzdVeiFu5f6N93863ZyoDg/eEzStEqzBVDH+PU7M2R95yBx+IbsLNadR59NudA+gd1
 kL4uF0dJ/tvcyHYCaiT3eoTGvhxRZOEzmD/aEpeCxYmWAp9UR6V8l+Q36yaD27fDRN1G
 fuMg==
X-Gm-Message-State: AOAM530Q9N5IPEHSOqEqjmW4vRroKnB2Aka64jqxB7k6Er1+up/izw9n
 gvFd8YtSxI/ZhlsA0IYzMrY7X/BmGESrKv8p4s8=
X-Google-Smtp-Source: ABdhPJwhCHTUyQeL6NO7VZ9TErlPHSPJaUSJlRG8on4DJcl3XVowSsSaDNvfXk39W2OiRUOfnXZzLQickeYXItlZbbE=
X-Received: by 2002:aca:ec95:: with SMTP id k143mr5299041oih.76.1598492278869; 
 Wed, 26 Aug 2020 18:37:58 -0700 (PDT)
MIME-Version: 1.0
References: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
 <1597873172.4030.2.camel@HansenPartnership.com>
 <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
 <20200826095528.GX1793@kadam> <202008260811.1CE425B5C2@keescook>
In-Reply-To: <202008260811.1CE425B5C2@keescook>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 27 Aug 2020 07:07:47 +0530
Message-ID: <CAOMdWSLyacdeoqnZBuLu6z1B6cY-WbtUJQm6+8=WHyE49tVaEg@mail.gmail.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: Kees Cook <keescook@chromium.org>
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
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux1394-devel@lists.sourceforge.net, anton.ivanov@cambridgegreys.com,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, linux-input@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 jdike@addtoit.com, Dan Carpenter <dan.carpenter@oracle.com>, oakad@yahoo.com,
 intel-gfx@lists.freedesktop.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, Mark Brown <broonie@kernel.org>,
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

On Wed, Aug 26, 2020 at 8:43 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Aug 26, 2020 at 12:55:28PM +0300, Dan Carpenter wrote:
> > On Wed, Aug 26, 2020 at 07:21:35AM +0530, Allen Pais wrote:
> > > On Thu, Aug 20, 2020 at 3:09 AM James Bottomley
> > > <James.Bottomley@hansenpartnership.com> wrote:
> > > >
> > > > On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > > > > > [...]
> > > > > > > > Since both threads seem to have petered out, let me suggest in
> > > > > > > > kernel.h:
> > > > > > > >
> > > > > > > > #define cast_out(ptr, container, member) \
> > > > > > > >     container_of(ptr, typeof(*container), member)
> > > > > > > >
> > > > > > > > It does what you want, the argument order is the same as
> > > > > > > > container_of with the only difference being you name the
> > > > > > > > containing structure instead of having to specify its type.
> > > > > > >
> > > > > > > Not to incessantly bike shed on the naming, but I don't like
> > > > > > > cast_out, it's not very descriptive. And it has connotations of
> > > > > > > getting rid of something, which isn't really true.
> > > > > >
> > > > > > Um, I thought it was exactly descriptive: you're casting to the
> > > > > > outer container.  I thought about following the C++ dynamic casting
> > > > > > style, so out_cast(), but that seemed a bit pejorative.  What about
> > > > > > outer_cast()?
> > > > > >
> > > > > > > FWIW, I like the from_ part of the original naming, as it has
> > > > > > > some clues as to what is being done here. Why not just
> > > > > > > from_container()? That should immediately tell people what it
> > > > > > > does without having to look up the implementation, even before
> > > > > > > this becomes a part of the accepted coding norm.
> > > > > >
> > > > > > I'm not opposed to container_from() but it seems a little less
> > > > > > descriptive than outer_cast() but I don't really care.  I always
> > > > > > have to look up container_of() when I'm using it so this would just
> > > > > > be another macro of that type ...
> > > > > >
> > > > >
> > > > >  So far we have a few which have been suggested as replacement
> > > > > for from_tasklet()
> > > > >
> > > > > - out_cast() or outer_cast()
> > > > > - from_member().
> > > > > - container_from() or from_container()
> > > > >
> > > > > from_container() sounds fine, would trimming it a bit work? like
> > > > > from_cont().
> > > >
> > > > I'm fine with container_from().  It's the same form as container_of()
> > > > and I think we need urgent agreement to not stall everything else so
> > > > the most innocuous name is likely to get the widest acceptance.
> > >
> > > Kees,
> > >
> > >   Will you be  sending the newly proposed API to Linus? I have V2
> > > which uses container_from()
> > > ready to be sent out.
> >
> > I liked that James swapped the first two arguments so that it matches
> > container_of().  Plus it's nice that when you have:
> >
> >       struct whatever *foo = container_from(ptr, foo, member);
> >
> > Then it means that "ptr == &foo->member".
>
> I'm a bit stalled right now -- the merge window was keeping me busy, and
> this week is the Linux Plumbers Conference. This is on my list, but I
> haven't gotten back around to it. If you want, feel free to send the
> container_from() patch; you might be able to unblock this faster than me
> right now. :)
>

Sure, Thanks.



-- 
       - Allen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
