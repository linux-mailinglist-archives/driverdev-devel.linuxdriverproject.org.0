Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC6D2C295B
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Nov 2020 15:23:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7902986142;
	Tue, 24 Nov 2020 14:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CfDNMh6ewMH5; Tue, 24 Nov 2020 14:23:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE85685DF5;
	Tue, 24 Nov 2020 14:23:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60BBB1BF954
 for <devel@linuxdriverproject.org>; Tue, 24 Nov 2020 14:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 56186204E1
 for <devel@linuxdriverproject.org>; Tue, 24 Nov 2020 14:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UiGcV4aggSQM for <devel@linuxdriverproject.org>;
 Tue, 24 Nov 2020 14:22:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 89F7D203FB
 for <devel@driverdev.osuosl.org>; Tue, 24 Nov 2020 14:22:57 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD9132076E
 for <devel@driverdev.osuosl.org>; Tue, 24 Nov 2020 14:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606227776;
 bh=gwenMUOmNagaP0XqHbf89PGPh3jSG2hwNgJOa/BbCQ0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EAf6jGMy4CBEMU9eN7CfNopNd0hKIz3yZ0YUrLjNWWUtmFqsN0G7zrO2UIEMRq1b6
 ys9lhaIBaAnNptIvpt5pEZYyr05k/Lcd1F/Jj0yeqE/qEYgBukNP7TFUcKpYRWc/qW
 cNGNwRQZ1vgwKNTUd9vTXvW0d1JwDO3nzU8xTzzY=
Received: by mail-ot1-f43.google.com with SMTP id l36so19481487ota.4
 for <devel@driverdev.osuosl.org>; Tue, 24 Nov 2020 06:22:56 -0800 (PST)
X-Gm-Message-State: AOAM5302/7x4NWlloLXOqjoZzBu81TAFtzHI/KCi2I4p7DXG+MJnyIGz
 AlL3a1w2lhQVRgB7E9TvJBMfayg7ncJlNsKBJso=
X-Google-Smtp-Source: ABdhPJzZ1VfHk6RC6yuxrJKJcrkEyLIGQOV5ruxWpiVmuampsRp5CDDBSfh35GBzq3iZjOH4XKLhSXFvJE8McTfXya8=
X-Received: by 2002:a9d:be1:: with SMTP id 88mr3320516oth.210.1606227776073;
 Tue, 24 Nov 2020 06:22:56 -0800 (PST)
MIME-Version: 1.0
References: <20201119114029.183828-1-juant.aldea@gmail.com>
 <20201119122737.189675-1-juant.aldea@gmail.com>
In-Reply-To: <20201119122737.189675-1-juant.aldea@gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 24 Nov 2020 15:22:40 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3S+nR0tupEvk7bd0SsMYAd90YtMnL9R3JzzzV-m0pNwA@mail.gmail.com>
Message-ID: <CAK8P3a3S+nR0tupEvk7bd0SsMYAd90YtMnL9R3JzzzV-m0pNwA@mail.gmail.com>
Subject: Re: [PATCH v2] staging: trivial: hikey9xx: fix be32<->u32 casting
 warnings
To: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdevel <devel@driverdev.osuosl.org>, Jiri Kosina <trivial@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 19, 2020 at 1:31 PM Juan Antonio Aldea-Armenteros
<juant.aldea@gmail.com> wrote:
>
> This patch fixes the following warnings reported by sparse, by adding
> missing __force annotations.
>
> drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
> drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
> drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
> drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
> drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
> drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
>
> drivers/staging/hikey9xx/hisi-spmi-controller.c:239:25: warning: cast from restricted __be32
>
> Rationale for #164:
> data is declared as u32, and it is read and then converted by means of
> be32_to_cpu(). Said function expects a __be32 but data is u32, therefore
> there's a type missmatch here.
>
> Rationale for #239:
> Is the dual of #164. This time data going to be  written so it
> needs to be converted from cpu to __be32, but writel() expects u32 and the
> output of cpu_to_be32 returns a __be32.

Both of the casts look very suspicious, I'd leave these in unless
someone can confirm what the actual desired behavior is.

>                              SPMI_SLAVE_OFFSET * slave_id +
>                              SPMI_APB_SPMI_RDATA0_BASE_ADDR +
>                              i * SPMI_PER_DATAREG_BYTE);
> -               data = be32_to_cpu((__be32)data);
> +               data = be32_to_cpu((__be32 __force)data);
>                 if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
>                         memcpy(buf, &data, sizeof(data));
>                         buf += sizeof(data);

The data comes from a readl(), which contains an endian conversion
on architectures that need it, such as when running the board
in big-endian arm64 mode. Having a second endian-conversion
on little-endian architectures means that the data is always swapped
when it gets written to the register.

In the original code before Mauro's commit 8788a30c12c7 ("staging:
spmi: hisi-spmi-controller: use le32 macros where needed"), the data
was byteswapped, and then written into the fifo register, which
produced no warning but would do a double-swap on a big-endian
kernel, and change the behavior from what it was before.

My guess is that Mauro inadvertently fixed this driver for big-endian
mode, without noticing that it was broken to start with, and that
he did not actually try it with CONFIG_CPU_BIG_ENDIAN.

I think the best way would be to go back to to using swab32p()
(not the open-coded version) and then use writesl() or
iowrite32_rep() with count=1 to write the byteswapped FIFO
register without swapping it again.

      Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
