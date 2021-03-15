Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6447733AD8C
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 09:34:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4AC4818CA;
	Mon, 15 Mar 2021 08:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MrriLnHxIVKt; Mon, 15 Mar 2021 08:34:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC051817F5;
	Mon, 15 Mar 2021 08:34:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 709B31BF966
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 08:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C6A18105C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 08:34:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h56XMoiYy5tD for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 08:34:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com
 [IPv6:2607:f8b0:4864:20::c31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BBA668105B
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 08:34:08 +0000 (UTC)
Received: by mail-oo1-xc31.google.com with SMTP id
 125-20020a4a1a830000b02901b6a144a417so3109012oof.13
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 01:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b9tcDXydBRYN7X1ouyOutHzUqrT2EcOzUMBbtNRBc1M=;
 b=b6TyPaHRpm6reFbVIf3ISUH1PYNj/1Ho4rQQU9rsNJyH2azbubQ5MefVT8iVIzg8F2
 jawHd8r4bZd+v8eaWtPWEqNC0d/eI3LsZFraQtfG03J45SA8jrTn9dW/hd18Yt5OHNLN
 4V2nZwX2YPWCU7S7fcDesLj4kIDDST2rMcQEmcxa8WeBJudC5KYn2dGlhYv4aiaOH5r/
 Dn90X0CvtVhSrx2vcdmCsO8mU9c+rBo8ds7emxhIFhVA8c3sWSXvCHXgjaZ8CCBtvxNF
 xnODepYi4dtACRb14GxuIHGC7bN1CvGPpEzxzICdfRMjOKmRlmCDGHVxqcs6kZLqLKTZ
 VaMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b9tcDXydBRYN7X1ouyOutHzUqrT2EcOzUMBbtNRBc1M=;
 b=bo9jmkRVCkxNcJZGm0w6Xd2n0nU2Q0/PleBnqjP247UOOiCXcnOcEi7Zmf10OG4Z44
 0L+fAC+KJJWlavaYkrcTITiZ/Kd4uEB5x8UKjMUGP10VafS1XCxSPiGua1bMwUBTDeLA
 egBAnV/GKl34EEa9wVsyBSsFybGNGC3Nx4oeBy7+zhOcZXzq67MgAoxn+x3q5B9GJAlb
 hyKNofjN+l9495hyKHqSEztXSM/NYOgWHteCqtR7SbQLWDW/V5RJ4STxIIfJ+EF4j2j/
 6vXFzVTaRpIRhbnbuC0d3I1f3yJgoYzugniwmubiqmxDN+jzzJLWhZ1e4ShseO0wjX+h
 upmg==
X-Gm-Message-State: AOAM532otMoRd0jC5ddBmzohBd4lFrB/KyiUINIW1LGAYUk/l0wCUm/E
 7HnXHRvGVa4PQT4Y5+Ih5zXsVHxw7Mwb1+xWfnk=
X-Google-Smtp-Source: ABdhPJwoHR41pMa8eOKBFI9biSljHlrqSC5ZEhNJSLF4w0f9nl4qFGMZGNh+w9jx9S7pbYnE/uksgflwoiuybDMMb0E=
X-Received: by 2002:a05:6820:3c8:: with SMTP id
 s8mr12577637ooj.49.1615797247749; 
 Mon, 15 Mar 2021 01:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <CACY_kjQcJmQaDY2gDxG4TcztsYEmCETTWtLwZDfv9Q+JEsoe7g@mail.gmail.com>
In-Reply-To: <CACY_kjQcJmQaDY2gDxG4TcztsYEmCETTWtLwZDfv9Q+JEsoe7g@mail.gmail.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Mon, 15 Mar 2021 14:03:56 +0530
Message-ID: <CAKfKVtETpsqa8Ui0mLdVoBW9HsRXpbkt5Zx=SYMo-arqPhNcXw@mail.gmail.com>
Subject: Re: [PATCH v10 6/9] staging: clocking-wizard: Add support for
 fractional support
To: Zhengxun Li <zhengxunli.mxic@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, slwu@mxic.com.tw,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 Julien Su <juliensu@mxic.com.tw>, Rob Herring <robh+dt@kernel.org>,
 git@xilinx.com, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-clk@vger.kernel.org, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Zhengxun,

On Mon, Mar 15, 2021 at 12:55 PM Zhengxun Li <zhengxunli.mxic@gmail.com> wrote:
>
> Hi Shubhrajyoti,
>
> +static int clk_wzrd_dynamic_reconfig_f(struct clk_hw *hw, unsigned long rate,
> +       unsigned long parent_rate)
> +{
> + int err;
> + u32 value, pre;
> + unsigned long rate_div, f, clockout0_div;
> + struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
> + void __iomem *div_addr = divider->base + divider->offset;
> +
> + rate_div = ((parent_rate * 1000) / rate);
>
> In some cases, the variable seems to overflow.

Will fix in the next version.
>
> Thanks,
> Zhengxun
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
