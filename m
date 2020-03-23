Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 136F518F12B
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 09:48:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC69E86B22;
	Mon, 23 Mar 2020 08:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g0xki8i7ktKK; Mon, 23 Mar 2020 08:48:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7600D862DB;
	Mon, 23 Mar 2020 08:48:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 539D81BF2C9
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C7F488615
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NMR1krESwREx for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 08:48:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59F23885D9
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:48:12 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id k8so14023912oik.2
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 01:48:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=RJbFP927PDfm1sY4PttJqfX0fNR527qKJB6QODPMhuM=;
 b=Rk5U9lFFox4Sq21Iy9JCsp9vdCyZlRWl6BbgpzjDin3E2B1VfOgnldOUF9hEu7p1bY
 0f1awMQRyaMnbyivI8qyssr6aEuy75LfQh++ClbIeTyeQKulFKza6uDB4GW7z8iTMxnk
 vBKoR0T2GbADrDjMvOEKKICI08awnO5szLV10iMTw6dEVlBQhX9e0qtPJE3uZQz9R//P
 dkxZbI+t+/EJ8nrFiAVJ/CGV6sOHvdFp942708PajpOhKg9XawOvVn1FjcG8Ue6WA1Bt
 ZBnzHs4PUUvqY78Y2IxHoebIbvAzhiVDt9aVxxqlwWqC+r5NUy6yBjRUADvGyXucwwKM
 7cYA==
X-Gm-Message-State: ANhLgQ1BWbpaC5zyMUc5W+uRJZXZXxfenqN6QV24z3I7oSxYW3wiveOU
 DqTyl3easfJv4u6Jh7XsR+d5b0HM+bVhLS4Nst0=
X-Google-Smtp-Source: ADFU+vtdVJgAXItyc43TbkLIUv4kwGAbgyIVQTZ8qz9en/UVDvhJtk0N+HUqX3ZKzF07nssZX6w6OMO51CAgLN5tYYU=
X-Received: by 2002:aca:cdd1:: with SMTP id
 d200mr15467580oig.153.1584953291595; 
 Mon, 23 Mar 2020 01:48:11 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584720678.git.alexander.riesen@cetitec.com>
 <077a97942890b79fef2b271e889055fc07c74939.1584720678.git.alexander.riesen@cetitec.com>
 <CAMuHMdXiG1upHQrCcuZgNLFOEoeDVcb0zWxh1BZZST5TOURDBQ@mail.gmail.com>
 <20200323084011.GC4298@pflmari>
In-Reply-To: <20200323084011.GC4298@pflmari>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 23 Mar 2020 09:48:00 +0100
Message-ID: <CAMuHMdXa96P+boX9HgGMBKEXLKK91t3Jgu-Sy8mP5A5--EeP=A@mail.gmail.com>
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

On Mon, Mar 23, 2020 at 9:41 AM Alex Riesen
<alexander.riesen@cetitec.com> wrote:
> Geert Uytterhoeven, Mon, Mar 23, 2020 09:34:45 +0100:
> > On Fri, Mar 20, 2020 at 5:43 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > > As all known variants of the Salvator board have the HDMI decoder
> > > chip (the ADV7482) connected to the SSI4 on R-Car SoC, the ADV7482
> > > endpoint and the connection definitions are placed in the common board
> > > file.
> > > For the same reason, the CLK_C clock line and I2C configuration (similar
> > > to the ak4613, on the same interface) are added into the common file.
> > >
> > > Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
> > > Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
> >
> > Did I provide a Reviewed-by?
> >
> > > The driver provides only MCLK clock, not the SCLK and LRCLK,
> > > which are part of the I2S protocol.
> > >
> > > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >
> > Perhaps you mixed it up with Laurent's?
>
> Sorry. I actually did: he did provded Reviewed-by in his email, and you
> did not. I was ... a little overwhelmed.
>
> But you really did provide a lot of very useful information and it did help
> to improve the code. Shall I remove the tag still?

Please do so.

While I can point out issues in audio patches, my audio-foo is not strong
enough to provide an R-B, and I'll rely on the R-bs provided by others.

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
