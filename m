Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0706F893
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 06:39:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8F3387629;
	Mon, 22 Jul 2019 04:39:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eCpwPsuBz2IP; Mon, 22 Jul 2019 04:39:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C268986F12;
	Mon, 22 Jul 2019 04:39:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 675421BF386
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 04:39:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 63A4385727
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 04:39:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w12GdUTqHuVn for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 04:39:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
 [209.85.161.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 155A9854C0
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 04:39:40 +0000 (UTC)
Received: by mail-yw1-f65.google.com with SMTP id f187so15407159ywa.5
 for <devel@driverdev.osuosl.org>; Sun, 21 Jul 2019 21:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OMqsPQOjQqPIEBmD3EIh4Qtw05vaz+UOfW4nYOJHTL4=;
 b=t/VUEFE9R2TvEBxbMNvsYCoL2WZYdDc0V4kRWpaHd/rCAxdQIa436PxuYFihm/ifDL
 H5FDSOR4DAcsJfHRaXAU2y1fOgiHivBPZDcNU+NKvX/KOFe0+TIojO7yzrLOaCpfSgyH
 8w8H1swbhb7jAhafPPfws0q8ehyTp/OIOqdO5fSa9w6TNw/A3QFZcpZ7zIQOcFFirqf3
 rRY81Z8vai/trJWZwFmj3nqB2pLuwZujCtzdqgYaUFY39SgnBtvz0FEizNU7qvcPe1iZ
 9Cd4RFJF9WGz6EuAuJQeCzPQRQ2HfRrXe7rRYmw/vjWiISrRX9vt1y7X3WVeck0H9Ayf
 1UGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OMqsPQOjQqPIEBmD3EIh4Qtw05vaz+UOfW4nYOJHTL4=;
 b=AGLrFtPZVDdvowLMpH2r6cNrwxKEnIfWcIJekEbGl43L9F0MMhvn5769bTU9Uu/25/
 YGZppivxuYc/iHo7730/eCIXThfRX3/VF80FRcKTLY97Ft7d4LMMy5AshCTeUllo7nna
 /A96wvqlka8/s/kfpPiR6/8lV4oRE+UdFFyV5RQXbhzQEk/5Ah8jc896TDdjoEjGXnF8
 5x/WIXPxtJtOPwytFs/wHM2Q5zN23+Rd6tCTR2RmWeNuozJpnfuwD8Z5SM4sUgT5jeiG
 GcqCSP1L6kENJd5ap4lPr7EMqAKUWf5TyQGeR+kDBUXyXsqqFq6EDqRXmXpmIvcoSwge
 WuDg==
X-Gm-Message-State: APjAAAWuV0+kYVdpVJjv8/sSE4nIHafhqMP/VYb5H5nSOFMgM6OL06Gg
 s6XbDz4hjwzAPOa6RRw/gnI22wTRCyeP8tUT9EQ=
X-Google-Smtp-Source: APXvYqw2nuO6UwixpRbfaNpk9MK1Ao8/qBkIZzg+dLv0cDdjoBg3WbnEO02wQKi8/VMw4pkqKPvLqF4+21jZlLPQ/AY=
X-Received: by 2002:a81:50d5:: with SMTP id
 e204mr39589702ywb.379.1563770379165; 
 Sun, 21 Jul 2019 21:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-13-gaoxiang25@huawei.com>
In-Reply-To: <20190722025043.166344-13-gaoxiang25@huawei.com>
From: Amir Goldstein <amir73il@gmail.com>
Date: Mon, 22 Jul 2019 07:39:27 +0300
Message-ID: <CAOQ4uxh04gwbM4yFaVpWHVwmJ4BJo4bZaU8A4_NQh2bO_xCHJg@mail.gmail.com>
Subject: Re: [PATCH v3 12/24] erofs: introduce tagged pointer
To: Gao Xiang <gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 22, 2019 at 5:54 AM Gao Xiang <gaoxiang25@huawei.com> wrote:
>
> Currently kernel has scattered tagged pointer usages
> hacked by hand in plain code, without a unique and
> portable functionset to highlight the tagged pointer
> itself and wrap these hacked code in order to clean up
> all over meaningless magic masks.
>
> This patch introduces simple generic methods to fold
> tags into a pointer integer. Currently it supports
> the last n bits of the pointer for tags, which can be
> selected by users.
>
> In addition, it will also be used for the upcoming EROFS
> filesystem, which heavily uses tagged pointer pproach
>  to reduce extra memory allocation.
>
> Link: https://en.wikipedia.org/wiki/Tagged_pointer

Well, it won't do much good for other kernel users in fs/erofs/ ;-)

I think now would be a right time to promote this facility to
include/linux as you initially proposed.
I don't recall you got any objections. No ACKs either, but I think
that was the good kind of silence (?)

You might want to post the __fdget conversion patch [1] as a
bonus patch on top of your series.

Thanks,
Amir.

[1] https://lore.kernel.org/linux-fsdevel/1530543233-65279-2-git-send-email-gaoxiang25@huawei.com/
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
