Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42E224A8A3
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 23:39:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB01B88182;
	Wed, 19 Aug 2020 21:39:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ThME5jFhm4kO; Wed, 19 Aug 2020 21:39:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9BC5288171;
	Wed, 19 Aug 2020 21:39:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E0D391BF3B9
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 21:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C3A7422650
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 21:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yF83aDqw5aex for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 21:39:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by silver.osuosl.org (Postfix) with ESMTPS id B8A1A21556
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 21:39:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 770738EE1F3;
 Wed, 19 Aug 2020 14:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1597873176;
 bh=P5Nf0m7rIb0VsmSGOAvsuubsuKdLazFJ3PWgYJpOQYo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=QZWzNY/RNv5GTOLC344QkDqvWPLVlJoIZZa/1SvyuRWg2n4Pm6sT1giNF3hS4dmal
 2AgGeohtLxDuIx9MBYzKgKxS5vVGSeJVIhAssuqGCPXbCp5oJD0WlnV+VnG46ikJ5j
 S3mk3MHG2hrcnsbyoMzE7CI3TS+/7QS3hnb2Remw=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id bHKZiEX-QbYl; Wed, 19 Aug 2020 14:39:36 -0700 (PDT)
Received: from [153.66.254.174] (c-73-35-198-56.hsd1.wa.comcast.net
 [73.35.198.56])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 07F3F8EE0E9;
 Wed, 19 Aug 2020 14:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1597873176;
 bh=P5Nf0m7rIb0VsmSGOAvsuubsuKdLazFJ3PWgYJpOQYo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=QZWzNY/RNv5GTOLC344QkDqvWPLVlJoIZZa/1SvyuRWg2n4Pm6sT1giNF3hS4dmal
 2AgGeohtLxDuIx9MBYzKgKxS5vVGSeJVIhAssuqGCPXbCp5oJD0WlnV+VnG46ikJ5j
 S3mk3MHG2hrcnsbyoMzE7CI3TS+/7QS3hnb2Remw=
Message-ID: <1597873172.4030.2.camel@HansenPartnership.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Allen <allen.lkml@gmail.com>
Date: Wed, 19 Aug 2020 14:39:32 -0700
In-Reply-To: <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
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
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
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

On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > [...]
> > > > Since both threads seem to have petered out, let me suggest in
> > > > kernel.h:
> > > > 
> > > > #define cast_out(ptr, container, member) \
> > > >     container_of(ptr, typeof(*container), member)
> > > > 
> > > > It does what you want, the argument order is the same as
> > > > container_of with the only difference being you name the
> > > > containing structure instead of having to specify its type.
> > > 
> > > Not to incessantly bike shed on the naming, but I don't like
> > > cast_out, it's not very descriptive. And it has connotations of
> > > getting rid of something, which isn't really true.
> > 
> > Um, I thought it was exactly descriptive: you're casting to the
> > outer container.  I thought about following the C++ dynamic casting
> > style, so out_cast(), but that seemed a bit pejorative.  What about
> > outer_cast()?
> > 
> > > FWIW, I like the from_ part of the original naming, as it has
> > > some clues as to what is being done here. Why not just
> > > from_container()? That should immediately tell people what it
> > > does without having to look up the implementation, even before
> > > this becomes a part of the accepted coding norm.
> > 
> > I'm not opposed to container_from() but it seems a little less
> > descriptive than outer_cast() but I don't really care.  I always
> > have to look up container_of() when I'm using it so this would just
> > be another macro of that type ...
> > 
> 
>  So far we have a few which have been suggested as replacement
> for from_tasklet()
> 
> - out_cast() or outer_cast()
> - from_member().
> - container_from() or from_container()
> 
> from_container() sounds fine, would trimming it a bit work? like
> from_cont().

I'm fine with container_from().  It's the same form as container_of()
and I think we need urgent agreement to not stall everything else so
the most innocuous name is likely to get the widest acceptance.

James

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
