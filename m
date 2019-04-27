Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8D5B2FC
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 09:01:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CFA28602E;
	Sat, 27 Apr 2019 07:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dq4BCdkZRCWG; Sat, 27 Apr 2019 07:01:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0751F83B2F;
	Sat, 27 Apr 2019 07:01:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0EC8F1BF3AB
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 07:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 06CF385565
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 07:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2tll2h1H18no for <devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 07:01:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.osadl.at (178.115.242.59.static.drei.at [178.115.242.59])
 by whitealder.osuosl.org (Postfix) with ESMTP id BCE5B83B2F
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 07:01:13 +0000 (UTC)
Received: by mail.osadl.at (Postfix, from userid 1001)
 id 1D7A85C1337; Sat, 27 Apr 2019 09:00:21 +0200 (CEST)
Date: Sat, 27 Apr 2019 09:00:21 +0200
From: Nicholas Mc Guire <der.herr@hofr.at>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH RFC] staging: fieldbus: anybus-s: use proper type for
 wait_for_completion_timeout
Message-ID: <20190427070021.GA2290@osadl.at>
References: <1556339208-7722-1-git-send-email-hofrat@osadl.org>
 <CAGngYiXBrNu7Jrk535=L89-mOSNx-6EfqL=1EwwG49Sf44R0Vg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiXBrNu7Jrk535=L89-mOSNx-6EfqL=1EwwG49Sf44R0Vg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 27, 2019 at 02:17:42AM -0400, Sven Van Asbroeck wrote:
> Hello Nicholas, thank you for your contribution, I really appreciate it !
> See inline comments below.
> 
> On Sat, Apr 27, 2019 at 12:32 AM Nicholas Mc Guire <hofrat@osadl.org> wrote:
> >
> > wait_for_completion_timeout() returns unsigned long (0 on timeout or
> > remaining jiffies) not int.
> 
> Nice catch !
> 
> > thus there is no negative case to check for
> > here.
> 
> The current code can only break if wait_for_completion_timeout()
> returns an unsigned long large enough to make the "int ret" turn
> negative. This could result in probe() returning a nonsensical error
> value, even though the wait did not time out.
> 
> Fortunately that currently cannot happen, because TIMEOUT
> (2*HZ) won't overflow an int.

ok - thats benign then -  never the less since code tends to get copied 
it would be good to make it comply with API spec

> 
> That being said, this return value type mismatch should definitely
> be fixed up.
> 
> >
> > Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
> > ---
> >
> > Problem located with experimental API conformance checking cocci script
> >
> > Q: It is not really clear if the proposed fix is the right thing here or if
> >    this should not be using wait_for_completion_interruptible - which would
> >    return -ERESTARTSYS on interruption. Someone that knows the details of
> >    this driver would need to check what condition should initiate the
> >    goto err_reset; which was actually unreachable in the current code.
> 
> It's used in probe(), so no need for an interruptible wait, AFAIK.
> It can stay as-is.
> 
> >
> > Patch was compile-tested with. x86_64_defconfig + FIELDBUS_DEV=m,
> > HMS_ANYBUSS_BUS=m
> > (some unrelated sparse warnings (cast to restricted __be16))
> 
> That sounds interesting too. Could you provide more details?

make C=1
drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted


> 
> <snip>
> 
> > -       ret = wait_for_completion_timeout(&cd->card_boot, TIMEOUT);
> > -       if (ret == 0)
> > +       time_left = wait_for_completion_timeout(&cd->card_boot, TIMEOUT);
> > +       if (time_left == 0)
> >                 ret = -ETIMEDOUT;
> > -       if (ret < 0)
> > -               goto err_reset;
> 
> NAK. This does not jump to err_reset on timeout.
> 
> May I suggest the following instead ? (manual formatting)
> 
> - ret = wait_for_completion_timeout(&cd->card_boot, TIMEOUT);
> - if (ret == 0)
> -         ret = -ETIMEDOUT;
> - if (ret < 0)
> -         goto err_reset;
> + if (!wait_for_completion_timeout(&cd->card_boot, TIMEOUT)) {
> +         ret = -ETIMEDOUT;
> +         goto err_reset;
> + }

Ah - ok - that was the bit missing for me !
how that goto branch would be reached or if it should be
dropped as it had not been reachable in the past.

I'll send the V2 later today then.

thx!
hofrat

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
