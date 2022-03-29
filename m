Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4714EACA0
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Mar 2022 13:47:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C75F4183D;
	Tue, 29 Mar 2022 11:47:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DutcYi0z7Lwt; Tue, 29 Mar 2022 11:47:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7112741834;
	Tue, 29 Mar 2022 11:47:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2FCD1BF33A
 for <devel@linuxdriverproject.org>; Tue, 29 Mar 2022 11:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 903C9610DC
 for <devel@linuxdriverproject.org>; Tue, 29 Mar 2022 11:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C5vSuo_BD3eE for <devel@linuxdriverproject.org>;
 Tue, 29 Mar 2022 11:46:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 374EC60634
 for <devel@driverdev.osuosl.org>; Tue, 29 Mar 2022 11:46:59 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id r13so34557675ejd.5
 for <devel@driverdev.osuosl.org>; Tue, 29 Mar 2022 04:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JRngf1q0EFM6rom/iKOZPRpCu2Uxx4RUodzTRd2XqH0=;
 b=WgNXgj6IODvZ0ruJkrZOu+JdIy1hw9TvcQv7A0RD8viHok4sFD+oGv6YD2cLd9wTmv
 Slicxb43u88ALlG9StdQ+0TV3HaowS/WOqSeYhPIYZsmuOOcdwm8R8c2M7oFoZXYuOMm
 ETrWnKFxzhvIliJhki7fOxBBrbZrt4fh8P9wh4ac1vkuAq3UiwQD2fCBoukFKuwZx0i9
 ulv88Y82xNQt6QL0kcUFvHqblGmPm7yW8xUqYrPY8Z9Xx/HzbcfQPdp6gzUbvj7fMkdP
 WKS6rIXGFoI48A2iZGPcekAByOTVykYDiOz5z/rFPqzcTj9Akd3v5S+FZbv3u5W97pS+
 rCKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JRngf1q0EFM6rom/iKOZPRpCu2Uxx4RUodzTRd2XqH0=;
 b=aqwOawafoORYWUoDPtAKpBha0jnlNMfuWuQaRMctBqrrlAqRfDQ9ZUtICVMr7Prn6m
 KdAkJRbcQof2KGZ3EJm3zWv3Ay+zeKi+jnI0VhGp52ykUq2rwuDYUpgBrEPKlpDtmSFZ
 40YjVvTJjZCF9Zbru0d14ULnTeSMY+jFgSjl1D/Llla+SGNUibHYreUaD0mk2bqhzQW8
 m5FBsKT0kU8R3mpFt3YlV4l0hOhTA80tAj+bq2Ktgtq5CV1HvYvvIAEjJa7WoC263IWU
 OXk3l3ftZoumRlqe/JL464KctPThnx6yHstNFvkOBegoRZeG8eAAXk0h8xRGNW80JjDa
 a6RA==
X-Gm-Message-State: AOAM532IaVKcKxtcU+9BLIrapkiT7Tg9mCidSJECLQN3q1OvMHglmmPW
 m9StuJaCdkGt3MO/T1ViPW2VD9NO7uTPHbmGuQ8=
X-Google-Smtp-Source: ABdhPJx/6reFSq090fKogP1Ks4j6J7VZmEyzGgY7WdOuKDaet1Sb3sUw3Z0pqfqiUFERLgss+aj1ra+CFGiWqYNdTtA=
X-Received: by 2002:a17:907:628e:b0:6d9:c6fa:6168 with SMTP id
 nd14-20020a170907628e00b006d9c6fa6168mr33912764ejc.132.1648554417310; Tue, 29
 Mar 2022 04:46:57 -0700 (PDT)
MIME-Version: 1.0
References: <1648540212-9790-1-git-send-email-unSimple1993@163.com>
In-Reply-To: <1648540212-9790-1-git-send-email-unSimple1993@163.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 29 Mar 2022 14:45:50 +0300
Message-ID: <CAHp75VdwLPkzE9AHkXg=+vsagh4SGam40vz8uRdSRUpr6Cyv7A@mail.gmail.com>
Subject: Re: [PATCH v1] pinctrl: ralink: rt2880: Check for return value of
 devm_kcalloc()
To: QintaoShen <unSimple1993@163.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree <devicetree@vger.kernel.org>, Jason Yan <yanaijie@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 29, 2022 at 11:36 AM QintaoShen <unSimple1993@163.com> wrote:
>
> The memory allocation function devm_kcalloc() may return NULL pointer,

may --> might

> so it is better to add a check for 'p->func[i]->pins' to avoid possible
> NULL pointer dereference.

...

> @@ -266,6 +266,10 @@ static int rt2880_pinmux_pins(struct rt2880_priv *p)
>                                                 p->func[i]->pin_count,
>                                                 sizeof(int),
>                                                 GFP_KERNEL);

> +

Stray change. Also it seems it has trailing space character(s).

> +        if (!p->func[i]->pins)

> +            continue;

Why is 'continue' the proper choice here? No clarification is given in
the commit message.

>                 for (j = 0; j < p->func[i]->pin_count; j++)
>                         p->func[i]->pins[j] = p->func[i]->pin_first + j;

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
