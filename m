Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B127727595
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 07:36:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B30DA864AD;
	Thu, 23 May 2019 05:36:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4B5BpO4va4wU; Thu, 23 May 2019 05:36:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0297864AB;
	Thu, 23 May 2019 05:36:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13A1F1BF847
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 05:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0E359872FD
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 05:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KuXoTCiA3rJ9 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 05:36:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 74A0E872FA
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:36:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BEA3620881;
 Thu, 23 May 2019 05:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558589806;
 bh=T5rbljQ/TpWOK/SheWHZacX0s9uGf+CMLU0n9yVBEw8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ooNbLRJD3kh3DFoMD5WXtuYc1PKpdqZOddzQSIG6mFIWeRNLFSAPhUwuaXMaFeirf
 7Gv1Y/jmgQs/vzdj/BFt59+oRdT27RUSOa795l4i/SQm6xrNzpIdSLWDDBpG5ZgdTL
 1oWZKZEsq2N2LzFa5orDlKbsZ2JdU3RtUHzIZNy0=
Date: Thu, 23 May 2019 07:36:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geordan Neukum <gneukum1@gmail.com>
Subject: Re: [PATCH 1/6] staging: kpc2000: make kconfig symbol 'KPC2000'
 select dependencies
Message-ID: <20190523053643.GA14465@kroah.com>
References: <cover.1558526487.git.gneukum1@gmail.com>
 <932843299b814f3a22dd176771b46be14ceefeea.1558526487.git.gneukum1@gmail.com>
 <20190522122714.GA2270@kroah.com>
 <CA+T6rvEXCBukwmFS-Z4DFNoFBv9OToWwAYA2AXWBVa5mUG10zA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+T6rvEXCBukwmFS-Z4DFNoFBv9OToWwAYA2AXWBVa5mUG10zA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 01:35:02AM +0000, Geordan Neukum wrote:
> On Wed, May 22, 2019 at 12:27 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > depends on is better than select.  There's a change to depend on UIO for
> > this code already in my -linus branch which will show up in Linus's tree
> > in a week or so.
> 
> Noted on both accounts. Thanks for the feedback and sorry for the
> inconvenience on the latter.
> 
> > Are you sure we need MFD_CORE as well for this code?
> 
> I noticed the build issue when working locally. I was doing
> something along the lines of: 'make distclean && make x86_64_defconfig',
> selecting 'CONFIG_KPC2000' and 'CONFIG_UIO' via menuconfig, then
> running a good old 'make'. From make, I received an error along the
> lines of:
> 
> ERROR: "mfd_remove_devices"
> [drivers/staging/kpc2000/kpc2000/kpc2000.ko] undefined!
> ERROR: "mfd_add_devices" [drivers/staging/kpc2000/kpc2000/kpc2000.ko] undefined!
> make[1]: *** [scripts/Makefile.modpost:91: __modpost] Error 1
> make: *** [Makefile:1290: modules] Error 2
> 
> which appears to indicate that those two symbols are undefined. When
> I looked, it appeared that those symbols were exported from the
> mfd-core which is why I also threw in a select for that Kconfig
> symbol. Assuming that I didn't do something silly above, I'd be happy
> to submit a new patch (with only a depends on for MFD_CORE) as I
> continue trying to fix up the i2c driver.

Yes, a depends for MFD_CORE would be good, can you base it against my
staging-linus branch so that fix can go to Linus for this release?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
