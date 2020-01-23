Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0EB1473B9
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 23:22:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8519086B71;
	Thu, 23 Jan 2020 22:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kQiSVQ1j8cr2; Thu, 23 Jan 2020 22:22:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F38F86A78;
	Thu, 23 Jan 2020 22:22:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14DB61BF384
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 22:22:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 09BA5876DA
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 22:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lf1zlx2EIGko for <devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 22:22:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6F62C876D9
 for <devel@driverdev.osuosl.org>; Thu, 23 Jan 2020 22:22:11 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id g6so1958595plp.6
 for <devel@driverdev.osuosl.org>; Thu, 23 Jan 2020 14:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=POE26sNda0qtVdGqaXyUt84eyMAEBk9xA850hvv0kH4=;
 b=owiLuPsQcxHYXKCoP2YMvnzUUPRJslexRJOb18oXdkPOh4AC/fUyal/8hlDeRp0mdv
 95kuNy3Kj511gamXHKpivwFl1DWCF0A0Y4Gg8kcYVQlTq+a1hI+Oq2F7npRIwS/sRbLy
 bQYuRm0gv+0PeBKEW6cZ337kB2rH+rFCuIyCs5tDxu5vilTm2/tjN4N8+GWxnzQjyXBF
 a8OwHYZWuHAxe0etWYupTfs/aNXsWV/aIkLDu1qVfQFPWPIOni32bHbPFDm0fPpaDhqL
 Vl7ulGV5qPCRx2w5O/MhRC8mo1C9nAOIV9q9rvvlvmxFRh8+uxQr97uBodTZuSf5YqYq
 4gYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=POE26sNda0qtVdGqaXyUt84eyMAEBk9xA850hvv0kH4=;
 b=hjNaU769W18UG3CxOZIV8M4J6lxiGKl1v9fAIR2IXF7WTwgmZjz5utZW5f6R6GEJxr
 jTlqYHkOZK9NfoxQwqabLNM15VZsG/orFWbHCwAiVEag/ASm66ghJnLNix+Q3rVWy6q/
 Joqh0Sib0x417aAGG4hZzyxQDhEGnG5JigJ0SpMqak254RvNcIHFUf4PLKg2fcvqj7R+
 C7AsKOkrBroPLqi4i7BHAyu6CrSbWuWgt2Z6eBAlIBGMWc+IhL00pTxK8H/nyjMTykdS
 YLwY3ezHL8OsEfAsTRNZYT3akdEO5k9ydOMzpSjbs1bUEHDH+jdRLl2Mo9r0mdP9HfMt
 0w1g==
X-Gm-Message-State: APjAAAVB+t6JpPVoX/qDg2wseRmBlXfrWU+JA72fYHwMC7FWv2zv+M/T
 B/rO8wQ/eGpKtbkW+IfvaECKs+H2xQvGPboKt3AIzQeZ
X-Google-Smtp-Source: APXvYqxxENHLtb92CkinCc6e7hMd/rmU5Q1evHN28+Wrp9/KsMdz3zfVLEZj0nvViglYxV3hcct7P8IRe35WoCSUI4U=
X-Received: by 2002:a17:902:fe8d:: with SMTP id
 x13mr320727plm.232.1579817786931; 
 Thu, 23 Jan 2020 14:16:26 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-7-brendanhiggins@google.com>
 <20191214112815.GA3335535@kroah.com>
In-Reply-To: <20191214112815.GA3335535@kroah.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 23 Jan 2020 14:16:15 -0800
Message-ID: <CAFd5g44Eg7DjBYWfKZ-s860X+GW65k-RtwjfEbeGXkKQ99h8WA@mail.gmail.com>
Subject: Re: [PATCH v1 6/7] staging: axis-fifo: add unspecified HAS_IOMEM
 dependency
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
Cc: Moses Christopher <moseschristopherb@gmail.com>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 14, 2019 at 3:28 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Dec 11, 2019 at 11:27:41AM -0800, Brendan Higgins wrote:
> > Currently CONFIG_XIL_AXIS_FIFO=y implicitly depends on
> > CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> > the following build error:
> >
> > ld: drivers/staging/axis-fifo/axis-fifo.o: in function `axis_fifo_probe':
> > drivers/staging/axis-fifo/axis-fifo.c:809: undefined reference to `devm_ioremap_resource'
> >
> > Fix the build error by adding the unspecified dependency.
> >
> > Reported-by: Brendan Higgins <brendanhiggins@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>
> Saying you reported a problem and then fixed it kind of does a bit of
> disservice to the "reported-by:" tag which we normally use only to
> credit the people that do not actually fix the problem.
>
> So in the future, no need for this to be there for patches that you
> write yourself.

Alright, thanks for spelling that out. I will remember that in the future.

Cheers!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
