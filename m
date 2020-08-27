Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A802544D5
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 14:15:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 27BCB88468;
	Thu, 27 Aug 2020 12:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o+h3Zh5e5xsY; Thu, 27 Aug 2020 12:15:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BD47883C0;
	Thu, 27 Aug 2020 12:15:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D3D01BF48C
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 12:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3A04C867ED
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 12:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PkQUZbahJ9oL for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 12:15:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 95249867C6
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 12:15:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D921C207CD;
 Thu, 27 Aug 2020 12:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598530517;
 bh=8/Uo/bTKsupSIoAgh+tXShD0dKwcGgGzU0K627XFrFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PzKvfy1hGR/NN+N9EjNznIChtG5H44kvPSm86JsQGtfu+fceycAShj9VaBWI4C3D9
 jPsIp0d49ZuALDccnFbexxD5okRzl4CmBC4YPIdQzG3pswyiIvV4QcchFZsNHz/XWL
 87K3RFXizjXgfVf4XITuYOeAAOriC2BS/ltXc1gw=
Date: Thu, 27 Aug 2020 14:15:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: John Stultz <john.stultz@linaro.org>, Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v4 0/2] staging: android: Remove BUG/BUG_ON from ion
Message-ID: <20200827121531.GD417381@kroah.com>
References: <cover.1598023523.git.tomersamara98@gmail.com>
 <20200825064729.GA30014@infradead.org>
 <20200825065229.GA1319770@kroah.com>
 <20200827071654.GB25305@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200827071654.GB25305@infradead.org>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Suren Baghdasaryan <surenb@google.com>, Tomer Samara <tomersamara98@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Hridya Valsaraju <hridya@google.com>, Riley Andrews <riandrews@android.com>,
 Arve Hj?nnev?g <arve@android.com>, Joel Fernandes <joel@joelfernandes.org>,
 Laura Abbott <labbott@redhat.com>, Martijn Coenen <maco@android.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 27, 2020 at 08:16:54AM +0100, Christoph Hellwig wrote:
> On Tue, Aug 25, 2020 at 08:52:29AM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Aug 25, 2020 at 07:47:29AM +0100, Christoph Hellwig wrote:
> > > On Fri, Aug 21, 2020 at 06:27:04PM +0300, Tomer Samara wrote:
> > > > Remove BUG/BUG_ON from androind/ion
> > > 
> > > Please just remove ion.  It has been rejected and we have developed
> > > proper kernel subsystens to replace it.  Don't waste your time on it.
> > 
> > It is going to be removed at the end of this year.  Why we keep it
> > around until then, I really don't know, but John and Laura have this as
> > the plan.
> 
> It keeps getting in the way of various projects and has no path
> going upstream properly.  Seems weird to keep this dead and not all
> that great code around.

In looking at the mess of ion changes that are currently in the AOSP
kernel tree (where android devices are pulled from), it looks almost
nothing like what we currently have here in the mainline kernel tree.

So if what we have here, today, is not of use to anyone who actually
wants to use this interface, why are we keeping it around?

John, why can't we just drop all of this code from the kernel today, and
then Android will keep their own copy for their next LTS release anyway.
It doesn't look like what we have here, and the merge issues it causes
is a pain (as I know from having to do them...)  So keeping this around
in-tree any longer feels pointless to me, and actively causes me, and
others, more work for no gain.

I'll go make a patch set to just drop this code now...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
