Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 643404EEA2F
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Apr 2022 11:14:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D724460B86;
	Fri,  1 Apr 2022 09:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qj-NCeeOaAIZ; Fri,  1 Apr 2022 09:14:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 857B160B57;
	Fri,  1 Apr 2022 09:14:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 356661BF376
 for <devel@linuxdriverproject.org>; Fri,  1 Apr 2022 09:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15BD060EBF
 for <devel@linuxdriverproject.org>; Fri,  1 Apr 2022 09:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hPG8EnmjSTNp for <devel@linuxdriverproject.org>;
 Fri,  1 Apr 2022 09:14:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C77C960B86
 for <devel@driverdev.osuosl.org>; Fri,  1 Apr 2022 09:14:34 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id k23so1072403ejd.3
 for <devel@driverdev.osuosl.org>; Fri, 01 Apr 2022 02:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OsrH6lo/DuV4Px4EXvnPoTR1hR5ZaTVHAh03QaHrq6A=;
 b=JmWHvJBisgImhvOyUD8tzZMza46HKn1xukfz2TVuVZcwQiW9r9bWuZyTHbZLLjJ7YL
 X7BQgSpD2BU67vo8E0YuDzJiVY3X8CerJ7uQqa8FIEfl8GMq1q7RgFDVX4ai82UeSHBA
 4tut4Lm5wrlvMi5icLLJpU/0bXRjZFaesEVK9O6S5oseWYrhc2zW4yH8AzF5AJz7xHfP
 vei6msMEn0JTcdKwSKeEs/fDy2Pho8f/JBbBurn86M97KSq3LGE6wFvoXcsMqqgTIHvi
 p36K9x3StE7pLaRVB4BA3VHheIcxA8UUmz0nn9FoszQvo4dpAWHyEt85XpscOyqKY1ol
 OVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OsrH6lo/DuV4Px4EXvnPoTR1hR5ZaTVHAh03QaHrq6A=;
 b=wKOH7rBEs+dHpnq3XG8XqN/1RevaptV3GCPVJwDmiA99R0/vVWsmuwdmIisYD6Cgxf
 ZhVmQxDkLeN0NJJcOgONbPRISThqC2cTseTMwI3c16FmAysuqLilz3QTeYCUOA7EGKl/
 qSkXYQZ2+mkaulzYysMuDYzpxANkclDCkiyN+fIRrTlVtA1HmjOO4rOoMYW8zGkhE+I4
 X/Zzt013xeIBv6BB1XaUW1JioJ1K4+GQuGQYwNuadUgHMJKJd3HlWws8Zv8R8QUWpis9
 px/CmnQl5c9K9U8/LVUH9d2XpdZOCqcstW1xK9W3eVNK7II+kKjHIttvxIBIq9mva7Sb
 BPng==
X-Gm-Message-State: AOAM533TcyMqwtvgg9AtFnkYq8w02C/LLpyROOEBBiIHv0nT4WktZi3e
 A+ijZ4CHTHgWr/bq6xNk4E/tVNOo7GhDgQ742wU=
X-Google-Smtp-Source: ABdhPJyTnf43naj3nJDmc6O7XIWY7gMqZWU+WWhlCaIeW80QNYOMdTnt+kvt5LZoJvx6LXwsuS005Jw0OlQBDMx+QOo=
X-Received: by 2002:a17:907:160b:b0:6e1:116e:7a59 with SMTP id
 hb11-20020a170907160b00b006e1116e7a59mr8365081ejc.579.1648804472914; Fri, 01
 Apr 2022 02:14:32 -0700 (PDT)
MIME-Version: 1.0
References: <1648540212-9790-1-git-send-email-unSimple1993@163.com>
 <CAHp75VdwLPkzE9AHkXg=+vsagh4SGam40vz8uRdSRUpr6Cyv7A@mail.gmail.com>
 <2e3426e0.2d71.17fe315bdb6.Coremail.unsimple1993@163.com>
In-Reply-To: <2e3426e0.2d71.17fe315bdb6.Coremail.unsimple1993@163.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 1 Apr 2022 12:13:27 +0300
Message-ID: <CAHp75Vcs+HG-e=BHhgWP6Ndh5nZWXXnqhZ2jfN33Fs0qu5U_Bw@mail.gmail.com>
Subject: Re: Re: [PATCH v1] pinctrl: ralink: rt2880: Check for return value of
 devm_kcalloc()
To: unSimple <unsimple1993@163.com>
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

On Fri, Apr 1, 2022 at 6:06 AM unSimple <unsimple1993@163.com> wrote:

>
> The main consideration of the 'continue' in the patch is that those statements are inner a loop.
>
> The next allocation may be successful so I think it is better to use 'continue' here.

Please, do not top-post!

What you explained is logical from APIs point of view, what I was
asking is about functional point of view.
Why do you think the skipping iteration is fine?

You need to explain this in the code/commit message.

> At 2022-03-29 19:45:50, "Andy Shevchenko" <andy.shevchenko@gmail.com> wrote:
> >On Tue, Mar 29, 2022 at 11:36 AM QintaoShen <unSimple1993@163.com> wrote:
> >>
> >> The memory allocation function devm_kcalloc() may return NULL pointer,
> >
> >may --> might
> >
> >> so it is better to add a check for 'p->func[i]->pins' to avoid possible
> >> NULL pointer dereference.

...

> >> @@ -266,6 +266,10 @@ static int rt2880_pinmux_pins(struct rt2880_priv *p)
> >>                                                 p->func[i]->pin_count,
> >>                                                 sizeof(int),
> >>                                                 GFP_KERNEL);
> >
> >> +
> >
> >Stray change. Also it seems it has trailing space character(s).
> >
> >> +        if (!p->func[i]->pins)
> >
> >> +            continue;
> >
> >Why is 'continue' the proper choice here? No clarification is given in
> >the commit message.
> >
> >>                 for (j = 0; j < p->func[i]->pin_count; j++)
> >>                         p->func[i]->pins[j] = p->func[i]->pin_first + j;

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
