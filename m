Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D12824A00
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 10:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E36D887824;
	Tue, 21 May 2019 08:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gid+HH1OdODw; Tue, 21 May 2019 08:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C1CC861D1;
	Tue, 21 May 2019 08:16:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCEB61BF2C8
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 08:16:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B995086290
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 08:16:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H6gnLaGNt5QP for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:16:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33A4D86272
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 08:16:14 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id 66so15582203otq.0
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 01:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U/qriHOQGa6rGdckgb+2HJDlYEvPhGrkY4++iU8fZoM=;
 b=semHfxG9pzCXboJoYkh9h8P+S59IQlVNE6n/r5kEdQLi3Usqdz+H3At/2igFhK5UO4
 kEyslWV/j8FUplkjdUy3V21B/nj+ZdUVp3dbY/bWrSS0fM0jen19i+xoRP4W3sJ6OJb7
 5OhfnGEpZfFIsStUP3/ucOGHxxd/iLOYrLUqVgpehAuXEz8Hi4uYi+JwG+n84uw+SKC5
 eiN4BQPuJjq/DEc2UhQRCORHwLI8APRmjRGsgN4+c+bM7LPKQS6ea8GyazPo8WMZ3wFP
 tjs1am6T9heJZPGp1qcankrFAZLQtQX0iIO6pGycHVeMQnsfOqImeFSfOWneGwgh8ZGF
 s86A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U/qriHOQGa6rGdckgb+2HJDlYEvPhGrkY4++iU8fZoM=;
 b=tGVHu2/7kPJDPzllt4LHRlqBKyZewz6uFUc5CRZ9JKqPsQG0e4vByX4fkHtFRNczPB
 rXKjuwsN+Q/UXfHupFm5wE5lzY59EPzGBRf+bpGlYzgjjkI7+YyzwjjyTzSE56X2txBQ
 xY8M4XROYXXLYYD4MY5yJGCR9k/q1oC8TvtQpBc5QJq1tucVVqOgitTjeZZrna2gBAS3
 fqac5qKvP2/PoY1O21m526xCdfPBV1NOk8i/hiaxUXmZ7lRGxqnQspTCzjGQ/Sg0FSKu
 PlFvmqncZbRpqwOvAAiMFVhA3e+HcH+KVto5TNKfrA1zeLOClpHpFg66aaT0/h+zGPTg
 VzPA==
X-Gm-Message-State: APjAAAWGuSpcF1SP5X/665qfVE8MOY/qoS0CjIubVeNJf31Fkx7bwA3P
 vE1jzUursvGOwo4YoEPXvvcQgayG9vokxh8uVnI=
X-Google-Smtp-Source: APXvYqxiDb07Niuz9hHWasmKzngXfj4t9fSaa3JSTgj4miomJRif4Pw5Pg7sQYJHxY7Fsp9OyLv6OvI0Ek1vaCfWtMg=
X-Received: by 2002:a9d:65c9:: with SMTP id z9mr16691241oth.218.1558426573396; 
 Tue, 21 May 2019 01:16:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558146549.git.gneukum1@gmail.com>
 <20190520083026.GA13877@kroah.com>
In-Reply-To: <20190520083026.GA13877@kroah.com>
From: Geordan Neukum <gneukum1@gmail.com>
Date: Tue, 21 May 2019 08:15:52 +0000
Message-ID: <CA+T6rvENoDXbUWEi4C5kXxsdamkZKVP19MwzEuxs0qC=ckMyeQ@mail.gmail.com>
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

On Mon, May 20, 2019 at 10:30:26AM +0200, Greg Kroah-Hartman wrote:
> On Sat, May 18, 2019 at 02:29:55AM +0000, Geordan Neukum wrote:
> > Attached are an assortment of updates to the kpc_i2c driver in the
> > staging subtree.
>
> All now queued up.  I'll rebase my patches that move this file on top of
> yours, as kbuild found some problems with mine, and I'll resend them to
> the list.
>
Thanks.

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

On Mon, May 20, 2019 at 8:30 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sat, May 18, 2019 at 02:29:55AM +0000, Geordan Neukum wrote:
> > Attached are an assortment of updates to the kpc_i2c driver in the
> > staging subtree.
>
> All now queued up.  I'll rebase my patches that move this file on top of
> yours, as kbuild found some problems with mine, and I'll resend them to
> the list.
>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
