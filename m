Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2792B8ECE
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 10:32:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98B7986D67;
	Thu, 19 Nov 2020 09:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hrUm-ZvTUNo8; Thu, 19 Nov 2020 09:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 67A2A86D54;
	Thu, 19 Nov 2020 09:32:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F24D1BF31A
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 09:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6425C86A1A
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 09:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id adq56mc4sLgO for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 09:32:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 476E6869F6
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 09:32:27 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id z14so2989604ilm.10
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 01:32:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KNYi7k+SD7m8Q6dkb27HJ0eAGPSje9gd3Xmj2AuiEfo=;
 b=a05oe/+RY1dw3WMRMmVe7SMqPBLJcalWI9jZ1o8ofqpMLY6y6RNxi3sNW5B1aQwuv1
 2SYwdHkESFN72GFEtQnm8umwx9Uuu39WyCykmR8DkGf5w+vHnywzY5M6P4wldYEhdary
 Fjh7M524CpZ4VTnT2gcBjxJsdh0e10WezDKUf5KikPMOTiLnU8UudCezsF5EFemV9nuy
 wnlx4TIVPHE5yadPSTDYv0V8mtKE+cSvtXBSdRwoeKseq4a58ZjNbNOfF5gyf60EPQSE
 QMWfoFRh9y2hYc7xR3mHSCwWhTbUNfEmzzaMbvPaX3qqXfZzeMzJnlCvDI8JPSh5fRP1
 uP6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KNYi7k+SD7m8Q6dkb27HJ0eAGPSje9gd3Xmj2AuiEfo=;
 b=hZ8ItNicjK0lsKjZGLFEqTVv9NLmSBHDk7kXzissIiL/snWimTVkuI/XWmVAjAX5hK
 w1uUB0qMJ7FEhOYoQYMLrrKS8OYIhHkLjLUCefgxatRTu1mnvDqNB910C15M3sAo+902
 mvpukw2kPCQHp0nFiVNN+TPZaqcmStYlxAWsGbEvqN+ZxIPVqdBVGZ52lSJZlGZmy8mI
 ZKVu/F3QI0eazTgRNDjZUMeWjD3vUDqWXWIB3Z626juKD5r2owFNdSJGer7EQFimyX06
 4qOKQ/yK9o2uLR+xoutbRcyahP0EisEKhPVfaT5UXENSF9bhFb49fo3s5Q9UxsWYd1Re
 txOw==
X-Gm-Message-State: AOAM530OZ5llRDdvlsi18kZVw/+2apL1gzpbSqNYZ/7FveS1KmQQ231h
 UKE1YK1iFnCxYt/2eoKoLAzZ4WSdcS3qXxrE+nI=
X-Google-Smtp-Source: ABdhPJyd3hCc/8+RvwRQKTE0igheO/eHL6J48ND6UrkSHz8YgNeJK2v6pndGgRunYTXpv7qCNQZhEr2EkjXIlBsXRgg=
X-Received: by 2002:a92:7914:: with SMTP id u20mr20826952ilc.203.1605778346666; 
 Thu, 19 Nov 2020 01:32:26 -0800 (PST)
MIME-Version: 1.0
References: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
 <20201113154632.24973-4-sergio.paracuellos@gmail.com>
In-Reply-To: <20201113154632.24973-4-sergio.paracuellos@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 19 Nov 2020 17:32:16 +0800
Message-ID: <CAJsYDVL1ZYc=OaCS7_NNu27aUKmpHp63nPuVq1V8xp8s6Vguxw@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] clk: ralink: add clock driver for mt7621 SoC
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, jiaxun.yang@flygoat.com,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

On Fri, Nov 13, 2020 at 11:46 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
> [...]
> diff --git a/drivers/clk/ralink/Makefile b/drivers/clk/ralink/Makefile
> new file mode 100644
> index 000000000000..cf6f9216379d
> --- /dev/null
> +++ b/drivers/clk/ralink/Makefile

Why ralink? The clock design of mt7621 doesn't seem
to be part of ralink legacy stuff, and ralink is already
acquired by mediatek anyway.
I think it should be put in drivers/clk/mediatek instead.

-- 
Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
