Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1C428E4B1
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Oct 2020 18:43:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4BB5287B23;
	Wed, 14 Oct 2020 16:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1UNIe76Wb8Ux; Wed, 14 Oct 2020 16:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0D02878DA;
	Wed, 14 Oct 2020 16:43:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A1E541BF25B
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 16:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9E64D878DA
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 16:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5DkF7E0Yjk8H for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 16:43:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B314C876AE
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 16:43:47 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id p15so5767605ejm.7
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 09:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wuBPfResUSYyKIfZ5ftJfMdcgNsOdysiwgfFsxwVLOk=;
 b=Up9k1hmuJ3kQYCc/XiiZHeN6dxC3+Bt4DXTUrZ0NInm0Fv3mzKgsGybP05RAJynIda
 wcRLSsd72x7Z10Br5P7MB+uj08NwnOnz4n+UuiHKT9qmbalwarQbSv1POTDEGTi+WWlQ
 Py4YTDI4zmSAjy6qGOi1NgBJDRqd+sy9wEldc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wuBPfResUSYyKIfZ5ftJfMdcgNsOdysiwgfFsxwVLOk=;
 b=tvLsBmTvc+VjshrAHh8U8qRJOJf0/rstx9Xg2FPIfmRMMgYa3SFiCyJDQFFrSoS6wN
 5jrJkve0l75X5Rm4Uoovb+OV1thpH0OuUKcYcjDXTm6LSuQ/grNMzCe4lqPcnewGmnRk
 LlEwc90lcbLcKZ4PB0jyySnSuGbIMO35MXWK0nFsnnahI4pI4EL+3csduumNWZ+f7iIB
 mAwrClOlxop9QZKgZzd+s+gqDNa+OobEDflA/2RSgbrX6ySxDrhKE54StxlWcMNdex0/
 A9CyWCQFk642lBNBEMP1qLw1JEJnAduDbcP3faF2y+W294aTP7tDpmFI2BSa/UgBMnyr
 9Y7w==
X-Gm-Message-State: AOAM533XCLABKphNEXQrS3GCsapA5BzS7QorobN5FknSa4+/dCb6ENC1
 FVIgu1OZrR9TYZJsWPubptnrhpmDLQhEdQ==
X-Google-Smtp-Source: ABdhPJxWHUndWys4RfGPbfymfc+ipc5R+MAqqcNcK4GNPCxJEhgz5fwEaTr/pAEIARIYEh2qMfzCkA==
X-Received: by 2002:a17:906:6855:: with SMTP id
 a21mr6069951ejs.289.1602693825419; 
 Wed, 14 Oct 2020 09:43:45 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id bw25sm2044227ejb.119.2020.10.14.09.43.38
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 14 Oct 2020 09:43:40 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id e17so4625190wru.12
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 09:43:38 -0700 (PDT)
X-Received: by 2002:adf:f1cd:: with SMTP id z13mr6554663wro.197.1602693817757; 
 Wed, 14 Oct 2020 09:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-9-helen.koike@collabora.com>
 <20200926130005.GC3781977@chromium.org>
 <905118dd-f108-6bc0-4cf0-9544fab51690@collabora.com>
In-Reply-To: <905118dd-f108-6bc0-4cf0-9544fab51690@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 14 Oct 2020 18:43:25 +0200
X-Gmail-Original-Message-ID: <CAAFQd5C4BcXyee58DpL4TfVJmaLQ-58_mwQucEm-df899va2Lw@mail.gmail.com>
Message-ID: <CAAFQd5C4BcXyee58DpL4TfVJmaLQ-58_mwQucEm-df899va2Lw@mail.gmail.com>
Subject: Re: [PATCH v5 8/9] arm64: dts: rockchip: add isp0 node for rk3399
To: Helen Koike <helen.koike@collabora.com>
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
Cc: devel@driverdev.osuosl.org, linux-devicetree <devicetree@vger.kernel.org>,
 Eddie Cai <eddie.cai.linux@gmail.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Robin Murphy <robin.murphy@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 jbx6244@gmail.com, Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 14, 2020 at 6:27 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Hi Tomasz,
>
> On 9/26/20 10:00 AM, Tomasz Figa wrote:
> > Hi Helen,
> >
> > On Wed, Jul 22, 2020 at 12:55:32PM -0300, Helen Koike wrote:
> >> From: Shunqian Zheng <zhengsq@rock-chips.com>
> >>
> >> RK3399 has two ISPs, but only isp0 was tested.
> >> Add isp0 node in rk3399 dtsi
> >>
> >> Verified with:
> >> make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >>
> >> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> >> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> >> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> >>
> >> ---
> >>
> >> V4:
> >> - update clock names
> >>
> >> V3:
> >> - clean up clocks
> >>
> >> V2:
> >> - re-order power-domains property
> >>
> >> V1:
> >> This patch was originally part of this patchset:
> >>
> >>     https://patchwork.kernel.org/patch/10267431/
> >>
> >> The only difference is:
> >> - add phy properties
> >> - add ports
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
> >>  1 file changed, 25 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> index dba9641947a3a..ed8ba75dbbce8 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> @@ -1721,6 +1721,31 @@ vopb_mmu: iommu@ff903f00 {
> >>              status = "disabled";
> >>      };
> >>
> >> +    isp0: isp0@ff910000 {
> >> +            compatible = "rockchip,rk3399-cif-isp";
> >> +            reg = <0x0 0xff910000 0x0 0x4000>;
> >> +            interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> >> +            clocks = <&cru SCLK_ISP0>,
> >> +                     <&cru ACLK_ISP0_WRAPPER>,
> >> +                     <&cru HCLK_ISP0_WRAPPER>;
> >> +            clock-names = "isp", "aclk", "hclk";
> >> +            iommus = <&isp0_mmu>;
> >> +            phys = <&mipi_dphy_rx0>;
> >> +            phy-names = "dphy";
> >> +            power-domains = <&power RK3399_PD_ISP0>;
> >
> > Should this have status = "disabled" too? The mipi_dphy_rx0 node is
> > disabled by default too, so in the default configuration the driver
> > would always fail to probe.
>
> I'm thinking what is the overall guideline here.
> Since isp and mipi_dphy are always present in the rk3399, shouldn't they always be enabled?
> Or since they are only useful if a sensor is present, we should let the dts of the board to
> enable it?

I don't have a strong opinion. I'm fine with enabling both by default
as well, as it shouldn't hurt.

That said, I recall some alternative CIF IP block being present on
this SoC as well (and patches posted recently), which AFAIR can't be
activated at the same time as the ISP, so perhaps both of the
alternatives should be disabled by default?

Best regards,
Tomasz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
