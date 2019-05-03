Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EC712D56
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 14:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 291EE8697D;
	Fri,  3 May 2019 12:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PqUq0ch3-UCH; Fri,  3 May 2019 12:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 815A886957;
	Fri,  3 May 2019 12:17:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C36601BF391
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 12:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BF7B087987
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 12:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id njEpQ0Fws+WO for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 12:17:55 +0000 (UTC)
X-Greylist: delayed 00:08:16 by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D2F848702D
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 12:17:54 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id w11so5757338edl.5
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 05:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=S4dUYvdv3n+Bba45FIMfVM65qgsyOxnhGJChibzqN60=;
 b=jrDdmOLqPgT269Ux3Ti6Ab8JHcj7LLbFX43fyq0OzF8wPEtpJ0dO22tKhM3wi0IduX
 U1Yn+VxM34ZWbPwXaZd23V0NxQhtN1WWHx8SIPPdiDgpTMGTkpZVVlcrlA4V/So7djwc
 Pmy/BtwrIQ9KvEsdrRxatfFdvK+car/jY9724=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=S4dUYvdv3n+Bba45FIMfVM65qgsyOxnhGJChibzqN60=;
 b=jA6DwVkP8kGwOxgUKF6E1Arfm3OutJRa9R+iYEJe2F4+cEJab/JGzgcYBhcoPdjpmz
 RaPp6zWas35nVrbaldO1Rbt6IwHk5rBrKDXHJD23BNKzcrDUMB9KbedHJ0d6b/ZbPovJ
 I5V4MWyxLehomFQ69uDl01krubaB5KIiGJ7nmdnDsQwu98BHjtcs6qWJtPU8o2H8I3zR
 uxEcMVg5i1n/6Zi6E63p2qctnQ/hPa9NaKNhNTpY4DCZ8JpRLreDGNbhMQ6CSQkZD7Xg
 ronh0Aw/QpfBjrwfVy2jzGbbJZgOt6j5vtxCLoRpFhkTZ/0qYVMQlcsplnaRtq71sbIz
 iiKw==
X-Gm-Message-State: APjAAAV28xuAqSr670gr0AWeRW+snVBCCHDaHVC/6P8TInNPE/4WRiK1
 I4SWzcP341pIHwr5VoPJrNIYmg==
X-Google-Smtp-Source: APXvYqzutv0kBeLPRSf1mYqF7ThJDw1eInlX1KNGRL/6/Tt5e7oryS7GRROhuh60qmoGV8akzi+19Q==
X-Received: by 2002:a17:906:59c3:: with SMTP id
 m3mr5824761ejs.167.1556885376639; 
 Fri, 03 May 2019 05:09:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id i61sm536332edi.5.2019.05.03.05.09.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 05:09:35 -0700 (PDT)
Date: Fri, 3 May 2019 14:09:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Subject: Re: [Intel-gfx] [PATCH] dma-buf: add struct dma_buf_attach_info v2
Message-ID: <20190503120933.GL3271@phenom.ffwll.local>
Mail-Followup-To: christian.koenig@amd.com,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 maxime.ripard@bootlin.com, dri-devel@lists.freedesktop.org,
 digetx@gmail.com, sumit.semwal@linaro.org, m.szyprowski@samsung.com,
 devel@driverdev.osuosl.org, sstabellini@kernel.org, arnd@arndb.de,
 jonathanh@nvidia.com, tomi.valkeinen@ti.com,
 xen-devel@lists.xenproject.org, linux-media@vger.kernel.org,
 pawel@osciak.com, intel-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, boris.ostrovsky@oracle.com,
 mchehab@kernel.org, jgross@suse.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kyungmin.park@samsung.com
References: <20190430111002.106168-1-christian.koenig@amd.com>
 <20190430173127.k5ivpaz6ktbfecgo@shell.armlinux.org.uk>
 <cbcbb076-a8b0-67b0-8c16-daf1d060fc1d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbcbb076-a8b0-67b0-8c16-daf1d060fc1d@gmail.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: maxime.ripard@bootlin.com, dri-devel@lists.freedesktop.org,
 digetx@gmail.com, sumit.semwal@linaro.org, m.szyprowski@samsung.com,
 devel@driverdev.osuosl.org, sstabellini@kernel.org, arnd@arndb.de,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, jonathanh@nvidia.com,
 tomi.valkeinen@ti.com, xen-devel@lists.xenproject.org,
 linux-media@vger.kernel.org, pawel@osciak.com, intel-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, boris.ostrovsky@oracle.com, mchehab@kernel.org,
 jgross@suse.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 kyungmin.park@samsung.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 03, 2019 at 02:05:47PM +0200, Christian K=F6nig wrote:
> Am 30.04.19 um 19:31 schrieb Russell King - ARM Linux admin:
> > On Tue, Apr 30, 2019 at 01:10:02PM +0200, Christian K=F6nig wrote:
> > > Add a structure for the parameters of dma_buf_attach, this makes it m=
uch easier
> > > to add new parameters later on.
> > I don't understand this reasoning.  What are the "new parameters" that
> > are being proposed, and why do we need to put them into memory to pass
> > them across this interface?
> > =

> > If the intention is to make it easier to change the interface, passing
> > parameters in this manner mean that it's easy for the interface to
> > change and drivers not to notice the changes, since the compiler will
> > not warn (unless some member of the structure that the driver is using
> > gets removed, in which case it will error.)
> > =

> > Additions to the structure will go unnoticed by drivers - what if the
> > caller is expecting some different kind of behaviour, and the driver
> > ignores that new addition?
> =

> Well, exactly that's the intention here: That the drivers using this
> interface should be able to ignore the new additions for now as long as t=
hey
> are not going to use them.
> =

> The background is that we have multiple interface changes in the pipeline,
> and each step requires new optional parameters.
> =

> > This doesn't seem to me like a good idea.
> =

> Well, the obvious alternatives are:
> =

> a) Change all drivers to explicitly provide NULL/0 for the new parameters.
> =

> b) Use a wrapper, so that the function signature of dma_buf_attach stays =
the
> same.
> =

> Key point here is that I have an invalidation callback change, a P2P patch
> set and some locking changes which all require adding new parameters or
> flags. And at each step I would then start to change all drivers, adding
> some more NULL pointers or flags with 0 default value.
> =

> I'm actually perfectly fine going down any route, but this just seemed to=
 me
> simplest and with the least risk of breaking anything. Opinions?

I think given all our discussions and plans the argument object makes tons
of sense. Much easier to document well than a long list of parameters.
Maybe we should make it const, so it could work like an ops/func table and
we could store it as a pointer in the dma_buf_attachment?
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
