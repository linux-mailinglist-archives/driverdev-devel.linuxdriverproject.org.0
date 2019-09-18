Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE100B61A6
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 12:46:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76C8A85E85;
	Wed, 18 Sep 2019 10:46:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K_3-UmHuSRa5; Wed, 18 Sep 2019 10:46:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EA5084812;
	Wed, 18 Sep 2019 10:46:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2FBA1BF962
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 10:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F024F203B8
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 10:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b9Jbb2AAN9QO for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 10:46:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com
 [209.85.222.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 810782039C
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 10:46:38 +0000 (UTC)
Received: by mail-ua1-f65.google.com with SMTP id r25so2176502uam.3
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 03:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BrhjnjM/XptL/cFMvLE/Y5Ttnqqp6IMVWZhIN4+ypyQ=;
 b=PXCOCYZLhjJjZhE0mCL7O99pzsqv5a9ePHsS5rpMpNEI66tHMcwkt6QXk6xsoRFdnX
 5xGiHw/Gq49SKAqf4iYSz+w/1DwypCsVdYkNzpMGceTRdxpzhk8epbsMm5g8Vhp0qgu0
 f4Gfg4dN+IDjBLnrk813NbLfH/un016KuQeOfs3ol+qbLgNt9wD4UZ1k+ns6Rh8DfLUb
 COOV5Sjf5+a33CIabIm4SZZfN7T4C1VbzYvwPZneQLdUxApH1uUnjIyavc8Ok9YwDiWA
 KOLH2G1jDo+JzZD/gzTPSh9TrxVelvjKdbYIFktwsLhftDuNpYvSRZfS1Aq5BrYg856k
 BKjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BrhjnjM/XptL/cFMvLE/Y5Ttnqqp6IMVWZhIN4+ypyQ=;
 b=Mj4SJrs//d2U5rRjuqjPK+ovf8a++svIQTcwdz4VZEhDBzBcCdUizpbUZV7tp9nMF7
 aZKOnGOEr3VmyUQYQdOFwFSVLaLRXR41Mc0NmRjJ+zS6XpQ49PT0mytALAdhvE4VgUmT
 ABowDt3GIhCGvF1UyeLRryOdOnNoBfqF7gQ22v4lOZEy2I6D3CH3M88AoCs2qnVdReF3
 5gViV1Ny33NZH9WSlBJ1x/M9EfkEhKu68DZ1W3AXbPPQFSlicwetJ16YOFWUX6WujxoH
 vfmyTVESCg1+okcQbmrWgMISk68ky+4/RMK+yc5ypoGmxMYttygLPvWQhJoC+qcJgqv4
 0EpA==
X-Gm-Message-State: APjAAAUtWu8kJujMusXR45RnwGOAGcgMoqLlNImVy6rzmmyuofJZ6mCK
 TdF1u+SC46WmdDrxe6Ml2n4/HR66dtwK3jJ0cjY=
X-Google-Smtp-Source: APXvYqwIg2lHMqtsEN5dzTh1ZkxryX4kas0pMBnOy6W/Vn/g0zZ7QGhTYumeAnuCciJllbWcyxE3Z6bF4YyOBG+Ro2A=
X-Received: by 2002:ab0:2808:: with SMTP id w8mr1785489uap.75.1568803597279;
 Wed, 18 Sep 2019 03:46:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190917054726.GA2058532@kroah.com>
 <CGME20190917060433epcas2p4b12d7581d0ac5477d8f26ec74e634f0a@epcas2p4.samsung.com>
 <CAD14+f1adJPRTvk8awgPJwCoHXSngqoKcAze1xbHVVvrhSMGrQ@mail.gmail.com>
 <004401d56dc9$b00fd7a0$102f86e0$@samsung.com>
 <20190918061605.GA1832786@kroah.com>
 <20190918063304.GA8354@jagdpanzerIV> <20190918082658.GA1861850@kroah.com>
 <CAD14+f24gujg3S41ARYn3CvfCq9_v+M2kot=RR3u7sNsBGte0Q@mail.gmail.com>
 <20190918092405.GC2959@kadam>
 <CAD14+f1yQWoZH4onJwbt1kezxyoHW147HA-1p+U0dVo3r=mqBw@mail.gmail.com>
 <20190918100803.GD2959@kadam>
In-Reply-To: <20190918100803.GD2959@kadam>
From: Ju Hyung Park <qkrwngud825@gmail.com>
Date: Wed, 18 Sep 2019 19:46:25 +0900
Message-ID: <CAD14+f1yT2_d8RP2a2NqAVYAkmB4ti6KjSsV2sM8SVCOQ_M=RQ@mail.gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Namjae Jeon <namjae.jeon@samsung.com>, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 sergey.senozhatsky@gmail.com, linux-fsdevel@vger.kernel.org,
 sj1557.seo@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 18, 2019 at 7:09 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> Use Kconfig.

Not just that.
There are a lot of non-static functions that's not marked ex/sdfat-specific.
(which we would have to clean it up eventually)

Even with sdFAT base, there are some non-static functions named as exfat.

Figuring out a solution for this is pretty pointless imho when one of
the drivers will be dropped soon(ish) anyways.

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
