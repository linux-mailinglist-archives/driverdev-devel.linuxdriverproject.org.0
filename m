Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7511D18F0EB
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 09:35:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2417186364;
	Mon, 23 Mar 2020 08:35:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8XL45kfkqiYA; Mon, 23 Mar 2020 08:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E22A785E08;
	Mon, 23 Mar 2020 08:34:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1D441BF2C9
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8A27B20496
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hnCi3k2AIfN4 for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 08:34:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 42D5220346
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:34:57 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id q204so6114309oia.13
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 01:34:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=6PqEEQ80DvoEIUlujlGHoymIvmSuRLgWhhvk0/wVc9U=;
 b=PQnZoGrvVx+qPnXTXzr4E4GHkyZY7f1zoMwUQg6jBLxlUMjJLmn7RBN19+tsjJOLOx
 ArlhW/cffDUZJgl4Wi5EYMSTtOQveLrYCMAfU27QLo8i3Kg/lE4xvIilMpEwqfsr5YT9
 2Bxxt7jTb3xVCKirhc2gYjh45mA0AvS+9qg8OYpNF+N59KvxC+9HvTQP8Y33mWF0Iive
 Mxo9UG5JDAQs9aq79FhTmO9xmoJ5B7NRImhZmVjUBztcxdigoDJrTHLi6V57FJhjf8bz
 9rEZ4YU5d5t1xzpi4XzR8qt/+0imD7b+RTw9kqcBrgmIc+h0Yhh0FjuhlJNq9dPXXNjw
 7fKw==
X-Gm-Message-State: ANhLgQ13j3upiQJdxDxtS7TsET+HhssiGDmFGtVw8Qpgm5+k65BbP0TI
 Kb91vj2Ml1dyyLyR+AY87uuyBdVCfOMcDDemF0M=
X-Google-Smtp-Source: ADFU+vtY9GYxLCB1Ry2pKNcB44pAPmk/CCZTkuaKMIA2BZ5TH88WwWbUY1YsGf79Bx/MGoRkKWf+XqxnWo2dCQFID3U=
X-Received: by 2002:aca:cdd1:: with SMTP id
 d200mr15444401oig.153.1584952496397; 
 Mon, 23 Mar 2020 01:34:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584720678.git.alexander.riesen@cetitec.com>
 <077a97942890b79fef2b271e889055fc07c74939.1584720678.git.alexander.riesen@cetitec.com>
In-Reply-To: <077a97942890b79fef2b271e889055fc07c74939.1584720678.git.alexander.riesen@cetitec.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 23 Mar 2020 09:34:45 +0100
Message-ID: <CAMuHMdXiG1upHQrCcuZgNLFOEoeDVcb0zWxh1BZZST5TOURDBQ@mail.gmail.com>
Subject: Re: [PATCH v3 09/11] arm64: dts: renesas: salvator: add a connection
 from adv748x codec (HDMI input) to the R-Car SoC
To: Alex Riesen <alexander.riesen@cetitec.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 driverdevel <devel@driverdev.osuosl.org>, 
 Linux Media Mailing List <linux-media@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alex,

On Fri, Mar 20, 2020 at 5:43 PM Alex Riesen
<alexander.riesen@cetitec.com> wrote:
> As all known variants of the Salvator board have the HDMI decoder
> chip (the ADV7482) connected to the SSI4 on R-Car SoC, the ADV7482
> endpoint and the connection definitions are placed in the common board
> file.
> For the same reason, the CLK_C clock line and I2C configuration (similar
> to the ak4613, on the same interface) are added into the common file.
>
> Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
> Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>

Did I provide a Reviewed-by?

> The driver provides only MCLK clock, not the SCLK and LRCLK,
> which are part of the I2S protocol.
>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Perhaps you mixed it up with Laurent's?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
