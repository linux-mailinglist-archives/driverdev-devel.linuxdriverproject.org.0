Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD4A1B0361
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 09:53:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17A7B87AB5;
	Mon, 20 Apr 2020 07:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bAPoZL+zsJiG; Mon, 20 Apr 2020 07:53:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7981487A3A;
	Mon, 20 Apr 2020 07:53:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B63631BF3C6
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 07:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2015863DE
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 07:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qtBVrFER4rHh for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 07:53:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C8A0D84BE7
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 07:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=QJwGCUa7wCPgPYyVZ5DxV4ZvIkEdmV2gQKXsGKf5JZQ=; b=dJJMb3AjgfQhbGxQCXFdtXxdQW
 pviC+/spPzKPmWli8c91bVmHR1ta3wPHauydh5owdn5FYelLztA0ae/NRGI2z5/E2yPshZgW3VjWb
 eWmvMZDFWi84/vpfvwL+SANKjL+iQPwnhq6f/Ja9udICcplbRj2oYKgcfcoKvUp8pIA7B6kaMC6FP
 3T17B7Fh6NasRj4I2iiJBNqhDOIZkUo6O53jrB778YuYX71HOGkUFRCGbGsk5TYXmeq5lN9jGs3d6
 vS+Nlg6rs7HUCOtxsHt7iwSDkGN4BHW29kjczenZdfXnjUho7Hx2L0WVRK8ngbRUeY9vfiSW431PQ
 R7SS8Ywg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jQREs-0001zB-Bf; Mon, 20 Apr 2020 07:53:10 +0000
Date: Mon, 20 Apr 2020 00:53:10 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Stultz <john.stultz@linaro.org>,
 driverdevel <devel@driverdev.osuosl.org>, nd <nd@arm.com>,
 Todd Kjos <tkjos@android.com>, Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Anders Pedersen <anders.pedersen@arm.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart (VMware)" <dvhart@infradead.org>,
 =?iso-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>,
 Laura Abbott <labbott@redhat.com>, Martijn Coenen <maco@android.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>, linux-media@vger.kernel.org
Subject: Re: [PATCH] staging: android: ion: Skip sync if not mapped
Message-ID: <20200420075310.GA32592@infradead.org>
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
 <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
 <20200416102508.GA820251@kroah.com>
 <20200417150013.GN3456981@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417150013.GN3456981@phenom.ffwll.local>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 17, 2020 at 05:00:13PM +0200, Daniel Vetter wrote:
> > No one ever notices "depreciated" things, they only notice if the code
> > is no longer there :)
> > 
> > So I'm all for just deleting it and seeing who even notices...
> 
> +1 on just deleting ion and watching if anyone notices. In case you're
> typing that patch, here's my:
> 
> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

As ion ha sbeen a major pain for various tree wide changes also from me:

Acked-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
