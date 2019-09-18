Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B7EB6D72
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 22:22:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3AE8487D54;
	Wed, 18 Sep 2019 20:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qlc5VY83ZdhB; Wed, 18 Sep 2019 20:22:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C34EA87DCE;
	Wed, 18 Sep 2019 20:22:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 08C7F1BF311
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:22:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0574186614
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:22:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 89K8LONcHTUp for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 20:22:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com
 [209.85.222.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 41BF684B37
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 20:22:15 +0000 (UTC)
Received: by mail-ua1-f65.google.com with SMTP id f9so318997uaj.4
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 13:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lmhPAPvtiDqgJteyBaaRaA2HGyODpvnBTqjiHuYvfW8=;
 b=sfvASRerbcXbub55XOZDQa1Q6Pr15lLFNTI9N+KlluVI9AP7tro68HSKNCMWhGx5Js
 TvO7LdhJ5wIshdJ5o78Y2Pu/t7lIJlZLkBSLykowc/XPvCKnIO9gNLOvRJ+VMk1XoTaq
 gKE1JKCcDgwx3+i6oQva81SPRosIY1TJ/HS3mH59GFYcixNcq7jzcUdh0WbgY/wjRTvr
 4ovllQQb9hO+6l0bS7tjwYhMIZM6vtnkFEmKxjO4eKS6CL3x1HmSbuKRHd+I1xfPE092
 Q6pXD4tVJsf9j/Ifvia/iR253v0+OBvdM1/4Xndlrif7ZzmiQb894g4HLFM6A0y6+Ovk
 yF+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lmhPAPvtiDqgJteyBaaRaA2HGyODpvnBTqjiHuYvfW8=;
 b=Yil4Q2KtyZsNLpvhcep61hZS//xMll3rzsjMTNHid4zki5/7atEnttTguFPrBGqGVj
 hGq2WLcuEx5XFqfNII0O7yk9bcmDnH1074gO/3YvrGMflTpZJQwbyw/1KM3lOd2EMmat
 e/m9w6b9ANHF9wr5UZho89kA63E59h9Y0gZLp9+WnV4sxdp98b27JK62u7A3cAxKVt1P
 iol9sXMzVHTBxFEkxWI4kXn2QYtDwb87trrtC3IHfcy+JDnzX0pTRMhJSrBZvOEKsb9K
 LpNlL02KPDL49kX/xR0HagUIewBNAyuAQkd76w9tlbJ2P3pfnC1I0yKYBgQVyy4jHhB5
 H3HA==
X-Gm-Message-State: APjAAAU3Q6/IK/ppBARs3RetQXuYGmeCf7bHlM3Fu8dwDfVjeIMHyZix
 3ucuPdIuQP13ojl0/czOyRdj9kuyJhtUK1HC6DY=
X-Google-Smtp-Source: APXvYqy3pJnGFFiPZpSaVj6NyQ+uACbzioEkEoMSk5DLMmTqob6g6Zbdj69w8/4DOKa3t7RcjcDL3Y04gLE7+XWUqwg=
X-Received: by 2002:ab0:7816:: with SMTP id x22mr3609892uaq.97.1568838133906; 
 Wed, 18 Sep 2019 13:22:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190918195920.25210-1-qkrwngud825@gmail.com>
 <20190918201318.GB2025570@kroah.com>
In-Reply-To: <20190918201318.GB2025570@kroah.com>
From: Ju Hyung Park <qkrwngud825@gmail.com>
Date: Thu, 19 Sep 2019 05:22:03 +0900
Message-ID: <CAD14+f0YeAPxmLbxB5gpJbNyjE1YiDyicBXeodwKN4Wvm_qJwA@mail.gmail.com>
Subject: Re: [PATCH] staging: exfat: rebase to sdFAT v2.2.0
To: Greg KH <gregkh@linuxfoundation.org>, Namjae Jeon <namjae.jeon@samsung.com>,
 sj1557.seo@samsung.com
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
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 sergey.senozhatsky@gmail.com, linux-fsdevel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Thu, Sep 19, 2019 at 5:12 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> That's a lot of rewriting :(
>
> How about at least keeping the file names the same to make it easier to
> see what happened here?
>
> Then send a follow-on patch that just does the rename?

That's still not quite useful tbh, lemme bring the diff stat I wrote
in previous email just in case you missed it:
<Full diff stat>
 Kconfig      |   79 +-
 Makefile     |   46 +-
 api.c        |  423 ----
 api.h        |  310 ---
 blkdev.c     |  409 +---
 cache.c      | 1142 ++++-----
 config.h     |   49 -
 core.c       | 5583 ++++++++++++++++++++++++--------------------
 core.h       |  196 --
 core_exfat.c | 1553 ------------
 exfat.h      | 1309 +++++++----
 exfat_fs.h   |  417 ----
 extent.c     |  351 ---
 fatent.c     |  182 --
 misc.c       |  401 ----
 nls.c        |  490 ++--
 super.c      | 5103 +++++++++++++++++++++-------------------
 upcase.c     |  740 ++++++
 upcase.h     |  407 ----
 version.h    |   29 -
 xattr.c      |  136 --
 21 files changed, 8186 insertions(+), 11169 deletions(-)

<diff-filter=M>
 Kconfig  |   79 +-
 Makefile |   46 +-
 blkdev.c |  409 +---
 cache.c  | 1142 +++++-----
 core.c   | 5583 ++++++++++++++++++++++++++----------------------
 exfat.h  | 1309 ++++++++----
 nls.c    |  490 ++---
 super.c  | 5103 ++++++++++++++++++++++---------------------
 8 files changed, 7446 insertions(+), 6715 deletions(-)

These diff stats were taken by removing "exfat_" prefix from the
current staging drivers.

But if that's still what you want, I'll do it.
btw, removing "exfat_" prefix from the current one makes more sense imo.

If we add "exfat_" prefix to the new one, we get weird file names like
"exfat_core_exfat.c".

> And by taking something like this, are you agreeing that Samsung will
> help out with the development of this code to clean it up and get it
> into "real" mergable shape?

Well, I think you got me confused with Namjae.
(Yeah Korean names are confusing I know :) )

Namjae (or anyone else from Samsung) should answer that, not me.

I just prepared a patch as we were getting nowhere like you mentioned :)

> Also, I can't take this patch for this simple reason alone:
> Don't delete SPDX lines :)

Sorry.
I'll add that back for v2.

On Thu, Sep 19, 2019 at 5:13 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Sep 19, 2019 at 04:59:20AM +0900, Park Ju Hyung wrote:
> > --- a/drivers/staging/exfat/exfat.h
> > +++ b/drivers/staging/exfat/exfat.h
> > @@ -1,4 +1,4 @@
> > -/* SPDX-License-Identifier: GPL-2.0 */
> > +// SPDX-License-Identifier: GPL-2.0-or-later
>
> You just changed the license of this file.  Are you SURE about that?

The sdFAT code release explicitly states "either version 2 of the
License, or (at your option) any later version", so I thought that
makes sense:
https://github.com/arter97/exfat-linux/commit/d5393c4cbe0e5b50231aacd33d9b5b0ddf46a005

Please correct me if I'm wrong.

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
