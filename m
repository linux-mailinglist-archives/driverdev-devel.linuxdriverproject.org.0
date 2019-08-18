Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F41C591556
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 09:19:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD807203E6;
	Sun, 18 Aug 2019 07:19:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qtr87AxxCyIS; Sun, 18 Aug 2019 07:19:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 81062204EC;
	Sun, 18 Aug 2019 07:19:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0B421BF489
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 07:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A0E081420
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 07:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DHCdrbqWl7M6 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 07:19:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D5852813F9
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 07:19:19 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id c15so7667813oic.3
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 00:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l3gV2KQAk+24sUCcPZUWGgMw3Dm+sc+Ox5ibH9xYpcQ=;
 b=Xq9n7rYsgmSdz/cTXIDtxyVx178tu5+JS4tfsINLZRygFxfjMU4PNb00VSKmpnV+qo
 LSLNvwfcXrtWLF6+ZDN/RXs6+vdvMh7kTg5izHZxGRhImMYpZhMiIgejf8nInzBSEu65
 8ZNaFG9WDFiS1YCabNDS6vOkE+Qf1yDFB+kkr/B32W/YOrC7VQe04vYPh5LOUqcrR26S
 yFe9ufgCKUpJp63v7vx0agEUoWj7JIHB/CWF09UpPDS7OD3IYdP8FdOT/zMDM5czkvti
 t/3BuNmTXUZg6C1iMhKvIUGQ7U/XtHAGU9WENde6HofIxm5brhhBrGM8MbG1XYR5IKf4
 ABcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l3gV2KQAk+24sUCcPZUWGgMw3Dm+sc+Ox5ibH9xYpcQ=;
 b=XWVWQOg65FxDxLG6DXHvCDdINKJkTFukoinXpmKvOOdGTID8yKmqy5KoNvmZL90FvI
 Fo62ed+1O+ICT9uc+5khRMCftOyBkYbJdAzywGI+p/IQ6yhEQwjSB1inO9wfKCYzPlh8
 UfhS4vTeDd+txmPBR7F+PWajszXLVGEd3apreaz/sLVmMBMFzkmHacWH1cVq+OB+iqyM
 cAoG3+axbpkCU43vL6312QsjPmhvw4ULJb4YQEhCwzqw5tHOCNl28S935kkooOV7KAeO
 3SUdqBcMpO2Xs4lOBMleikYhpsa5TV0dBwyuNvjmx1Poqyx1IjUj/tAda3pGh3UIiBqL
 esVg==
X-Gm-Message-State: APjAAAVU3BERWJMKxCLHVkFcPGVQUEnHau9sYgs6SpEVrVjrSxsJEETj
 iLvR/ZK4U+mMjOiA/RVcwAhHPVmMj82sIULlu5b+ZnVE2J1RK0Am
X-Google-Smtp-Source: APXvYqytauuG/JmQ89iJexPdxtEypdx++JqmuBJURnMXZ/BgdAT6iC3dquzsHJfz35N8IZOMQHXjI2u6e2Q1SsKkN0c=
X-Received: by 2002:aca:df08:: with SMTP id w8mr9418590oig.84.1566112758963;
 Sun, 18 Aug 2019 00:19:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190724022310.28010-1-gch981213@gmail.com>
 <20190724022310.28010-5-gch981213@gmail.com>
 <20190813155143.GA19830@bogus>
 <CAJsYDVKnf4M8jyVOyotRxs=SsHqjex_q60AwkX=QAPK33ivw-Q@mail.gmail.com>
 <2d48f4a4-7d30-547b-21ee-6aadabe7d7c3@gmx.net>
 <CAJsYDVLq1-U_AngA4=YKHS_L=zurhLse9XwQ0Rzup9BdXfri-w@mail.gmail.com>
 <6b6ee744-61d3-8848-19e7-0a301fe4d1b3@rempel-privat.de>
 <CAJsYDVLLPa07wUg2EoeJww9XSJYgX_kBu-oGiv7n+zejUc877w@mail.gmail.com>
 <fb39803d-d303-f259-d78d-9f8b1fc7dde3@rempel-privat.de>
In-Reply-To: <fb39803d-d303-f259-d78d-9f8b1fc7dde3@rempel-privat.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sun, 18 Aug 2019 15:19:08 +0800
Message-ID: <CAJsYDVK9Yj02WxNFo7iEP3aJn+j5MqzCtLrmgsz=4zWnfQ4VOw@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dt: bindings: add mt7621-pll dt binding
 documentation
To: Oleksij Rempel <linux@rempel-privat.de>
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
 Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 James Hogan <jhogan@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, open list <linux-kernel@vger.kernel.org>,
 Paul Fertser <fercerpav@gmail.com>, Paul Burton <paul.burton@mips.com>,
 Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Crispin <john@phrozen.org>, NeilBrown <neil@brown.name>,
 Mark Rutland <mark.rutland@arm.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

On Sun, Aug 18, 2019 at 2:10 PM Oleksij Rempel <linux@rempel-privat.de> wrote:
>
> >> We have at least 2 know registers:
> >> SYSC_REG_CPLL_CLKCFG0 - it provides some information about boostrapped
> >> refclock. PLL and dividers used for CPU and some sort of BUS (AHB?).
> >> SYSC_REG_CPLL_CLKCFG1 - a banch of gates to enable/disable clocks for
> >> all or some ip cores.
> >> What is probably missing is a set of dividers for
> >> each ip core. From your words it is not document.
> >
> > The specific missing part I was referring to, is parent clocks for
> > every gates. I'm not going to assume this with current openwrt device
> > tree because some peripherals doesn't have a clock binding at all or
> > have a dummy one there.
>
> Ok, then I do not understand what is the motivation to upstream
> something what is not nearly ready for use.

Why isn't it "ready for use" then?
A complete mt7621-pll driver will contain two parts:
1. A clock provider which outputs several clocks
2. A clock gate with parent clocks properly configured

Two clocks provided here are just two clocks that can't be controlled
in kernel no matter where it goes (arch/mips/ralink or drivers/clk).
Having a working CPU clock provider is better than defining a fixed
clock in dts because CPU clock can be controlled by bootloader.
(BTW description for CPU PLL register is also missing in datasheet.)
Clock gate is an unrelated part and there is no information to
properly implement it unless MTK decided to release a clock plan
somehow.

> This code is currently on prototyping phase

Code for clock calculation is done, not "prototyping".

> It means, we cannot expect that this driver will be fixed any time soon.

I think clock gating is a separated feature instead of a broken part
that has to be fixed.

Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
