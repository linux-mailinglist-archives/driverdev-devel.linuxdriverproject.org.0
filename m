Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6450737F337
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 May 2021 08:48:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77B9260876;
	Thu, 13 May 2021 06:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zi5QGoXXVjiF; Thu, 13 May 2021 06:48:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08E9B606F3;
	Thu, 13 May 2021 06:48:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8FB771BF84C
 for <devel@linuxdriverproject.org>; Thu, 13 May 2021 06:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AE5340F91
 for <devel@linuxdriverproject.org>; Thu, 13 May 2021 06:48:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XdBYjzoPqgbL for <devel@linuxdriverproject.org>;
 Thu, 13 May 2021 06:48:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A09940F8B
 for <devel@driverdev.osuosl.org>; Thu, 13 May 2021 06:48:21 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id b25so19284789oic.0
 for <devel@driverdev.osuosl.org>; Wed, 12 May 2021 23:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z6tZmEdAIz11OEqcWv4ru9dd59l195jpVVBqhcrPEX0=;
 b=b9QkGe4zK+dx4wsbk48L8qavI62p2qN68LG/PuMGYGlBENAP+/hsp0V8NJDLib3EM4
 dCB7euIdMSXqJJ1y1k7mdGYCGI8b+EgXkudgeRWfexCKF5KP9X2GU6M/NjjpJKE1c6/A
 NKnOSOh1glcDMttLNwRW0oFz1DxXx55mt/8NnyQL4dESVKyEryhKjrq6IiER7hmXO7aZ
 pTIc7lQ9HhlZuT+puHCy8+LJdu6YfSlLZcWOvIMgfZcsBLK02x0iCpjVLVkSlvMw906P
 fzH3q8auwUCMyvzq8brRnmmVwy8uH78TZp8NWJRSXsukgVjBIHWFL+C3iQCAcXWkSb9Y
 ny1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z6tZmEdAIz11OEqcWv4ru9dd59l195jpVVBqhcrPEX0=;
 b=BupIJc8XZiAamcs6uVYpWX1WuE/AWRwJosi+wisEu813nAmmNLGtMnPBhy9xI75fJS
 DdK3bCceZH1xuWPsjl1WOdfEsUS7r9ZJXe9Y83GN24Ol+sc7rH0C4UJkQgnSh2Nz5XdB
 lwI1p75W/l2CwZMJCkR68Cak28sAen981vdhtCiI03uGlRYFq7jb3Z0IeFQ7aTYKvHBz
 VFEFKJuHDPGMEDpqCXghOFYQswD1MlDaG3WmZqbo5Ky2hpRXNlgjdbYYp9GA+ABLOeOz
 qLRwJFo1Aiy9sV1ecFwFDL85p9E+1nOdPPYB9RwMg4xyIn4nLmTF1/h5vk9BtoAkR/cN
 Y/Pw==
X-Gm-Message-State: AOAM532o5yZhIyBHVrdrA2XzFVECpWFYIeKBsnjUKU2uJ4Noce5BWsgg
 +xqNckj+KiPa1tXQPJX5LDcLVSJpgeVJGmD4Km8=
X-Google-Smtp-Source: ABdhPJxmYZBVLPMzHd01YjkZ1aFsjrBspMiLEGOz9QhxZGt/1hRiurlQF4pwMVqQ4dZx9aXW9hZKyd+pnduGc0ij7aw=
X-Received: by 2002:a05:6808:10d:: with SMTP id
 b13mr26104833oie.116.1620888500694; 
 Wed, 12 May 2021 23:48:20 -0700 (PDT)
MIME-Version: 1.0
References: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1614172241-17326-9-git-send-email-shubhrajyoti.datta@xilinx.com>
 <20210306202022.GA1146983@robh.at.kernel.org>
 <CAKfKVtF8FAAt-Rszq62hBtJWokYXrKH_DwU1cGvXzBni99VM+A@mail.gmail.com>
 <14254feb-ddbd-068d-74a4-61407177336d@xilinx.com>
 <161801117111.2941957.3980674660268189208@swboyd.mtv.corp.google.com>
In-Reply-To: <161801117111.2941957.3980674660268189208@swboyd.mtv.corp.google.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Thu, 13 May 2021 12:18:09 +0530
Message-ID: <CAKfKVtGJ2ANtJ2GW1gcU8qOXp1fY=Xs=i3PBHg=5QZApa9VjyQ@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] dt-bindings: add documentation of xilinx clocking
 wizard
To: Stephen Boyd <sboyd@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, git@xilinx.com,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 10, 2021 at 5:02 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Michal Simek (2021-04-08 03:40:29)
> >
> >
> > On 4/8/21 12:26 PM, Shubhrajyoti Datta wrote:
> > > On Sun, Mar 7, 2021 at 1:50 AM Rob Herring <robh@kernel.org> wrote:
> > >>
> > >> On Wed, Feb 24, 2021 at 06:40:40PM +0530, Shubhrajyoti Datta wrote:
> > >>> Add the devicetree binding for the xilinx clocking wizard.
> > >>>
> > >>> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > >>> ---
...
> >
> > In designed tools it is your responsibility to select proper chip based
> > on your order and then this value is propagated in Xilinx standard way
> > via device tree generator to fill the right value for this property.
>
> The OPP framework and binding has support for speed grades via the
> 'supported-hw' property. I expect this speed-grade property could be
> dropped and an opp table could be assigned to the clk controller node
> for this speed grade by the DT author. Unfortunate that it isn't burned
> somewhere into the device so that software can pick the right frequency
> limits that way.

Rob let me know your opinion I will implement it in that way.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
