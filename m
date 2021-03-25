Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CF03494A4
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Mar 2021 15:52:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9047D40F58;
	Thu, 25 Mar 2021 14:52:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qQ1BNU7cy_CH; Thu, 25 Mar 2021 14:52:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D71140F2B;
	Thu, 25 Mar 2021 14:52:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E81791BF41B
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 14:52:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7914401B7
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 14:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ovdT2sPjzwIg for <devel@linuxdriverproject.org>;
 Thu, 25 Mar 2021 14:52:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47DF5401B0
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 14:52:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6BB77619FC;
 Thu, 25 Mar 2021 14:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616683955;
 bh=ANaYj3ch1gtGahdxMwsKFrqXT9ozTgZoAdbtYKveX4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QuBq+Pboh8ELbtdKroOFreFMOcms+2OVhrdOE6KnCV59LEbH6uxVO/JCBCdpiFc2Q
 nsAdBF0XSzP1mbrgNb+anznpQNLL96NSJ3bNY2V+Gfkh8MdNTUuZAaE1aCyreTKeJk
 yCL232OPaON/QglO54yCoVGJQemmYrsKbd/UojV8=
Date: Thu, 25 Mar 2021 15:52:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jan Kiszka <jan.kiszka@siemens.com>
Subject: Re: [PATCH] staging: gasket: remove it from the kernel
Message-ID: <YFyjsAtilH+3fggx@kroah.com>
References: <20210315154413.3084149-1-gregkh@linuxfoundation.org>
 <CALTjKEP_+uBU8K-=Cnose8wCv9Wrv8oFnKfRUywLEHV4U_jWjQ@mail.gmail.com>
 <30ee6d6b-9206-acad-b224-591fdeb0dad7@siemens.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <30ee6d6b-9206-acad-b224-591fdeb0dad7@siemens.com>
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
Cc: devel@driverdev.osuosl.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Yeh <rcy@google.com>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 25, 2021 at 03:46:10PM +0100, Jan Kiszka wrote:
> On 15.03.21 17:10, Rob Springer wrote:
> > Acked-by: Rob Springer <rspringer@google.com>
> > 
> > 
> > On Mon, Mar 15, 2021 at 8:44 AM <gregkh@linuxfoundation.org> wrote:
> >>
> >> From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >>
> >> As none of the proposed things that need to be changed in the gasket
> >> drivers have ever been done, and there has not been any forward progress
> >> to get this out of staging, it seems totally abandonded so remove the
> >> code entirely so that people do not spend their time doing tiny cleanups
> >> for code that will never get out of staging.
> >>
> >> If this code is actually being used, it can be reverted simply and then
> >> cleaned up properly, but as it is abandoned, let's just get rid of it.
> >>
> >> Cc: Rob Springer <rspringer@google.com>
> >> Cc: Todd Poynor <toddpoynor@google.com>
> >> Cc: Ben Chan <benchan@chromium.org>
> >> Cc: Richard Yeh <rcy@google.com>
> >> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> OK, so is there a plan of the HW vendor to improve the user experience
> for this hardware? Is there a different software architecture in sight
> which will not need a kernel driver?

What hardware vendor makes this thing?  What systems require it?  And
why can't you use UIO instead?

> Just wondering loudly while fiddling with dkms packages and starring at
> the code diffs between what was removed here and what I still have to
> install manually from remote sources.

Where are the remote sources for this thing and why didn't they ever get
synced into the kernel tree?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
