Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A70E421
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 16:01:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6BBC923337;
	Mon, 29 Apr 2019 14:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PiyFoN1HToUd; Mon, 29 Apr 2019 14:01:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B32023307;
	Mon, 29 Apr 2019 14:01:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4CA2D1BF377
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 14:01:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 49BFB231EF
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 14:01:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VUAsrGPJ+NAO for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 14:01:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id CD60320797
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 14:01:49 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id l1so6500872oib.0
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 07:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zg2VAolSWzBmZVcirDH3khecUOsjD3mkWFIZwaOymBE=;
 b=VCqhTFYVsxxfua3Q01y1hYgUTno3LKljw5SVUdYSQzm64SsxKFEf2VXgAMkp9PWzvP
 JH7mhmYd8fwzrPFyaha/aWCVr2nO12a29yq6zchS7QqcAAwKN9SFPRSlD0HhwuGVrxBZ
 c4+B+S04RuWdwYPP1qAUmq/bfZvk3oyoydWU9jr9CsQ4ij3oNUqTLJ11MshTQ7QhvrUD
 0+Y504OZgIxDafwfDgfGM8UhyyOnllsrYpZP5oN3wxi6vQBKNJ7D83xoXhJ4fD3/Nf3t
 doEiU3TJevoMdMHC+0hmAjktiSjR+s7QUATbdVkjfebXZs1SghX7sIT9ZFbQu4bgq+RT
 9Uqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zg2VAolSWzBmZVcirDH3khecUOsjD3mkWFIZwaOymBE=;
 b=EsH439qNnRcYwj48RD6PWw53L/FtErX94W1U3RmnvR1QwWdM35R85iqdxQGBdwWIyg
 L5SAgirBl3TOwAdtnXvxFXpZFJK3MVD1xF8CnaUI+hQE+NK7qaFb0Daz0eCPzi4PyaPT
 FbExC4R+SZQhGqq6pS6uWPnkt6gC0s6BBztcz28ln3ysI7MV8ND+U+TrMyTam5Kalxep
 w/G5prxu+WicW/T4xRAMqXdhK/ByU8jfXS+dGsy3cLZn/+jDHLCPYMF+D3CHfvw/06VD
 Px5LuMvJZfUhutQLXZKqYhBFd5lyv///2gViYhovzKcfFPJwjC8jwvAoU0IKv+oI69zx
 rp3g==
X-Gm-Message-State: APjAAAUfsIiz1QVWmLdNsjbg+oFZ/hfi1xs2CmeLf2YBUuZ7IwUzdra0
 9i0rMUraa8zQ5KU8ou0/FVT8urV5/qjIaQt8yKo=
X-Google-Smtp-Source: APXvYqz7suEbKwldpa5GjY9BmF02z+nTtQeeRp3CY1mnkeyloRMWO/cKQ8l/njepEzIzUu8Xfqz3sTkCfwOa8nwLQfM=
X-Received: by 2002:aca:4202:: with SMTP id p2mr14825606oia.169.1556546508930; 
 Mon, 29 Apr 2019 07:01:48 -0700 (PDT)
MIME-Version: 1.0
References: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
 <1556517940-13725-2-git-send-email-hofrat@osadl.org>
In-Reply-To: <1556517940-13725-2-git-send-email-hofrat@osadl.org>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 29 Apr 2019 10:01:37 -0400
Message-ID: <CAGngYiUMbw9c6060vKy=KWe3xzkhKV+H+hFqCt2=VOa0hn1zNQ@mail.gmail.com>
Subject: Re: [PATCH V3] staging: fieldbus: anybus-s: consolidate
 wait_for_completion_timeout return handling
To: Nicholas Mc Guire <hofrat@osadl.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 29, 2019 at 2:11 AM Nicholas Mc Guire <hofrat@osadl.org> wrote:
>
> wait_for_completion_timeout() returns unsigned long (0 on timeout or
> remaining jiffies) not int - so this type error allows for a
> theoretically int overflow - though not in this case where TIMEOUT is
> only HZ*2). To fix this type inconsistency the completion is wrapped
> into the if() rather than introducing an additional unsigned long
> variable.
>
> Along with fixing this type inconsistency the fall-through if is
> consolidated to a single if-block.
>
> Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
> ---

Queued to https://gitlab.com/TheSven73/linux branch: fieldbus-dev-testing,
with my Reviewed-by tag, and the following fix-ups applied:
- tweaked commit subject and message slightly (less is more)
- removed spurious newline

Thank you Nicholas, I really appreciate it !
Sven
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
