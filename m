Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF262740D
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 03:35:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E30F687F9F;
	Thu, 23 May 2019 01:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id keIQgv2q1W-U; Thu, 23 May 2019 01:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7607387ED2;
	Thu, 23 May 2019 01:35:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78B7B1BF989
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 01:35:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6A08686288
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 01:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cUmrHjQTWSlC for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 01:35:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB57D8625F
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 01:35:26 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id n14so3960699otk.2
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 18:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Py6c/Iu/9IaiaLPHGtJCGvpx9eg89xJPkl6DsJ/JuAE=;
 b=QNfaqtv6AqfoF3fsF+nZn+mJrS1Es390itSMlBewn6ygvwxvqvHIl8GzmJYMu+upt0
 LPSdwZi9n0Eimidg0zKa4Y8MrIO7on4UbGXNJ+h6caxchun/Wr8Kmsh7dyIpyrVIBOuj
 12BlWS60Kh2JPX+ugupWfHGEGllWVlfrJSP7fPRdtw4FccK9DR0EgEP3jwJW/tlMNB7G
 qs2OT/HwnvtYO/5hJQJ/grjjlzWjl74SioOHMaCvCqvA0lnnQ0eshzHII3WNvIS+2UNs
 QjIQNV5ARnnEXvmxTRH7+EHy0pziRnasH1T8ieQnAEXzlFKQgq2MfAod+Ty83GFrDX75
 SaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Py6c/Iu/9IaiaLPHGtJCGvpx9eg89xJPkl6DsJ/JuAE=;
 b=fB3dQt5vP8RHbDAftGZg3cCcZSF/ZreqJKersfhEbFGb/4fNbXViaYRSgYYtlR8xXK
 t0HdtIZZwzf2Kyskd4m8N0lJhIQ9gWFnyEoboAfYkdjnZqfMj3GUOVvdzdf1wMAOz6I+
 NxRluLjNkDa3Xk3jghAzYPZASyCmZjNGpUfv3STMfjQK2Obo0ZQ1trTMypD4aIQNPZc3
 TznhRHHOzgkKtPKHHsrHLjUr2YRuiQlUpIclwgO/Jj3HnApN1pUSVv/QVxSJFAHUSgsr
 nA8ceKEkYAJy+sa7pGTMBawZ/23tnt+0sY2ycdKd255FQPs0rlIi4OETQKsth3eyQ974
 ZLuQ==
X-Gm-Message-State: APjAAAXcRKD8cNNNnhaHMs3ZVKYSceq1PyrRHTOJh/PSIAT7PcXOuEhS
 /rUqvTuhpw4Mb6Y5//VqMO3dyk5iGU0+HBXNoAQ=
X-Google-Smtp-Source: APXvYqzyV+0g6YcgYh0pf1dd1V/6yGNW5OOp2cYuAA9VVcsWFyG1b2eqtqLCB13lEPVEuWnFMV4qE+rX6dzMtudL34M=
X-Received: by 2002:a9d:57cd:: with SMTP id q13mr37664016oti.327.1558575326154; 
 Wed, 22 May 2019 18:35:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558526487.git.gneukum1@gmail.com>
 <932843299b814f3a22dd176771b46be14ceefeea.1558526487.git.gneukum1@gmail.com>
 <20190522122714.GA2270@kroah.com>
In-Reply-To: <20190522122714.GA2270@kroah.com>
From: Geordan Neukum <gneukum1@gmail.com>
Date: Thu, 23 May 2019 01:35:02 +0000
Message-ID: <CA+T6rvEXCBukwmFS-Z4DFNoFBv9OToWwAYA2AXWBVa5mUG10zA@mail.gmail.com>
Subject: Re: [PATCH 1/6] staging: kpc2000: make kconfig symbol 'KPC2000'
 select dependencies
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

On Wed, May 22, 2019 at 12:27 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> depends on is better than select.  There's a change to depend on UIO for
> this code already in my -linus branch which will show up in Linus's tree
> in a week or so.

Noted on both accounts. Thanks for the feedback and sorry for the
inconvenience on the latter.

> Are you sure we need MFD_CORE as well for this code?

I noticed the build issue when working locally. I was doing
something along the lines of: 'make distclean && make x86_64_defconfig',
selecting 'CONFIG_KPC2000' and 'CONFIG_UIO' via menuconfig, then
running a good old 'make'. From make, I received an error along the
lines of:

ERROR: "mfd_remove_devices"
[drivers/staging/kpc2000/kpc2000/kpc2000.ko] undefined!
ERROR: "mfd_add_devices" [drivers/staging/kpc2000/kpc2000/kpc2000.ko] undefined!
make[1]: *** [scripts/Makefile.modpost:91: __modpost] Error 1
make: *** [Makefile:1290: modules] Error 2

which appears to indicate that those two symbols are undefined. When
I looked, it appeared that those symbols were exported from the
mfd-core which is why I also threw in a select for that Kconfig
symbol. Assuming that I didn't do something silly above, I'd be happy
to submit a new patch (with only a depends on for MFD_CORE) as I
continue trying to fix up the i2c driver.

>Why hasn't that been seen on any build errors?

To be honest, I can't say that I'm familiar with all of the different
build bots out there so I can't even begin to speculate on that one.
If someone could point me in the right direction there, I'd be happy
to investigate further.

Thanks again for your feedback all,
Geordan Neukum
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
