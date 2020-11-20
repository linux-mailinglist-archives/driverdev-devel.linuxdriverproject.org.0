Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC292BB01B
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Nov 2020 17:20:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C0EFB86F54;
	Fri, 20 Nov 2020 16:20:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1CYHJfilqUKi; Fri, 20 Nov 2020 16:20:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3EB8186F3C;
	Fri, 20 Nov 2020 16:20:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 689BF1BF9AD
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 16:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6551686F3C
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 16:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nu8-z-C3GAXN for <devel@linuxdriverproject.org>;
 Fri, 20 Nov 2020 16:20:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 957F586F3B
 for <devel@driverdev.osuosl.org>; Fri, 20 Nov 2020 16:20:44 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id 92so6156921otd.5
 for <devel@driverdev.osuosl.org>; Fri, 20 Nov 2020 08:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OVxJeqbvblEOj3ny+TuW/O1CmBk2ivCSjlTJ1PlvcUk=;
 b=Gs2Qu+CUxLtsn+6NjJIX1X8+VSuXr9dW9qEwFr/zrx8f+1h/Yn9ZT4dnValPE86gCT
 KY7MuVdV4pXee4icJvJ9anuOFjcpjTBndNUEH6+LfavukFfqAwMt6GTi0U2LCXji/hDf
 dJwQX5qvIPJgZMW72/F5SplUb8+MWPJeL+0OVW2jvx0f8gGksxX8IUuQSbZjS615o44X
 lsSB3XsD/5l8kmDpIsrcxDPw4sWDIDpCPGfFwYzcEpaT8ns8NhGlAftKqCAABBXi8cS0
 cFvHJdHM3ItJiNFpXPJEeMdXbfs4WivDq+EczMkx7o7MGTpL5xm2VZ4IfcDCxNoseMdI
 u80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OVxJeqbvblEOj3ny+TuW/O1CmBk2ivCSjlTJ1PlvcUk=;
 b=WaJbxMBsuI6k1+eF6IbYiW5DWCDyZGfu8y9EFw2EmrheQyu+VgyFuxPKAJJi4R3Zrz
 0+ylUQBwA0qB7v/SuQDtSKTXQKhE74YczK+YbMqQrG2oW6DYL2vx1+UJT1AB+KWFRqpV
 YVKBFNL81RoaB6gmWpNHoFp3uYcNni+M20qVOn90FKHjPt9+Ro605AzRMuboJ9egG7zL
 VCaMBKufB5gG6sCQStl9IGqWK9pnpGIH1wNZbLqYO0bNO9/FZ40UlQSOSyBafrTOTeax
 ia9b84rCZAcL627tZyac1bcfR2KyPFGh9YWM1YMiUhmnmRhZnzjGmtkd0urvKcsFSsFx
 hrpw==
X-Gm-Message-State: AOAM533WtuJ2Hc6nndXsSmf4UFmrqBkAIxSdYTdJ3KTEieC6YVqljcnn
 N5SG3YK+22nQBuyideTcjtWS2fwLsXjp9rALcUQ=
X-Google-Smtp-Source: ABdhPJwmav0/PNrs7PMR5pjq2q2Pw6ET6CbJBnx58x5yQBYy+EdAOkRA5TdObvP/SSqXdWAKKXhJZJx80IvcrCGZKlg=
X-Received: by 2002:a05:6830:160d:: with SMTP id
 g13mr3193376otr.74.1605889243799; 
 Fri, 20 Nov 2020 08:20:43 -0800 (PST)
MIME-Version: 1.0
References: <20201119154337.9195-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20201119154337.9195-1-sergio.paracuellos@gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 20 Nov 2020 17:20:32 +0100
Message-ID: <CAMhs-H8bUuSQ+ROr4PNJXYaGFnjG2=zpjGK7UAAfoPMPbFBb1Q@mail.gmail.com>
Subject: Re: [PATCH v5 0/4] MT7621 PCIe PHY
To: vkoul@kernel.org
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

On Thu, Nov 19, 2020 at 4:43 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> This series adds support for the PCIe PHY found in the Mediatek
> MT7621 SoC.
>
> There is also a 'mt7621-pci' driver which is the controller part
> which is still in staging and is a client of this phy.
>
> Both drivers have been tested together in a gnubee1 board.
>
> This series are rebased on the top of linux-next:
> commit 4e78c578cb98 ("Add linux-next specific files for 20201030")
>
> Changes in v5:
>   - PATCH 1/4: Recollect Rob's Reviewed-by of bindings.
>   - PATCH 4/4: Recollect Greg's Acked-by for removing stuff from
>     staging area.
>   - Make Vinod's review comments changes in [0]:
>     * Use FIELD_GET and FIELD_PREP apis and avoid multiple *_VAL and
>       *_SHIFT custom definitions.
>     * Remove phy-read and phy-write internal functions and directly
>       call regmap_read and regmap_write in 'mt7621_phy_rmw'.
>     * Change some traces from info to debug log level.
>     * Note that I have maintained 'mt7621_phy_rmw' instead of use
>       'regmap_update_bits'. This is because in order to get a reliable
>       boot registers must be written event the contained value in
>       that register is the same. I have preferred doing in this way
>       instead of using 'regmap_update_bits_base' passing 'false' for
>       async and 'true' for the force write. If this way of using
>       'regmap_update_bits_base' is preferred just let me know.

I notice we already have 'regmap_write_bits' function. I will use this
and avoid mt7621_phy_rmw
and send v6 of this series.

Also, do you have any preference of where you want this series to be rebased on?

Best regards,
    Sergio Paracuellos
>
> Changes in v4:
>   - Bindings moved from txt to yaml so previous Rob's Reviewed-by
>     is not in the new patch with the yaml file.
>   - 'phy-cells' property means now if phy is dual-ported.
>   - Avoid custom 'xlate' function and properly set registers
>     when the phy is dual ported.
>   - Add use of 'builtin_platform_driver'.
>   - Added a patch including myself as maintainer in the
>     MAINTAINERS file.
>   - Add a patch removing patch from staging to make easier
>     the complete inclusion and avoid possible problems might
>     appear in 'linux-next' if the series are included.
>
> Changes in v3:
>   - Recollect Rob's Reviewed-by of bindings.
>   - Make Kishon Vijay suggested changes in v2:
>    (See https://lkml.org/lkml/2019/4/17/53)
>   - Kconfig:
>     * Add depends on COMPILE_TEST
>     * Select REGMAP_MMIO
>   - Make use of 'soc_device_attribute' and 'soc_device_match'
>   - Use regmap mmio API instead of directly 'readl' and 'writel'.
>   - Use 'platform_get_resource' instead of 'of_address_to_resource'.
>
> Changes in v2:
>   - Reorder patches to get bindings first in the series.
>   - Don't use child nodes in the device tree. Use #phy-cells=1 instead.
>   - Update driver code with new 'xlate' function for the new device tree.
>   - Minor changes in driver's macros changing some spaces to tabs.
>
> Thanks in advance for your time.
>
> Best regards,
>     Sergio Paracuellos
>
> [0]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-November/148864.html
>
> Sergio Paracuellos (4):
>   dt-bindings: phy: Add binding for Mediatek MT7621 PCIe PHY
>   phy: ralink: Add PHY driver for MT7621 PCIe PHY
>   MAINTAINERS: add MT7621 PHY PCI maintainer
>   staging: mt7621-pci-phy: remove driver from staging
>
>  .../phy}/mediatek,mt7621-pci-phy.yaml         |   0
>  MAINTAINERS                                   |   6 +
>  drivers/phy/ralink/Kconfig                    |   8 ++
>  drivers/phy/ralink/Makefile                   |   1 +
>  .../ralink/phy-mt7621-pci.c}                  | 103 +++++++-----------
>  drivers/staging/Kconfig                       |   2 -
>  drivers/staging/Makefile                      |   1 -
>  drivers/staging/mt7621-pci-phy/Kconfig        |   8 --
>  drivers/staging/mt7621-pci-phy/Makefile       |   2 -
>  drivers/staging/mt7621-pci-phy/TODO           |   4 -
>  10 files changed, 53 insertions(+), 82 deletions(-)
>  rename {drivers/staging/mt7621-pci-phy => Documentation/devicetree/bindings/phy}/mediatek,mt7621-pci-phy.yaml (100%)
>  rename drivers/{staging/mt7621-pci-phy/pci-mt7621-phy.c => phy/ralink/phy-mt7621-pci.c} (76%)
>  delete mode 100644 drivers/staging/mt7621-pci-phy/Kconfig
>  delete mode 100644 drivers/staging/mt7621-pci-phy/Makefile
>  delete mode 100644 drivers/staging/mt7621-pci-phy/TODO
>
> --
> 2.25.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
