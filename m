Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 800AD168114
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 16:04:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E99A5220C2;
	Fri, 21 Feb 2020 15:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 96Up+HFzWm64; Fri, 21 Feb 2020 15:04:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 97A1E220C5;
	Fri, 21 Feb 2020 15:04:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA4741BF9B9
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 15:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E6F03863A1
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 15:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rli_uX36Kc4r for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 15:04:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7F15F86381
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 15:04:22 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1804324650
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582297462;
 bh=XjbX3ABHME7O4C3tUHcQ6q3DE6Funkki9N8+FvacTFg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AHeGD/fGuziHv3u7zkZlm9JueHnOlqjeoNt4Ig/GlRVAnGH3dy0BH6EyukOzsKWKg
 i6z3fer+Dk/kmVjct2/c97wTm0sN3lokJgPICJxMzdvoUCTefkzqD6fm5RbH2FYzYA
 0HOd78OjYCjGKRnlL8euKW4QcUwAqxheYQSY38vk=
Received: by mail-qt1-f180.google.com with SMTP id l16so1479709qtq.1
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 07:04:22 -0800 (PST)
X-Gm-Message-State: APjAAAVpMs5drlmXZNXZDQgJVlhlvU2gqugU8sp8ZcAhqK4qW4rTzynR
 11+IQdcXJbbUf8dC0OfGhFzboypSR7i0HVSYQg==
X-Google-Smtp-Source: APXvYqzLxqKFCIpBLyraSMLiDxatxEF/d7aKJ2wuDPHFP3RIxNLjdn+cFEKHetm5avETg2TxS5D8S+pIWijZ9eWlphs=
X-Received: by 2002:ac8:1415:: with SMTP id k21mr32896313qtj.300.1582297448018; 
 Fri, 21 Feb 2020 07:04:08 -0800 (PST)
MIME-Version: 1.0
References: <20200221122133.32024-1-geert+renesas@glider.be>
 <20200221122133.32024-4-geert+renesas@glider.be>
In-Reply-To: <20200221122133.32024-4-geert+renesas@glider.be>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 21 Feb 2020 09:03:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJb=6vq8DFFjcEN3uJg3e4i8sHShAkTZeAUyNhx9y=Svw@mail.gmail.com>
Message-ID: <CAL_JsqJb=6vq8DFFjcEN3uJg3e4i8sHShAkTZeAUyNhx9y=Svw@mail.gmail.com>
Subject: Re: [PATCH 3/3] staging: pi433: overlay: Convert to sugar syntax
To: Geert Uytterhoeven <geert+renesas@glider.be>
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
 Marcus Wolf <linux@wolf-entwicklungen.de>,
 Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 21, 2020 at 6:21 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> Using overlay sugar syntax makes the DTS overlay files easier to read
> (and write).
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Why are there two separate fragments for spi0? Can't they be combined?
> Why do you need the spidev@1 entry?
> ---
>  .../devicetree/pi433-overlay.dts              | 79 ++++++++-----------
>  1 file changed, 35 insertions(+), 44 deletions(-)
>
> diff --git a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts

We have overlays in staging? Who sneaked this in?

Maybe the path should be fixed at least as this isn't documentation.

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
