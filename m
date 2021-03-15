Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF3D33AC2C
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 08:25:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81235834EF;
	Mon, 15 Mar 2021 07:25:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dV6DtVq-V8YS; Mon, 15 Mar 2021 07:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C46E083422;
	Mon, 15 Mar 2021 07:25:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0ED701BF317
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 07:25:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1E6083422
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 07:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TAIYXNte2xFe for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 07:25:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E39798341E
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 07:25:37 +0000 (UTC)
Received: by mail-il1-x135.google.com with SMTP id z9so8441954iln.1
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 00:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=El/Z4kuthdiADlQl60tq0sGwr4QoamUBccbw5uaJ4G0=;
 b=jOTgMPq+tWjs17/lAC4W47Oqpm0t2FN+FfbmeAiWNsFVbVWBI5RXbR/orZe1qZW26M
 zUlU7YkWlL3m0RAVJ8E3jp2CiI2tGTi1mzwf3HXTL/nVHGpqusztsymw68Z/VSEXRXST
 vMzCmd8vDmQ7wRfiK7paur8gTJ28CcwBT0fkxznHLYNIjlHlk4GoBfLH6nGkFwwtxL6v
 C4dzyg4lqAbftgYU8oBSI7eADsSsVgsEznwBHWLdqtlz2qNcN9sX9K33aOGOaJncwZqW
 wRzAtYPBbVYNGf7RpR7KJ8y88yoLNpdV5G+UfWkV8Q6Uy5gRYMhHzbQ2Yb4qd18PPJmP
 E+tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=El/Z4kuthdiADlQl60tq0sGwr4QoamUBccbw5uaJ4G0=;
 b=UNkwpc0lomXGfdSSoB7y9UjQl1+ZyzpIK7QwvJeSj5+GVE+gbbFcbfuWjW3+2VECSJ
 gAvC5s15RyHF5a2QKGW3gRLsyDiw1fyr+XBghNp1n1wSuA0M2unN1HYEXNRz/u3xPBa/
 658i8w7QcFDFtVCWFF+r3FKb9+mdPWt03oDfPah0VVY1rb8CKhN6lWNSaVwO64FmR9Su
 I/7TL/x9yLezDHFshijmLZChtwki5I87H55ITWEKTEfjSJoRwIxKzFRiT1vpK+etNpvs
 1CdabmfB14BrNw4tKcFjeHZFtTsmg9fHI+s0oGsukRO/NFYvFUzrX0bXdimzJUbOnXd6
 5wxw==
X-Gm-Message-State: AOAM530obv0snPtLey1lU2dWgIYYpP86wzMp0M4C46vCy+FU1xHP7Fn1
 hdHdN6TZ1h8vAJxDOdchDoHT+tsiRHI2kRlOM+M=
X-Google-Smtp-Source: ABdhPJz5F39VTH4DfBEwVHNGC65kxG1T9jL5ydnQB7l0HGRpq/+lB0JN68hx4tzBlgqpn6P3KDVs2Jxp2e81J5xTnEk=
X-Received: by 2002:a92:ca07:: with SMTP id j7mr10636820ils.144.1615793137102; 
 Mon, 15 Mar 2021 00:25:37 -0700 (PDT)
MIME-Version: 1.0
From: Zhengxun Li <zhengxunli.mxic@gmail.com>
Date: Mon, 15 Mar 2021 15:25:26 +0800
Message-ID: <CACY_kjQcJmQaDY2gDxG4TcztsYEmCETTWtLwZDfv9Q+JEsoe7g@mail.gmail.com>
Subject: Re: [PATCH v10 6/9] staging: clocking-wizard: Add support for
 fractional support
To: shubhrajyoti.datta@xilinx.com
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 shubhrajyoti.datta@gmail.com, slwu@mxic.com.tw, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, juliensu@mxic.com.tw,
 robh+dt@kernel.org, git@xilinx.com, miquel.raynal@bootlin.com,
 linux-clk@vger.kernel.org, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Shubhrajyoti,

+static int clk_wzrd_dynamic_reconfig_f(struct clk_hw *hw, unsigned long rate,
+       unsigned long parent_rate)
+{
+ int err;
+ u32 value, pre;
+ unsigned long rate_div, f, clockout0_div;
+ struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+ void __iomem *div_addr = divider->base + divider->offset;
+
+ rate_div = ((parent_rate * 1000) / rate);

In some cases, the variable seems to overflow.

Thanks,
Zhengxun
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
