Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8623D29204C
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 23:50:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F8FE86EB5;
	Sun, 18 Oct 2020 21:50:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KGv6AKrB84vU; Sun, 18 Oct 2020 21:50:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB2168353B;
	Sun, 18 Oct 2020 21:50:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFA731BF47D
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 21:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB41C876AF
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 21:50:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XfYMjJBLHkwd for <devel@linuxdriverproject.org>;
 Sun, 18 Oct 2020 21:50:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 21D6B876AB
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 21:50:13 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id t9so4993994qtp.9
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 14:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LW7NtPMGJ2R8VOhKgzw6sjc10vh2YbY8kQEEkfju8fA=;
 b=BT6sX70H+s8KhgIkqlKxOTyt7nLW9Zkkp/pWMqwoIwpRPwASphI99ISJJY/DrRq4YB
 tuxxuQta89p2LltScao7kwUamcV10d6qq0/0GsMri9Y5uCbzF0DQIPVBZym6oh2w8IRp
 jGv4FzahYM8UB3UvXODpIfq1ilK2uqq9Xd/9k1Vp0D25EYeZvsrsLMiSOVKbh0jHo8ly
 ZwpyiDfjYzQI7omWM6lYTXWC4WxC4zXCwovEKbG2sVh0lXA3kgHlfvQ9kncK/jS7lzXB
 WtZ4PQbPMGBo2Fvzsm14b4aTThFD0/Vsyl0CynTIq6qQwMl+W5yJA342KaaYBMt5xICG
 NkkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LW7NtPMGJ2R8VOhKgzw6sjc10vh2YbY8kQEEkfju8fA=;
 b=GTZVNJYgr4Rym3U3xQXkU1Lcabe+ZaSWbRZgC9qbROvEhLcfnYJxuHCmH4Ip9Iu5wV
 0jHRnkWjo7mqVuwgQcpQi6eXMgXetWLAJp00C+25VySdrFMzTebi4/AUHiD1Z3vWN6kh
 CaY8/luLEkPpgkgmQLbbDp1Q9KSaIqUxjF9WAzmPA+abavwg8hXD5tvZf1LeE8oSUi7F
 O74nRGIR9bC5yylDZWd015yHHRgFqowKLiQWeVKr6174v+PdesTQYsfXM3ZzAQWdBL/B
 nMett+PQVmBSVsN8AuQ+mbvcDt8arWlPkJ9RS3sk98kxDNi14yCMNGuocJNYzitvfkx5
 csEQ==
X-Gm-Message-State: AOAM5323OQbH9kpChtESHU8LnhTbfem5Y0TU8wPTs9chv0fFOLNjLLQ8
 YUvKns9iV0/WW6f248RGQfGCPqU8DQlWSTPQdVE=
X-Google-Smtp-Source: ABdhPJw59Z9ZSI7YkUnrDX/NzYUwLZIQMERPV41io/elXdvNyA/Ph+eIMdFGNAEYy/TP8jUOuq9oIUb3paHWMlURueE=
X-Received: by 2002:aed:2983:: with SMTP id o3mr12423656qtd.285.1603057812125; 
 Sun, 18 Oct 2020 14:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 18 Oct 2020 23:50:00 +0200
Message-ID: <CAFLxGvxsHD6zvTJSHeo2gaoRQfjUPZ6M=5BirOObHFjGqnzfew@mail.gmail.com>
Subject: Re: [PATCH] arch: um: convert tasklets to use new tasklet_setup() API
To: Allen Pais <allen.cryptic@gmail.com>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
 Dave Airlie <airlied@linux.ie>, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 Maxim Levitsky <maximlevitsky@gmail.com>, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, jassisinghbrar@gmail.com, 3chas3@gmail.com,
 intel-gfx@lists.freedesktop.org, kuba@kernel.org, mporter@kernel.crashing.org,
 Jeff Dike <jdike@addtoit.com>, Kees Cook <keescook@chromium.org>,
 Alex Dubov <oakad@yahoo.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-input@vger.kernel.org, linux-um <linux-um@lists.infradead.org>,
 linux-block@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>, alex.bou9@gmail.com,
 stefanr@s5r6.in-berlin.de, Daniel Vetter <daniel@ffwll.ch>,
 linux-ntb@googlegroups.com, Romain Perier <romain.perier@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 17, 2020 at 11:17 AM Allen Pais <allen.cryptic@gmail.com> wrote:
>
> From: Allen Pais <allen.lkml@gmail.com>
>
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
>
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  arch/um/drivers/vector_kern.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Anton, can you please review this patch?

-- 
Thanks,
//richard
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
