Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B5EE3DC4
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 22:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C2328829B;
	Thu, 24 Oct 2019 20:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id niv4L6pwAH4Y; Thu, 24 Oct 2019 20:54:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8F5287D9D;
	Thu, 24 Oct 2019 20:54:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB5741BF859
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 20:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E50CB86966
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 20:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ocx7NIE3ckDv for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 20:54:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C1ECD8698F
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 20:54:05 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 23so47999pgk.3
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 13:54:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EwhH6xiECs7L8rpX+VJC4HQgocepfGRCibixehUAMYs=;
 b=UqBvDPw3nKaYugxoGIWaZ5vkvlbF3id5RcTlC75rUkLmvyPgzEOv05A0gap/H7Zwox
 g7VEB9NHnU7303CvuGNI3ixeY4VJcQ9HwOOM8h//Hs9nDBBb5WaqYgveUg8JewttghdM
 nMLF3xpq79N4WexycLm/anrgSRz2OqCGXbbpk8arN+TB4I+d9va9pH/jOU0ryuMsOuyV
 rglDjdEtUlwAyh12qElmJ1oT51ZXMUjS3aEbAybeDpDDp9E1eXamTCNUiPFitnOHL474
 Ry4k7Bh6bAK0l1HsP11D263HrIccJ7hJtCC+gl7x8x8AEailPv5rZlGKlzcLt5518xx5
 3RVw==
X-Gm-Message-State: APjAAAVzb3yed5521fFnPE+GKWMbnWqMFYvuw6apYYEtQYXJq2ngNZbG
 L93oAXRh+Nevuj5LENaM+v8=
X-Google-Smtp-Source: APXvYqwHHY2mkw0on4g2lRGyuyXbw8E1AuYrV9432gK07ON8OZGpu2i/3WkZQTgJEz/sNLPSpRMoUA==
X-Received: by 2002:a17:90a:94c3:: with SMTP id
 j3mr5986656pjw.41.1571950444995; 
 Thu, 24 Oct 2019 13:54:04 -0700 (PDT)
Received: from localhost ([2601:646:8a00:9810:5af3:56d9:f882:39d4])
 by smtp.gmail.com with ESMTPSA id 69sm26909836pgh.47.2019.10.24.13.54.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 13:54:03 -0700 (PDT)
Date: Thu, 24 Oct 2019 13:54:20 -0700
From: Paul Burton <paulburton@kernel.org>
To: Wambui Karuga <wambui.karugax@gmail.com>,
 Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/5] staging: octeon: remove
 typedef declaration for cvmx_wqe
Message-ID: <20191024205420.u7z3bhcjgetsyh3w@lantea.localdomain>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com>
 <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain>
 <alpine.DEB.2.21.1910240722070.2771@hadrien>
 <20191024100020.GA13343@wambui>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024100020.GA13343@wambui>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Wambui, Julia,

Side-note: Wambui, your mail client seems to have added this header:

  Reply-To: alpine.DEB.2.21.1910240722070.2771@hadrien

This is the ID of the message you replied to (ie. this is the same value
that the In-Reply-To: header has). You should probably figure out how
that happened, or you're going to miss responses when people reply
without noticing the bogus email address.

On Thu, Oct 24, 2019 at 01:00:20PM +0300, Wambui Karuga wrote:
> On Thu, Oct 24, 2019 at 07:26:59AM +0200, Julia Lawall wrote:
> > > If you're making significant changes to this driver, please test them
> > > using the MIPS cavium_octeon_defconfig which is where this driver is
> > > actually used.
> > >
> > > This driver has broken builds a few times recently which makes me very
> > > tempted to ask that we stop allowing it to be built with COMPILE_TEST.
> > > The whole octeon-stubs.h thing is a horrible hack anyway...
> > 
> > Wambui,
> > 
> > Please figure out what went wrong here.  Are there two sets of typedefs
> > that should have been updated?
> >
> I managed to reproduce these build errors and finally noticed that the
> "octeon-stubs.h" header is only included when CONFIG_CAVIUM_OCTEON_SOC
> is not defined, therefore compiling properly for COMPILE_TEST but will
> actually fail when compiled with CONFIG_CAVIUM_OCTEON_SOC is set since
> the functions will try to use the definitions in
> arch/mips/include/asm/octeon/ that don't have the changes.
> 
> Paul, please tell me if this is correct?

Yes, that's correct. The driver was written to use the headers in
arch/mips/include/asm/octeon, and then recently the octeon-stubs.h
header was added which duplicates lots of the MIPS & Octeon-specific
header content in one huge monstrous file.

I'm all for improving compile test coverage, but I think octeon-stubs.h
in its short life has already proven itself to be a bad way to achieve
that goal[1][2][3].

> > Others,
> > 
> > Would it be reasonable to put the information about how the driver should
> > be compied in the TODO file?  git grep cavium_octeon_defconfig in the
> > octeon directory turns up nothing.

It wouldn't hurt. I'd argue that Kconfig already provides enough
information to figure this out easily though - OCTEON_ETHERNET depends
on CAVIUM_OCTEON_SOC || COMPILE_TEST, which ought to tell people that
its real use is when CAVIUM_OCTEON_SOC=y. That doesn't necessarily point
you to cavium_octeon_defconfig (though grepping for CAVIUM_OCTEON_SOC=y
would), but that's not strictly needed anyway - any old config with
CAVIUM_OCTEON_SOC=y would do.

Thanks,
    Paul

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0228ecf6128c92b47eadd2ac270c5574d9150c09
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/staging/octeon?id=17a29fea086ba18b000d28439bd5cb4f2b0a527b
[3] https://storage.kernelci.org/next/master/next-20191024/mips/cavium_octeon_defconfig/gcc-8/build.log
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
