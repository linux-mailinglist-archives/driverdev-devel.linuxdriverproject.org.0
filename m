Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DC41756F
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 May 2019 11:49:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDE2B87F34;
	Wed,  8 May 2019 09:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id caRLyb4FwVeh; Wed,  8 May 2019 09:49:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A1A486EF6;
	Wed,  8 May 2019 09:49:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E4D211BF2B0
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 09:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E1B0B81DFB
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 09:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gqf4dbnr5-BO for <devel@linuxdriverproject.org>;
 Wed,  8 May 2019 09:49:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5AA8381AEC
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 09:49:32 +0000 (UTC)
Received: from localhost (unknown [84.241.196.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9860321479;
 Wed,  8 May 2019 09:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557308972;
 bh=hAVDdhZwhoNpDubsbyOj020hxpnxyk2xV6qoztKdil8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q67L2B9atMkJuw9xV/NNYRQPWvvKePPssrGv/AI+w9N7q8vf3AV+ZzYT1bSRg3HL6
 JzMbfU0ANSSfwmPN7lAS3qk6PBKRvMHmaDQSKbiB1Ykncuq0EeA5RqQO2RF/LIKJKp
 okUr8CbZH3wLaVzC4H6L3K8u3EqMx8uNs3DT6Eew=
Date: Wed, 8 May 2019 11:49:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.2-rc1
Message-ID: <20190508094929.GC6996@kroah.com>
References: <20190507175853.GA11568@kroah.com>
 <CAHk-=wg+w5+vAo1DQrprSG8APptZ5-Kek4NL_mnr9p08vFyQrg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wg+w5+vAo1DQrprSG8APptZ5-Kek4NL_mnr9p08vFyQrg@mail.gmail.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 01:33:06PM -0700, Linus Torvalds wrote:
> On Tue, May 7, 2019 at 10:59 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > All of these have been in linux-next for a while with no reported
> > issues, other than an odd gcc warning for one of the new drivers that
> > should be fixed up soon.
> 
> Ok, that's truly a funky warning.
> 
> But since I don't deal well with warnings, particularly during the
> merge window, I just fixed it up in the merge.
> 
> The fix is to simply not have a bitfield base type of "unsigned char",
> and have it cross a char boundary. Instead the base type should just
> be "unsigned int".

Ah, that's how to resolve that, thanks, it wasn't obvious at all from
the odd gcc warning.

> Of course, I couldn't test my change, but it shuts the compiler up,
> and it very much looks like the right thing.

The driver author can test it out, given that it needs loads of work
anyway, whatever you did to it is fine :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
