Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 317F81C3EBA
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 17:39:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1982788613;
	Mon,  4 May 2020 15:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iGGd0P6zDqnu; Mon,  4 May 2020 15:39:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F46C877BA;
	Mon,  4 May 2020 15:39:53 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B60371BF3E0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B279E8872F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UT2OtI0iC0lp
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:39:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 41FC4884B5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:39:50 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90829206D7;
 Mon,  4 May 2020 15:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588606790;
 bh=Nvyp2diB/YivH/OtNQz7X9pKu+5E1TTvivXfDzxcQXk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r7Kslx1UXluSQoCjS+pQUWVOkJ3KosSn7fpmUe7d5DBSneVVloKVinB+dgdpSYKSN
 IcarU6sTb/x9qEkQlkZm8YDwZUoEQ4Q8FrgJ1n/rwKInm4HgmKcZ7B96jOminq9H8Z
 Hg/e13w0tTm7hTZgIITT6H7NcWNuOzfDxHO5I9vY=
Date: Mon, 4 May 2020 17:39:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH] staging: most: usb: fix exception handling
Message-ID: <20200504153947.GA2687183@kroah.com>
References: <1588599840-13237-1-git-send-email-christian.gromm@microchip.com>
 <20200504135431.GA2311301@kroah.com>
 <5a1b21ac4bc63312784ee2cfb0cf153044d8d8d7.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a1b21ac4bc63312784ee2cfb0cf153044d8d8d7.camel@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 04, 2020 at 03:17:53PM +0000, Christian.Gromm@microchip.com wrote:
> On Mon, 2020-05-04 at 15:54 +0200, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Mon, May 04, 2020 at 03:44:00PM +0200, Christian Gromm wrote:
> > > This patch fixes error handling on function parameters.
> > 
> > What does that mean?  If I don't understand it, I think it needs to
> > be
> > made a lot more explicit as to why you are making these changes :)
> > 
> > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > 
> > Any "Fixes:" tag for this?
> 
> No. Just wanted to fix some obvious things, before adding
> it to stable, as discussed in our last email thread.

Remember, no one has context when reading a git commit log, please spell
it out :)

> > SHould it go to stable if it really resolves issues?
> 
> No. Once you accept this, I'll add it to stable anyway.

How?  Put the cc: stable on a patch if it fixes a real bug.  I don't see
what this "fixes" still...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
