Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93740241AD4
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Aug 2020 14:16:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8769422053;
	Tue, 11 Aug 2020 12:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PctRM20JkJZ0; Tue, 11 Aug 2020 12:16:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CCEC72152E;
	Tue, 11 Aug 2020 12:16:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B6531BF3BB
 for <devel@linuxdriverproject.org>; Tue, 11 Aug 2020 12:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 87F1F85B3B
 for <devel@linuxdriverproject.org>; Tue, 11 Aug 2020 12:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xazkAl_TOaUN for <devel@linuxdriverproject.org>;
 Tue, 11 Aug 2020 12:16:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f67.google.com (mail-oo1-f67.google.com
 [209.85.161.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EE07485B0C
 for <devel@driverdev.osuosl.org>; Tue, 11 Aug 2020 12:16:41 +0000 (UTC)
Received: by mail-oo1-f67.google.com with SMTP id j16so2569741ooc.7
 for <devel@driverdev.osuosl.org>; Tue, 11 Aug 2020 05:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BfaOWSVdZQ07T1WYL8SAoDKGztX/6CbsXqzUzK0St8s=;
 b=SUZSVEhCg6bsE5g5AFV3Nu7ILrIBK14FCJeQTRW4bRuMioqVg6Xp+cvlp3Yg1AIoqp
 +KJKITEVIQCC1qHMKKl6em+lfdg+/slX9FriU4yJcV/PdONBjp+w5Vg7c5lA5H/B30xo
 kbK88mNEzpr+gxCHW2krRACRsrCFrXErLis+oz+OGxiTog21ZC3h/ORMHGljsYc9qYWV
 ZeSRskj+HxmoIBBv6sNByjudCtnXj72+c/p3RBZs0DnyCBEZoD1zrdj3FaN1e60XJNeh
 zDBtXC4LSVsOIfENZwvo9yqNGeotY1MPPOUoEKYypDhOkuCUPSA4AiGeNj248+s7ZXKA
 jOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BfaOWSVdZQ07T1WYL8SAoDKGztX/6CbsXqzUzK0St8s=;
 b=mVYKKR+VKGeqb0ja+S/idnFOC+s7CdASis43JfQmzEN1mXvg2ZrN4F0ETVm3pnr4As
 WLSiOCxSBWph9etWiTbDeuEb8J20HxK3CjprEx/hZY2AVKclYom9pZkCSYlQoTCku6yc
 aa/VSLIL8WgbnOPBEpQJR3krNkbWlhR23nOe9yBGOzjLyGAvCkL/7nxR8lCxcvGGWGI6
 Z9xlh5+AhtyrYzgZrzwGjRJ5afkIKrpYkDJO3lTfPqjY641lcaDK7hJzTgEwx4ZVho7M
 gBCboyCSWipD8+DKbSPEL9E1Qw3jfh4GvUEvXXUnf/zvp7eB7BuiHXetuESYfwbumlWE
 yoWw==
X-Gm-Message-State: AOAM533zAlxTJArWUlvj0YnEj3dHkc4r0w2zuucmb0oc7FShOEtLfu3Y
 +nZb0WBBkJPPrZKl8VwLVFA2wYTpi/w4scBWa74=
X-Google-Smtp-Source: ABdhPJzSaTIBww3RVWzclOnCFAapTOONrFiRaRjDySuKQvXkeW9wMlyEhPPRLW4/2hyPS3tLM0iChxXJ4fWU8jt/XPY=
X-Received: by 2002:a4a:2c83:: with SMTP id o125mr823335ooo.84.1597148201081; 
 Tue, 11 Aug 2020 05:16:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200716030847.1564131-1-keescook@chromium.org>
 <87h7tpa3hg.fsf@nanos.tec.linutronix.de> <202007301113.45D24C9D@keescook>
 <CAOMdWSJQKHAWY1P297b9koOLd8sVtezEYEyWGtymN1YeY27M6A@mail.gmail.com>
In-Reply-To: <CAOMdWSJQKHAWY1P297b9koOLd8sVtezEYEyWGtymN1YeY27M6A@mail.gmail.com>
From: Allen <allen.lkml@gmail.com>
Date: Tue, 11 Aug 2020 17:46:29 +0530
Message-ID: <CAOMdWSLef4Vy=k-Kfp8RJ++=SsMwCQTU4+hEueK_APDGvJ-PaA@mail.gmail.com>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
To: Kees Cook <keescook@chromium.org>
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 alsa-devel@alsa-project.org, Oscar Carter <oscar.carter@gmx.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-input@vger.kernel.org, kgdb-bugreport@lists.sourceforge.net,
 Thomas Gleixner <tglx@linutronix.de>, Romain Perier <romain.perier@gmail.com>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Kees,

> >
>
> Here's the series re-based on top of 5.8
> https://github.com/allenpais/tasklets/tree/V3
>
> Let me know how you would want these to be reviewed.
>

  I see the first set of infrastructure patches for tasklets have
landed in Linus's tree. Good time to send out the ~200 patches?

- Allen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
