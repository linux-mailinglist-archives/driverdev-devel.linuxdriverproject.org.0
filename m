Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FFC308939
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 14:05:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C9C78721F;
	Fri, 29 Jan 2021 13:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OtXqY7seM98c; Fri, 29 Jan 2021 13:05:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11EDA87002;
	Fri, 29 Jan 2021 13:05:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 26CD11BF591
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 13:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 235068707F
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 13:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dx8YuM62lM7z for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 13:05:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8AE1487002
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 13:05:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8FC4664E06;
 Fri, 29 Jan 2021 13:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611925527;
 bh=JaWiQY/qIQ80BUgxMoAw/QGcLzohOXnMK6OqukVA65g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FNOZA4ZK4RY694CjAxVMs6Vsqok58cvtGYvOvghk89GPBLvNaz49pu9wWoEemQNJ7
 f7bam1TxGWGDtnbRpVLBEq94F+BIt1fJYxlXVZ0ih2WBwOSe6cyT8053o+dYsQ3v85
 ztKiRChrMAVLBxXsuA+rE4d/m2Lf1nTxyMvHB9Uc=
Date: Fri, 29 Jan 2021 14:05:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.11-rc5
Message-ID: <YBQIFGWO0HRLJmzF@kroah.com>
References: <YA1u24kUPB+B7gKY@kroah.com>
 <CAHk-=whe0kHRKsNegF+JxCooS_Z0otcEX_Ggz=iN2v3D1Rssxg@mail.gmail.com>
 <YA7Q0XZMIdudb6x9@kroah.com> <20210128194551.76c76cfe@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128194551.76c76cfe@archlinux>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>, devel@linuxdriverproject.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 28, 2021 at 07:45:51PM +0000, Jonathan Cameron wrote:
> On Mon, 25 Jan 2021 15:08:17 +0100
> Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Sun, Jan 24, 2021 at 11:31:59AM -0800, Linus Torvalds wrote:
> > > On Sun, Jan 24, 2021 at 4:58 AM Greg KH <gregkh@linuxfoundation.org> wrote:  
> > > >
> > > > David Lechner (1):
> > > >       counter:ti-eqep: remove floor  
> > > 
> > > I'm not sure why that ti-eqep counter driver seems to be in your
> > > "iio/staging" pile rather than "char/misc", but whatever..  
> > 
> > Jonathan said why that was needed, I think it was due to fixes in the
> > counter core code, but he can verify this better than I can...
> 
> Hi Linus / Greg,
> 
> Bit of history involved here...
> 
> The counter drivers started out as just another sensor type
> under IIO, but ended up pushing the boundaries of the ABI a lot -
> ultimately making it clear that they really didn't fit in IIO.
> William came up with a better abstraction / framework that
> became drivers/counter/, but currently the patch flow for
> drivers/counter/ is sufficiently low that I handle their
> patches along side IIO rather than via a separate tree.
> 
> There is also a cross dependency because of legacy IIO ABI
> though we are aiming to drop that either this cycle or next.
> 
> Hope that clears it up.  If either of you would prefer
> it a different way in future let me know.
> 
> This particular fix was local to the driver - it was pretending
> it supported something that hardware couldn't actually do.

Thanks for the explanation, that makes sense to me!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
