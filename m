Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CD1152549
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 04:44:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9508382058;
	Wed,  5 Feb 2020 03:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uzmziW6q-a_X; Wed,  5 Feb 2020 03:44:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B20282072;
	Wed,  5 Feb 2020 03:44:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C93891BF957
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 03:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BAEA020438
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 03:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ErKKm-suFRjY for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 03:44:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id DECF820378
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 03:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=y7L1/booVthxxiJ/wy0zkPYQFHGO1CqBFtYiAgkDZbA=; b=bogjU8YlzDGSHGrbrPsxDxFVnO
 PoHGL9mrtfLaHmKf6OKN9XdD8O2vMpGmDyXAUdPJE2iEjRkpcrURJ/bC4q9ZZQZ6Lx/cnZ/Iy/4Dg
 Jh0/3pv2hPUwU8VfkqH2zwaJC7m7ZOEu0vFLUPG487x4EwFmIQ6W9sUOtnH+tJXAk6jHLl4HJ2ajW
 pYkzBoAAgq9JvqZ3nJkwEzepAm0PN596wJ4sruVR2K+AEbTIsdKJJ0pWlvX+yDv0yAAqtJhTFWiT5
 grOW7UwniG3FCPgX+s41xYkOJb+mNb5kSh0k7zsXKi34OWxg1xHUDpHcbX4Jdtzer5H+9bi2q2qBy
 3iILHU8A==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1izBc3-0002c9-NF; Wed, 05 Feb 2020 03:44:27 +0000
Date: Tue, 4 Feb 2020 19:44:27 -0800
From: Matthew Wilcox <willy@infradead.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20200205034427.GS8731@bombadil.infradead.org>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
 <20200204070927.GA966981@kroah.com>
 <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
 <20200204203116.GN8731@bombadil.infradead.org>
 <20200205033416.GT1778@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205033416.GT1778@kadam>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "brandonbonaby94@gmail.com" <brandonbonaby94@gmail.com>,
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>, "fw@strlen.de" <fw@strlen.de>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "sandro@volery.com" <sandro@volery.com>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 05, 2020 at 06:34:16AM +0300, Dan Carpenter wrote:
> On Tue, Feb 04, 2020 at 12:31:16PM -0800, Matthew Wilcox wrote:
> > On Tue, Feb 04, 2020 at 08:06:14PM +0000, Chris Packham wrote:
> > > On Tue, 2020-02-04 at 07:09 +0000, gregkh@linuxfoundation.org wrote:
> > > > On Tue, Feb 04, 2020 at 04:02:15AM +0000, Chris Packham wrote:
> > > On Tue, 2020-02-04 at 10:21 +0300, Dan Carpenter wrote:
> > > > My advice is to delete all the COMPILE_TEST code.  That stuff was a
> > > > constant source of confusion and headaches.
> > > 
> > > I was also going to suggest this. Since the COMPILE_TEST has been a
> > > source of trouble I was going to propose dropping the || COMPILE_TEST
> > > from the Kconfig for the octeon drivers.
> > 
> > Not having it also causes problems.  I didn't originally add it for
> > shits and giggles.
> 
> I wonder if the kbuild bot does enough cross compile build testing these
> days to detect compile problems.  It might have improved to the point
> where COMPILE_TEST isn't required.

Well, that was the problem.  I posted the patch and Dave Miller merged it
before the build bot had the chance to point out that I'd missed it.
So relying on the build bot is not sufficient.

> One of the things about having a bunch of dummy functions for
> COMPILE_TEST is that they introduce a lot of static checker warnings.
> The real function is supposed to initialize stuff but the dummy function
> just returns so now we get uninitialized variable warnings etc.

Perhaps we need a better solution for the dummy functions than just
returning.  We can initialise the variables / structs to 0, for example.
I fully accept that I did a poor job of writing the dummy functions.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
