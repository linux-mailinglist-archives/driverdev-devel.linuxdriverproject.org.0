Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD07B5FB9
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 11:01:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71C5286497;
	Wed, 18 Sep 2019 09:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J+De+0ag-Phx; Wed, 18 Sep 2019 09:01:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 753B684BC2;
	Wed, 18 Sep 2019 09:01:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE1851BF284
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 09:01:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C550185D97
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 09:01:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lLwVIRaSBWHh for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 09:01:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 35FDC85D35
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 09:01:21 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id p13so3999785vso.0
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 02:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0m8Kbvew+H70KpTTMv2ofbzrIP+F0bBe1liPoWD4miY=;
 b=r0UknZwf2+8JpDjjhIEWROvbWYzXYMt5KU+XFaRy8O2oZv7qnP8kWSLB8BbcsmbGFN
 LLA4lwghiGSGhp7ITukzlR+/Myqev6I/n2zD/ZCNYW9qI7wg5NEKWizx72+F6FIxJsyT
 ND8gv24NOfqoAMDxGnp6rTf7NzybZkHV1WIt8nQm07vDHiDY2wWLOH2GJ1sXSaVkNIFB
 bW6zh902XUEBugns22O/eoBr9xqsZVECkyWWTJwSMZp7NEspUbtdOg0NKxsENWX0SoBP
 knHNHYaMixPD67xuQpa793M2HTbIUSV5hvWris56FjTWVW92dz1RQYgf/kQTKkbdbnKH
 gMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0m8Kbvew+H70KpTTMv2ofbzrIP+F0bBe1liPoWD4miY=;
 b=nnOBvKTImXqmXxZB7f7Jr4Cb/XLKxi1Q9LMfHRg04dTBzK/waxpJaLMa6qg3eP0u6n
 VOvdLkpEe9NJCJ/pbWPqe676Jn+BkrtGzCgbZUMufwEbBnKz0ZpqwktvKBNannkWiyfk
 HjqFo936F3tckAbQnfnSigfLWtr5/gxz8XUhzE/GW5MhHuOrLGNtVhLRN4Nxz9iTHaMX
 uwBXWoNfT2lutDCILA8HV5JimRmuJ0bT459P70Qzvoe+fkN6s1yP/ugZrYBXCgv9EDU0
 itKFZgrwL3T3aYuLwLtI3gOppYnlKirb/mx5fhGu8gKd/CoKmjAlQz3+EbLp+TRrkdUM
 +MqQ==
X-Gm-Message-State: APjAAAUILJo6GJ7VtJmZMCW4cxsArEKO8WbTjafuRJAjMl9Usf2EqW66
 9uaObyiLYcmzfD1MIwBcLVn6HcISK+KzYv4WxzQ=
X-Google-Smtp-Source: APXvYqx+sirlevR/SKCoElfu4AwtwRMyey7zB4BSWHuYr8xvj+GPsyb0ZSXrMqM0S9P/quXnE9tHeoDGjIUJbDDg4C8=
X-Received: by 2002:a67:7087:: with SMTP id l129mr1566826vsc.83.1568797280016; 
 Wed, 18 Sep 2019 02:01:20 -0700 (PDT)
MIME-Version: 1.0
References: <8998.1568693976@turing-police>
 <20190917053134.27926-1-qkrwngud825@gmail.com>
 <20190917054726.GA2058532@kroah.com>
 <CGME20190917060433epcas2p4b12d7581d0ac5477d8f26ec74e634f0a@epcas2p4.samsung.com>
 <CAD14+f1adJPRTvk8awgPJwCoHXSngqoKcAze1xbHVVvrhSMGrQ@mail.gmail.com>
 <004401d56dc9$b00fd7a0$102f86e0$@samsung.com>
 <20190918061605.GA1832786@kroah.com>
 <20190918063304.GA8354@jagdpanzerIV> <20190918082658.GA1861850@kroah.com>
In-Reply-To: <20190918082658.GA1861850@kroah.com>
From: Ju Hyung Park <qkrwngud825@gmail.com>
Date: Wed, 18 Sep 2019 18:01:09 +0900
Message-ID: <CAD14+f24gujg3S41ARYn3CvfCq9_v+M2kot=RR3u7sNsBGte0Q@mail.gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
To: Greg KH <gregkh@linuxfoundation.org>
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
 Namjae Jeon <namjae.jeon@samsung.com>, linux-kernel@vger.kernel.org,
 alexander.levin@microsoft.com, sergey.senozhatsky@gmail.com,
 linux-fsdevel@vger.kernel.org, sj1557.seo@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 18, 2019 at 5:33 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> He did?  I do not see a patch anywhere, what is the message-id of it?

I'm just repeating myself at this point, but again, I'm more than
willing to work on a patch.
I just want to make it clear on how should I.

> He took the "best known at the time" codebase, as we had nothing else to
> work with.

It wasn't the "best known at the time". sdFAT has been around now for years.

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
