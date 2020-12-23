Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934472E19A4
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 09:10:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E7388723B;
	Wed, 23 Dec 2020 08:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tl8VKSMs+5QL; Wed, 23 Dec 2020 08:10:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D90887230;
	Wed, 23 Dec 2020 08:10:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A308E1BF35C
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 08:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9F49B8065D
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 08:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YmaYnYVjHlJK for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 08:10:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 63EB585778
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 08:09:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C34D9207D0;
 Wed, 23 Dec 2020 08:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1608710953;
 bh=J6kqcsEQ81XygXB0ywB1eT/zGzb+piaMy92Q6gb+uHI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eAh3GZlUGSZgvf7GPACtF31xHjjf3snVP8mRBuA2SkcEP7jH0QBg7K9kHYfsdcwua
 gxXrB+7OxQKakmE3oS0dIBaB6ebNnhJOu6cO3mraHT60VPUXpTmdicnpydwtf5l2tL
 END9bkupuxwDPEHSXNaG8Xgkd2vnjLV3OzcQyZTM=
Date: Wed, 23 Dec 2020 09:09:10 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v3 09/24] wfx: add hwio.c/hwio.h
Message-ID: <X+L7JmeL086SGFum@kroah.com>
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <87lfdp98rw.fsf@codeaurora.org> <X+IQRct0Zsm87H4+@kroah.com>
 <5567602.MhkbZ0Pkbq@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5567602.MhkbZ0Pkbq@pc-42>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mmc@vger.kernel.org,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 23, 2020 at 09:01:33AM +0100, J=E9r=F4me Pouiller wrote:
> On Tuesday 22 December 2020 16:27:01 CET Greg Kroah-Hartman wrote:
> > On Tue, Dec 22, 2020 at 05:10:11PM +0200, Kalle Valo wrote:
> > > Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> > >
> > > > +/*
> > > > + * Internal helpers.
> > > > + *
> > > > + * About CONFIG_VMAP_STACK:
> > > > + * When CONFIG_VMAP_STACK is enabled, it is not possible to run DM=
A on stack
> > > > + * allocated data. Functions below that work with registers (aka f=
unctions
> > > > + * ending with "32") automatically reallocate buffers with kmalloc=
. However,
> > > > + * functions that work with arbitrary length buffers let's caller =
to handle
> > > > + * memory location. In doubt, enable CONFIG_DEBUG_SG to detect bad=
ly located
> > > > + * buffer.
> > > > + */
> > >
> > > This sounds very hacky to me, I have understood that you should never
> > > use stack with DMA.
> > =

> > You should never do that because some platforms do not support it, so no
> > driver should ever try to do that as they do not know what platform they
> > are running on.
> =

> Just to be curious, why these platforms don't support DMA in a stack
> allocated area?

Hardware is odd :(

> If the memory is contiguous (=3D not vmalloced), correctly
> aligned and in the first 4GB of physical memory, it should be sufficient,
> shouldn't?

Nope, sorry, this just does not work at all on many platforms.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
