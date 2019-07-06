Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F653612CA
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 21:09:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9533B87582;
	Sat,  6 Jul 2019 19:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 801tKQa3cot5; Sat,  6 Jul 2019 19:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB3E785E5E;
	Sat,  6 Jul 2019 19:09:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FBA51BF3E9
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 19:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3B81F85D5F
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 19:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HiiokJO1pAXL for <devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 19:09:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 25A6785BF7
 for <devel@driverdev.osuosl.org>; Sat,  6 Jul 2019 19:09:22 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id h19so9826207wme.0
 for <devel@driverdev.osuosl.org>; Sat, 06 Jul 2019 12:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=56oSEf1QWNflez9DrQkV2EMn6gSxdG1QuQYkE8nqcsI=;
 b=qxAsnpKE8vKRlRIsHwFuYF0aeYKdxZunhe24J8fHm01P1aIrNrtsL1F3xGo5Ov0ltF
 Tl8jbaZvbLwmaD5Y8E/CGzPRn8/1QkjhDm0obOzaIcbiy+V0m9U8hfsu7u+ypKzmFwEk
 u+fPRB6ie1ij6u6zhjyglANy+Qmk8W25G/B9mQw9yJgkvOi/zXNANMDfr7qtM0GZQk11
 KWz2RzVS5pElEF2O7ZCZxsEulz7lbo+ax0c6G8fq4A0EsXRCpD8bRW9Kpv0RP5YoxtVX
 FVm+n7K0NKQnMyd4ReCJpMMsroAVs1ElwaNTfHcmhEV5QyNIbxpxpqhTtVvweXb1Y20H
 WjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=56oSEf1QWNflez9DrQkV2EMn6gSxdG1QuQYkE8nqcsI=;
 b=oXSf7dqtW87Vmo6XpVPGHVewvtypH3DsI1+3Ewdc5gD+G2GvO6+KHvH86bmNSA7V4y
 KyzksnR++lg46cV3pnQWVVBV/Tavjkkg3BXz4cHxaVN1t5e3H10UMoHIVQpNxNHEr2K2
 6R7PHivAuQTZYYGqLFP8rzqYxW5BNyimx1V1eqRP+Q169hfRHDkiQx/maL1hs3X+t7fh
 TGCNbDpOHnibDU3CoDwmO/Wb6HHjTWcVQwjp08G2rABmHLWPv9TGZYuBKa+5audjDh4Y
 VRmtdJOurL4VVTf3xHmyv7EMHapz4rOqvB2VKpWOfkiHAaXaJGiG2xWIEZI6i5dWxWHk
 u17g==
X-Gm-Message-State: APjAAAVfjUooBqZk2DWla2oaP2ZJJ44w8uMmYLaaBpDx1Gb+pdIKv89y
 Y8d7DzsXJFm3Ol+ekmJD4F8=
X-Google-Smtp-Source: APXvYqylQU3EYMEgK+2bMp4vAZyYHpHm9d8euLRfo0WZfiOxmUiP4UQFnzsb6OO7atSx85Q2SUzQiw==
X-Received: by 2002:a1c:7304:: with SMTP id d4mr8672908wmb.39.1562440160482;
 Sat, 06 Jul 2019 12:09:20 -0700 (PDT)
Received: from narunkot ([176.24.221.95])
 by smtp.gmail.com with ESMTPSA id u1sm11061348wml.14.2019.07.06.12.09.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 06 Jul 2019 12:09:19 -0700 (PDT)
Date: Sat, 6 Jul 2019 20:08:57 +0100
From: Okash Khawaja <okash.khawaja@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: Staging status of speakup
Message-ID: <20190706200857.22918345@narunkot>
In-Reply-To: <20190316031831.GA2499@kroah.com>
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Simon Dickson <simonhdickson@gmail.com>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Christopher Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 15 Mar 2019 20:18:31 -0700
Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:

> On Fri, Mar 15, 2019 at 01:01:27PM +0000, Okash Khawaja wrote:
> > Hi,
> > 
> > We have made progress on the items in TODO file of speakup driver in
> > staging directory and wanted to get some clarity on the remaining
> > items. Below is a summary of status of each item along with the
> > quotes from TODO file.
> > 
> > 1. "The first issue has to do with the way speakup communicates
> > with serial ports.  Currently, we communicate directly with the
> > hardware ports. This however conflicts with the standard serial
> > port drivers, which poses various problems. This is also not
> > working for modern hardware such as PCI-based serial ports.  Also,
> > there is not a way we can communicate with USB devices.  The
> > current serial port handling code is in serialio.c in this
> > directory."
> > 
> > Drivers for all external synths now use TTY to communcate with the
> > devices. Only ones still using direct communication with hardware
> > ports are internal synths: acntpc, decpc, dtlk and keypc. These are
> > typically ISA cards and generally hardware which is difficult to
> > make work. We can leave these in staging.  
> 
> Ok, that's fine.
> 
> > 2. "Some places are currently using in_atomic() because speakup
> > functions are called in various contexts, and a couple of things
> > can't happen in these cases. Pushing work to some worker thread
> > would probably help, as was already done for the serial port
> > driving part."
> > 
> > There aren't any uses of in_atomic anymore. Commit d7500135802c
> > "Staging: speakup: Move pasting into a work item" was the last one
> > that removed such uses.  
> 
> Great, let's remove that todo item then.
> 
> > 3. "There is a duplication of the selection functions in
> > selections.c. These functions should get exported from
> > drivers/char/selection.c (clear_selection notably) and used from
> > there instead."
> > 
> > This is yet to be done. I guess drivers/char/selection.c is now
> > under drivers/tty/vt/selection.c.  
> 
> Yes, someone should update the todo item :)
> 
> > 4. "The kobjects may have to move to a more proper place in /sys.The
> > discussion on lkml resulted to putting speech synthesizers in the
> > "speech" class, and the speakup screen reader itself
> > into /sys/class/vtconsole/vtcon0/speakup, the nasty path being
> > handled by userland tools."
> > 
> > Although this makes logical sense, the change will mean changing
> > interface with userspace and hence the user space tools. I tried to
> > search the lkml discussion but couldn't find it. It will be good to
> > know your thoughts on this.  
> 
> I don't remember, sorry.  I can review the kobject/sysfs usage if you
> think it is "good enough" now and see if I find anything
> objectionable.
> 
> > Finally there is an issue where text in output buffer sometimes gets
> > garbled on SMP systems, but we can continue working on it after the
> > driver is moved out of staging, if that's okay. Basically we need a
> > reproducer of this issue.
> > 
> > In addition to above, there are likely code style issues which will
> > need to be fixed.
> > 
> > We are very keen to get speakup out of staging both, for settling
> > the driver but also for getting included in distros which build
> > only the mainline drivers.  
> 
> That's great, I am glad to see this happen.  How about work on the
> selection thing and then I can review the kobject stuff in a few
> weeks, and then we can start moving things for 5.2?

Hi Greg,

Apologies for the delay. I de-duplicated selection code in speakup to
use code that's already in kernel (commit ids 496124e5e16e and
41f13084506a). Following items are what remain now:

1. moving kobjects location
2. fixing garbled text

I couldn't replicate garbled text but Simon (also in CC list) is
looking into it.

Can you please advise on the way forward?

Thanks,
Okash
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
