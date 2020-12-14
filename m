Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7392D9564
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 10:41:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E33B02E127;
	Mon, 14 Dec 2020 09:41:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LztQIz1BLCfE; Mon, 14 Dec 2020 09:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 700392E12F;
	Mon, 14 Dec 2020 09:40:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4868C1BF29C
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 09:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 456858672E
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 09:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F8fjZUx7_8KX for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 09:40:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 32DD886207
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 09:40:10 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id w124so15414680oia.6
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 01:40:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fqzM7e75UJFJjd3gnYlao0ic5zl7gtQUCIPOWPs96Ww=;
 b=OkWVeO8TRWXdf1hoWatNgy9+nYBfbN/r+HTm6Z7zBn4HQYbhWJJPF5YjNH8ti+tGLM
 WtcswV8KtWzaHZKgpXEwMhQpN1e9Oc59jT3oh/jIBqYGj+XWEO3fByV+lNGlon6jyLS/
 jtE467MahuKhATMxQlqHSk5RjdeDLGbdGDAz7hkTx9XrWi4t1b5g1Vt/tNmHL8fF9wBU
 hsv4o8xZtOmCmTfxxr34Rmlfvt4jGwGhc1HFffD48/7RF4b2PWGWDa1mtyD3Hw6au+vz
 NiIkvZp4v8XIrJxWv3fdpBQYbRqJrLOZqdg2VExk2U8YYWWBlNljWpXB/l8pU5yiKTMs
 3GrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fqzM7e75UJFJjd3gnYlao0ic5zl7gtQUCIPOWPs96Ww=;
 b=Hd6h7fIKxm0sbYhqaUUfhqL5TUeXDQLYH8GuaMCJYiE9Iy5awSiU37qh95skYCbLrB
 9+K6pAO79hruKKZ+ukrPpIDyMkQbZroWPCzdxL2tDJ48PTjmtXU9RYfZe65E97R/kT8N
 QGjWL7/Z1iISTskxrnlhh8sdEhPWE0yzgDitdjTkf6RYhkJWS8TSXcCa3nuDsNuua1z3
 MWIz2F62nMONTut2+oshaF0odHpEq63OK/kfi+3uRvi6wbkySmBVO1+U4+bVt/my2Bo9
 oJ7UI64zyuLfQrGlm+DLJWFgM4bCZ/h79PISRSOQDzVpv/dBukUkhXk0omErzgzfKQy+
 B6+g==
X-Gm-Message-State: AOAM532uhGtfkKdOI1j1xnG8BgdJIOrf63sEiSe1AsvWC6Mglt0/OlDa
 E+nTVz3c2WflngdS7hkBssxkptx4kBRLY7UcA/g=
X-Google-Smtp-Source: ABdhPJyQx9ElRrEpYfu6YbyoM1UD/VmFNB/bMFmoavOcrHCFhmWvWa8WBDfsHoHEGu1WPZ8oql6XZd5h4Gp0AI9aG2s=
X-Received: by 2002:aca:5a86:: with SMTP id o128mr17717137oib.23.1607938809521; 
 Mon, 14 Dec 2020 01:40:09 -0800 (PST)
MIME-Version: 1.0
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
 <CACRpkdaAd-wJuqspYTuj4RGTyJgobX+6j=5ZWWSCtdLLMnPoYw@mail.gmail.com>
In-Reply-To: <CACRpkdaAd-wJuqspYTuj4RGTyJgobX+6j=5ZWWSCtdLLMnPoYw@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 14 Dec 2020 10:39:58 +0100
Message-ID: <CAMhs-H8HKU0Rw3tpnrEUie7S42pq5y8uhDqjSiJBLqAkMUQ4UA@mail.gmail.com>
Subject: Re: [PATCH 0/8] pinctrl: ralink: rt2880: Some minimal clean ups
To: Linus Walleij <linus.walleij@linaro.org>
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Yan <yanaijie@huawei.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 14, 2020 at 10:02 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Sun, Dec 13, 2020 at 5:17 PM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
>
> > After this driver was moved from staging into pinctrl subsytems
> > some reviews for bindigns and driver itself comes from Ron Herring
> > and Dan Carpenter. Get rid of all the comments to properly be in
> > a good shape before merge window.
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> If Greg wants he can queue them last minute. Else I'll apply these
> after the merge window, no big deal.

Thanks, and sorry for the last minute.

>
> Yours,
> Linus Walleij

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
