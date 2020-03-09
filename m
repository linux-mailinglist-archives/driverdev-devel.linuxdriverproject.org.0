Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B0417DE36
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Mar 2020 12:09:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D67EC252A8;
	Mon,  9 Mar 2020 11:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RJBhwAB3K+Dq; Mon,  9 Mar 2020 11:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F93620525;
	Mon,  9 Mar 2020 11:09:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C7621BF3EA
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 11:09:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99198882AB
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 11:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6zkyO98uwKU for <devel@linuxdriverproject.org>;
 Mon,  9 Mar 2020 11:09:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E4729882A0
 for <devel@driverdev.osuosl.org>; Mon,  9 Mar 2020 11:09:03 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4244D2051A;
 Mon,  9 Mar 2020 11:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583752143;
 bh=xeVZYWJE37/+2qxtaIzD+1Mnqj/kL4iSm38yjyMa79Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jRcg39Xl3X9VgRSwUKqtV08Kn14AAr5t7Ak7jX+1fFGZGLXGl5NSUg5rcUmX8mDpT
 Gh066Zt1E8ORO4VVRuoo/R4nqYuXS45StHTNHMtwkXUJj6vI4Aanea0pAEuSFXR6xh
 ys+1Ymq+k9AAI4LwM1c3azhfv5O1bj0CG1+NwxwQ=
Date: Mon, 9 Mar 2020 12:09:01 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Subject: Re: [PATCH] staging: vt6656: Declare a few variables as __read_mostly
Message-ID: <20200309110901.GB183429@kroah.com>
References: <20200301112620.7892-1-oscar.carter@gmx.com>
 <20200301122514.GA1461917@kroah.com> <20200301131701.GA7487@ubuntu>
 <20200301150913.GA1470815@kroah.com> <20200307082906.GA2948@ubuntu>
 <20200309093210.GA7693@qd-ubuntu>
 <20200309103407.GB180589@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309103407.GB180589@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 09, 2020 at 11:34:07AM +0100, Greg Kroah-Hartman wrote:
> On Mon, Mar 09, 2020 at 09:32:10AM +0000, Quentin Deslandes wrote:
> > On Sat, Mar 07, 2020 at 09:29:06AM +0100, Oscar Carter wrote:
> > > On Sun, Mar 01, 2020 at 04:09:13PM +0100, Greg Kroah-Hartman wrote:
> > > > On Sun, Mar 01, 2020 at 02:17:01PM +0100, Oscar Carter wrote:
> > > > This is a USB driver, performance is always limited to the hardware, not
> > > > the CPU location of variables.
> > > 
> > > Thank you for the explanation.
> > > 
> > > >
> > > > Please always benchmark things to see if it actually makes sense to make
> > > > changes like this, before proposing them.
> > > 
> > > I'm sorry.
> > > 
> > 
> > I've been removed from CC list on Greg's answer, so I haven't seen the
> > explanation earlier and reviewed the patch the next day. I should have
> > know better, won't happen again.
> 
> You weren't on the original list of people on the patch, so I didn't
> remove anything here that I can tell.

Turns out you were, on the lkml one, but not the one that went through
the driver-devel list.  odd...

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
