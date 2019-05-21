Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBE724A83
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 10:35:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 69C58251E1;
	Tue, 21 May 2019 08:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MqWgPP2YAu6A; Tue, 21 May 2019 08:35:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA29523077;
	Tue, 21 May 2019 08:35:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B25321BF2C8
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 08:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A70FD85E40
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 08:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QxS143lJRk2s for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:35:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F1C185B99
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 08:35:14 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id u11so15562454otq.7
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 01:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zhesb/W9XipgqrrNPLPqdvD2/za82zT6LyixgGoAM9s=;
 b=g8+Nl3k3OmDRuhKnSDZ37atwAn9xDqShtEIgKkznYcwmj+Zel0rTQe6B+bM7VVqTg6
 HftrbAok5EBMpmqmEzsERSjy5C2VBa4UqvgS0MANQiWbirTmoYJHLvaDE6Jp7AdU7/9S
 PBOV0OKabhqHvwZyjvdsKEJPtubnCVxFQjp9/cmsDxFOyq03txxbSuDPZ1UfnnABV29f
 oW6MJug9tmEdAuvq5xAjLP/7k5WUxUi45x5BafEHdBjLryz/mwl8ny+KBbUHB7DxgocO
 uOtcFo/PY9TTGrIo5ykqyZDnTBQ3BC9Rq3JqT3MpcO6iP7VzQd3v9DiytY2FSSwGnm7H
 +38w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zhesb/W9XipgqrrNPLPqdvD2/za82zT6LyixgGoAM9s=;
 b=Fan/TNYOtjmXOdlRmbNHVPXJN6/dhl5SdrTk0mbrb9hC7AR2omewYM8ywkTl5EX/1w
 jAPAHxg2Jj/uIrscU5D78uxiHsLjxtX83B1HQV/u7n25jKeowQNu6JsNs31W2Cx0889U
 gXRQm7RA6vDmF4SXCBDbXhgwTsG9OUi/zFlU3yAhKNVLxpAnpTODMAUQVxUyVt0+gOZx
 ONZK6AfiEdPmuNIC9uppyyHzT8WFc0Q7bJPK3crhlVYC6u0AA3PyO0eQUeocFkCqMl05
 NYJzzfysLonK9alDrNs7883T8CU6GbnlEDCYojO6oCj4E+9ZfFKNk2Zd7ojvIs02k4yF
 Hktw==
X-Gm-Message-State: APjAAAXUKLxfg8ib1qPptzpuVyq4dzPEIII2VwK5ZSgDGQITLOZ1fCx1
 l+0VhdB9Iy1ksFWPFq0gjKhDUOJ+FEGbUr1Zu6p1Mo2Z
X-Google-Smtp-Source: APXvYqz3hpBMsWdirjkxZ8tRVzOfXjig/h3dw4rm3JyHPeypK3C2UNCfDy6OzMjDYsO+eF9M1hj183BMkseb63C8G8o=
X-Received: by 2002:a9d:10d:: with SMTP id 13mr19056614otu.14.1558427713459;
 Tue, 21 May 2019 01:35:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558146549.git.gneukum1@gmail.com>
 <20190520083026.GA13877@kroah.com>
 <CA+T6rvENoDXbUWEi4C5kXxsdamkZKVP19MwzEuxs0qC=ckMyeQ@mail.gmail.com>
In-Reply-To: <CA+T6rvENoDXbUWEi4C5kXxsdamkZKVP19MwzEuxs0qC=ckMyeQ@mail.gmail.com>
From: Geordan Neukum <gneukum1@gmail.com>
Date: Tue, 21 May 2019 08:34:52 +0000
Message-ID: <CA+T6rvHrhTQLL_WCAPbj9nXngH2NCoW+kMXgGpGWB7+rLfYEOw@mail.gmail.com>
Subject: Re: [PATCH 0/5] Updates to staging driver: kpc_i2c
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> On Mon, May 20, 2019 at 10:30:26AM +0200, Greg Kroah-Hartman wrote:
>
> All now queued up.  I'll rebase my patches that move this file on top of
> yours, as kbuild found some problems with mine, and I'll resend them to
> the list.
>
> Thanks.

** Same content as last reply, just realized that I had configured my
** email client to do something wrong. Resend for readability's sake.

Additionally, I plan on trying to clean up that driver a bit more. Should I
base my future patches off of the staging tree so that I'll have the
"latest" driver as my basepoint? I don't want to cause any headaches
for anyone in the future.

Apologies, if I missed something obvious on the newbies wiki.
Assuming that I did not, I will certainly go ahead and try to document
this case either on or as a link from the "sending your first patch"
page.

Cheers,
Geordan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
