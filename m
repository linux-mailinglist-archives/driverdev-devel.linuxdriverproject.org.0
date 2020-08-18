Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6B5248FCB
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 23:00:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2379F86BB9;
	Tue, 18 Aug 2020 21:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0mpF3j4+DFQu; Tue, 18 Aug 2020 21:00:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B6AFE86B18;
	Tue, 18 Aug 2020 21:00:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DFFC1BF271
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 21:00:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 557CF86B94
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 21:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8XfVdXSql76W for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 21:00:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 320FC86B55
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 21:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id E76FB8EE1A9;
 Tue, 18 Aug 2020 14:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1597784444;
 bh=tbsUcv475+YCZw1GTj2PQ6LvX4vSQZaYxn4zaS+R/4c=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Qrj9DcFVwfv3LQ3ogFCLogZ3MFRIrVuZOGzCtGnuXEksHbYpCf4MOzhnjK48hnLeJ
 WBJIwZcuhQRmEISK3OYmfO8zwCeV5WGheC1BlogkcVwtiUSnVqiZDKUeoZ3ftkI0DB
 8C1HptXhFOQveW6XttTml0y/WCVpA+LP1XIfDIQU=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id yxTvzG0VvDFx; Tue, 18 Aug 2020 14:00:43 -0700 (PDT)
Received: from [153.66.254.174] (c-73-35-198-56.hsd1.wa.comcast.net
 [73.35.198.56])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 3908A8EE17F;
 Tue, 18 Aug 2020 14:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1597784443;
 bh=tbsUcv475+YCZw1GTj2PQ6LvX4vSQZaYxn4zaS+R/4c=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=D+8/Cr58B/oiGrsp2scAFTKzPpwuRrxI0nzk9/FGC1mH6aV1pe7T9eKYXHzydxf7e
 uxoPDcWpTJmWe7T3PSHxKLwqMdOy0OFGWtWHPKks90yqeWzrewWrtu8v+gZ22+Y9Xp
 3BintrUiXfYlFbDYGCbt6iSJyrOyqS5V85WlObHk=
Message-ID: <1597784438.3978.6.camel@HansenPartnership.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Kees Cook <keescook@chromium.org>
Date: Tue, 18 Aug 2020 14:00:38 -0700
In-Reply-To: <202008181309.FD3940A2D5@keescook>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <202008181309.FD3940A2D5@keescook>
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
Cc: ulf.hansson@linaro.org, linux-atm-general@lists.sourceforge.net,
 manohar.vanga@gmail.com, airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, anton.ivanov@cambridgegreys.com,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, maximlevitsky@gmail.com, richard@nod.at,
 deller@gmx.de, jassisinghbrar@gmail.com, 3chas3@gmail.com,
 intel-gfx@lists.freedesktop.org, kuba@kernel.org, mporter@kernel.crashing.org,
 jdike@addtoit.com, oakad@yahoo.com, s.hauer@pengutronix.de,
 linux-input@vger.kernel.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-08-18 at 13:10 -0700, Kees Cook wrote:
> On Tue, Aug 18, 2020 at 01:00:33PM -0700, James Bottomley wrote:
> > On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
> > > On 8/17/20 12:48 PM, Kees Cook wrote:
> > > > On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> > > > > On 8/17/20 12:29 PM, Kees Cook wrote:
> > > > > > On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> > > > > > > On 8/17/20 2:15 AM, Allen Pais wrote:
> > > > > > > > From: Allen Pais <allen.lkml@gmail.com>
> > > > > > > > 
> > > > > > > > In preparation for unconditionally passing the
> > > > > > > > struct tasklet_struct pointer to all tasklet
> > > > > > > > callbacks, switch to using the new tasklet_setup()
> > > > > > > > and from_tasklet() to pass the tasklet pointer
> > > > > > > > explicitly.
> > > > > > > 
> > > > > > > Who came up with the idea to add a macro 'from_tasklet'
> > > > > > > that
> > > > > > > is just container_of? container_of in the code would be
> > > > > > > _much_ more readable, and not leave anyone guessing wtf
> > > > > > > from_tasklet is doing.
> > > > > > > 
> > > > > > > I'd fix that up now before everything else goes in...
> > > > > > 
> > > > > > As I mentioned in the other thread, I think this makes
> > > > > > things
> > > > > > much more readable. It's the same thing that the
> > > > > > timer_struct
> > > > > > conversion did (added a container_of wrapper) to avoid the
> > > > > > ever-repeating use of typeof(), long lines, etc.
> > > > > 
> > > > > But then it should use a generic name, instead of each sub-
> > > > > system 
> > > > > using some random name that makes people look up exactly what
> > > > > it
> > > > > does. I'm not huge fan of the container_of() redundancy, but
> > > > > adding private variants of this doesn't seem like the best
> > > > > way
> > > > > forward. Let's have a generic helper that does this, and use
> > > > > it
> > > > > everywhere.
> > > > 
> > > > I'm open to suggestions, but as things stand, these kinds of
> > > > treewide
> > > 
> > > On naming? Implementation is just as it stands, from_tasklet() is
> > > totally generic which is why I objected to it. from_member()? Not
> > > great with naming... But I can see this going further and then
> > > we'll
> > > suddenly have tons of these. It's not good for readability.
> > 
> > Since both threads seem to have petered out, let me suggest in
> > kernel.h:
> > 
> > #define cast_out(ptr, container, member) \
> > 	container_of(ptr, typeof(*container), member)
> > 
> > It does what you want, the argument order is the same as
> > container_of with the only difference being you name the containing
> > structure instead of having to specify its type.
> 
> I like this! Shall I send this to Linus to see if this can land in
> -rc2 for use going forward?

Sure ... he's probably been lurking on this thread anyway ... it's
about time he got off his arse^Wthe fence and made an executive
decision ...

James

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
