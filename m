Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B09A8F080
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 18:26:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CC3C4228EF;
	Thu, 15 Aug 2019 16:26:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U2hkMLUblI2h; Thu, 15 Aug 2019 16:26:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74D73204D2;
	Thu, 15 Aug 2019 16:26:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D3B041BF3A6
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 16:26:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D08AB883F0
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 16:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z8PuUNMtSt+g for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 16:26:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D74C4883AC
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 16:26:08 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id z17so2774742ljz.0
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 09:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9Io8f1bPaeNDioMtOu6b9FaHz1PaQCP05A6nz5CudSE=;
 b=GdUTEFZxtX4Lqzwngdfr2kBTyvwT41GJPNn6kb81iJMXzazObo52enBgWkwrOOq3lr
 fcNdZi8U6UPgNqNDEBWhKZKeMiP71ad8QufdLOLqaXmVo1Qm1ZJcKLGCfWYtcR0rwDEt
 373s5sBtHdFaBBHWllHqZ5/T8eYXJ/Nx4+edw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9Io8f1bPaeNDioMtOu6b9FaHz1PaQCP05A6nz5CudSE=;
 b=sFjB17pMusnOjm2LR0ebNXXvEXbg6oLJAdQQCnXq7Q9X3k+xdymGX1iom9hAUWDkw4
 CHfDFNsKYQBxooIN4fSQXB1Wu1zXcsYGrDvhTLNe2n8PQFN0EJ6DwMuokd8QUdc88R9X
 yj9xVBRcYuH87oUDSEkhdR7ple+UK/MTWxR0a0NyQP4hokOU/AQfJ5EYyHBt952Qicot
 WDYm4XTTqC2yCPH1lI7OpQUY0CLeJ+RVqDueNWQTauZPnHm5xwYmBtYjVgPT4gs8wycb
 gFI24hBkTc8RVmu2NDUsH2hUdcivJ1grYFZ0hzpOAFCLqfPIJRzaQsQS+paEzIuSIBRN
 D4jg==
X-Gm-Message-State: APjAAAXni9cscgkon5RvOvCzUKZchTQNIvO1daKDuAtP0dbQTHhaLybU
 KcQFT8sOHcVRG9dKrCxSRdV3+R3OcGM=
X-Google-Smtp-Source: APXvYqykOjHSTzyK33H4ChIE0ZKBerh2UV3rCjgb9C++nCcj2Z9g4fGmr6gy5vOl/nKFFO842cgAFw==
X-Received: by 2002:a2e:8150:: with SMTP id t16mr2954800ljg.154.1565886366817; 
 Thu, 15 Aug 2019 09:26:06 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com.
 [209.85.208.180])
 by smtp.gmail.com with ESMTPSA id f17sm515767lfa.67.2019.08.15.09.26.06
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Aug 2019 09:26:06 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id e27so2732921ljb.7
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 09:26:06 -0700 (PDT)
X-Received: by 2002:a2e:9192:: with SMTP id f18mr3104005ljg.52.1565885908392; 
 Thu, 15 Aug 2019 09:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
 <20190815090603.GD4938@kroah.com>
In-Reply-To: <20190815090603.GD4938@kroah.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 15 Aug 2019 09:18:12 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjKz7JLd=mj0w2LUiWC2_VOeNWhTTrw1j-i-KyEHH5g5w@mail.gmail.com>
Message-ID: <CAHk-=wjKz7JLd=mj0w2LUiWC2_VOeNWhTTrw1j-i-KyEHH5g5w@mail.gmail.com>
Subject: Re: [PATCH v8 00/24] erofs: promote erofs from staging v8
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
Cc: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>, Christoph Hellwig <hch@infradead.org>,
 Chao Yu <yuchao0@huawei.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Pavel Machek <pavel@denx.de>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 15, 2019 at 2:06 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> I know everyone is busy, but given the length this has been in staging,
> and the constant good progress toward cleaning it all up that has been
> happening, I want to get this moved out of staging soon.

Since it doesn't touch anything outside of its own filesystem, I have
no real objections. We've never had huge problems with odd
filesystems.

I read through the patches to look for syntactic stuff (ie very much
*not* looking at actual code working or not), and had only one
comment. It's not critical, but it would be nice to do as part of (or
before) the "get it out of staging".

                 Linus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
