Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD9B24A3F8
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 18:24:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52A6685BDF;
	Wed, 19 Aug 2020 16:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zJDL2YXw6rEY; Wed, 19 Aug 2020 16:24:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A98784CE1;
	Wed, 19 Aug 2020 16:24:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 229C01BF2AA
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 16:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1ED1985E9F
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 16:24:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTf07A10-fRO for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 16:24:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8A7485E98
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 16:24:28 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id u24so20381411oic.7
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 09:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HU4eQwextT3u0Vy8pHWyNShnAd/EOsS2z1U17KkaX1w=;
 b=Do1SU13c8m0ev7rC+aSlATz3YC7HLEYtrWvOJM3hlYx5tibAn4nY6QBTQ6sL63+y1B
 MMICOhoWO2QuUo7XJXcNmi2U+jZFkCQmxwKcysxTB45P8s8hyGWMfAV/b9TWZwGMUstf
 eQNrTEk4Md6ORX7QTkn+vE+7QuV40o6StptyB5lbRYfwqel6HisdptT26ZHXxM5fvMgf
 Hrtd8Cg5JcovJzKRBu4i1OQaNFicedwyX0Gjkgy9VMM/toVIToznUVdAB9xldZ2UK6eB
 IrMKr2f8qBsOPZBeTcYzlGRInoJUjiFOhM2YCLXROPBSSoWa8KVaeHXHoJOeD+LqB0Ea
 LpeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HU4eQwextT3u0Vy8pHWyNShnAd/EOsS2z1U17KkaX1w=;
 b=G3ZzI+2Hq1yoAYGboXqraAM3pn4pL3z4HudlW6DwLmu/ZiSrhDS5eXizC9YX/g/v+o
 QM6iNF9v3J8Os8iIAt1D7lX+jAeZK2NHfEDPugfU51cMbeL8aSjDY2ru9cotxZ2hyLGj
 CPtcHT6t7lHGA1pG0RLG9uJwqXVbJHAWd1FZC2LDopdBw/aOyQLRlz7ohnZiOBkYGY8g
 WdWnBepqKfpwT7PGJlu46pzO4SATYM2GNwIRNbna/imkpvmPPb5yH5YSoMO1EioIjEHv
 bF5ySi9OCYJQQ/Dq1Pv0KL5aUaTBpil8ROp8eCHN9uhaD5TfjqHgfglaa12f+2tdzd4t
 HVKw==
X-Gm-Message-State: AOAM530IOYLZq+mJfsORVXK7ei3/1WpPvh+MRkRMboFef/loKFBJJlFL
 1rrAOCgTo86Qs4cqbNQaaNfWkBM7kZLQI/n+F4A=
X-Google-Smtp-Source: ABdhPJzpfHTlGoLujvQ5GY5n5H9BSvs/wYOUntKm/P0xrLOUSJQWGq951RNy2Mt1jRO58Yz8dbZ6uoLPp4/f2bRhLs0=
X-Received: by 2002:a05:6808:4c5:: with SMTP id
 a5mr3863067oie.175.1597854268104; 
 Wed, 19 Aug 2020 09:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
In-Reply-To: <1597849185.3875.7.camel@HansenPartnership.com>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 19 Aug 2020 21:54:16 +0530
Message-ID: <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: James Bottomley <James.Bottomley@hansenpartnership.com>
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
 linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
 airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 jdike@addtoit.com, Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
 s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
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

> [...]
> > > Since both threads seem to have petered out, let me suggest in
> > > kernel.h:
> > >
> > > #define cast_out(ptr, container, member) \
> > >     container_of(ptr, typeof(*container), member)
> > >
> > > It does what you want, the argument order is the same as
> > > container_of with the only difference being you name the containing
> > > structure instead of having to specify its type.
> >
> > Not to incessantly bike shed on the naming, but I don't like
> > cast_out, it's not very descriptive. And it has connotations of
> > getting rid of something, which isn't really true.
>
> Um, I thought it was exactly descriptive: you're casting to the outer
> container.  I thought about following the C++ dynamic casting style, so
> out_cast(), but that seemed a bit pejorative.  What about outer_cast()?
>
> > FWIW, I like the from_ part of the original naming, as it has some
> > clues as to what is being done here. Why not just from_container()?
> > That should immediately tell people what it does without having to
> > look up the implementation, even before this becomes a part of the
> > accepted coding norm.
>
> I'm not opposed to container_from() but it seems a little less
> descriptive than outer_cast() but I don't really care.  I always have
> to look up container_of() when I'm using it so this would just be
> another macro of that type ...
>

 So far we have a few which have been suggested as replacement
for from_tasklet()

- out_cast() or outer_cast()
- from_member().
- container_from() or from_container()

from_container() sounds fine, would trimming it a bit work? like from_cont().

-- 
       - Allen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
