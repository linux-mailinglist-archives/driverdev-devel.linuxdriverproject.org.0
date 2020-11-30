Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D172C86D0
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Nov 2020 15:32:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F70E8715A;
	Mon, 30 Nov 2020 14:32:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5tmwCNMV87Jd; Mon, 30 Nov 2020 14:32:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 821FC87148;
	Mon, 30 Nov 2020 14:32:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C4A11BF418
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 14:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B86BA20011
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 14:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DZTnaaUvbqO2 for <devel@linuxdriverproject.org>;
 Mon, 30 Nov 2020 14:32:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id A0D901FFFE
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 14:32:08 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id l206so14294175oif.12
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 06:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dWBwzvixWL78cCxOpMok96GDWyNbzEWdmxVeWzHH/Mk=;
 b=O8GrnFeywexxa0vjyRVV90d1wEnYBROYo1IrSynNjfNpbRvDVtJs9nrfz+96SxCGF0
 rEu2yyecNemjnyIeFlgwTs6t5KYmc7JAiGzLhMpNPFPrIJIKlSRWv7Y+roT3iBKNFgdg
 Qr6czqX3CYER1KUrccjXSy/gnws20q6xfPRTwHhgioGDSZP98nGQplCRRNjY8mWv+Gs0
 4EvMN1n3rXT0Ti/VChYIh6t4ysicltv3pRgfXBSa4Gspp9a6Dxyx2qPRx68stbIbxwU2
 3UR/6yYONKv/VtyB1byobV3wpO1NzN3PiMoBxvaTbkDItSqXz3IkrAk+ku+e8DlhDZht
 2cvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dWBwzvixWL78cCxOpMok96GDWyNbzEWdmxVeWzHH/Mk=;
 b=C8fle9rLAoeUDm3cIWShKfb3W/1+gb4x3dGAwGw8IHGWBkFW82DImbo4sffXh4oQLs
 wnphu+uCQ5gKRfdFPc1U85YF7lg/NQq/3WqcK4ZhZPxDVMEQQ4bSnR4DolS8v4oGG391
 4zfL7uR1z2Xl7awbaoDbs6WuIO/95dLWWo87/yU12lY1zdYguL+x6T7bBxmgW/Oiput8
 EelYkOXypcaeN66OtqFdllupHZIXuIirLT9A6uGtoDoiADAdgDlBUPXUi1/gz64di06o
 kVhMY7Irqp54acQvHEt3uF6aaUCYS//csso3LJWevSqXg4fujxrl4AQVqhZRIVNjCAko
 x33w==
X-Gm-Message-State: AOAM531wgo12EYe1l0vzDRF4DxMeWfNu4qwf3IUZtNot0tIVjDgFcfvs
 8aI3WXwYMnKp6+aru+RgMTUPWajRuPEhaTJCNIM=
X-Google-Smtp-Source: ABdhPJwtV0T5R/UhLrSXzzrC7wmiBU0e/hTGeT9OdlV4+76hSYmFaSHFcvaZ1IBXDebGgJgoFmCiPVJHaGFToadkZGQ=
X-Received: by 2002:aca:f407:: with SMTP id s7mr14675175oih.23.1606746727547; 
 Mon, 30 Nov 2020 06:32:07 -0800 (PST)
MIME-Version: 1.0
References: <20201121155037.21354-1-sergio.paracuellos@gmail.com>
 <20201130104837.GO8403@vkoul-mobl>
In-Reply-To: <20201130104837.GO8403@vkoul-mobl>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 30 Nov 2020 15:31:55 +0100
Message-ID: <CAMhs-H_kWv=JRdr+6+ejcM14gEj5edBLd2RbC0ad+LQx9F2Jbw@mail.gmail.com>
Subject: Re: [PATCH v6 0/4] MT7621 PCIe PHY
To: Vinod Koul <vkoul@kernel.org>
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
 <devicetree@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Vinod,

On Mon, Nov 30, 2020 at 11:48 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 21-11-20, 16:50, Sergio Paracuellos wrote:
> > This series adds support for the PCIe PHY found in the Mediatek
> > MT7621 SoC.
> >
> > There is also a 'mt7621-pci' driver which is the controller part
> > which is still in staging and is a client of this phy.
> >
> > Both drivers have been tested together in a gnubee1 board.
> >
> > This series are rebased on the top of linux-phy:
> > commit 768a711e2d4b ("phy: samsung: phy-exynos-pcie: fix typo 'tunning'")
>
> Applied, thanks

Thanks for letting me know.

Best regards,
    Sergio Paracuellos
>
> --
> ~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
