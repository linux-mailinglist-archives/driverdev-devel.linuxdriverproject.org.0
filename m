Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E51224228
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 19:44:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2315587034;
	Fri, 17 Jul 2020 17:44:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kk4T6XS7bbpA; Fri, 17 Jul 2020 17:44:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3490D86FBB;
	Fri, 17 Jul 2020 17:44:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FAB21BF370
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 17:44:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 29FB285F4B
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 17:44:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gC1E06yyl5GO for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 17:44:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C5F5685550
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 17:44:14 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 936EA22BF5
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 17:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595007854;
 bh=8KhGhYBxnfryGaCJ4USJbgh0ERjIkpbE+Ah2Ia0FzVY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=W0nYfbVjzCONNpiGooYEWPPFRXkLlokkcPhl3A1lZqCJ+5OOenlOxseUiU6mMCB/A
 znN2y7Yk4Pb6bptYEZ5CEyHi/0plSim+pZbDtv7Pp1w2uzJFDz38fLej6XM2nNTPi5
 6RI7Y2NKe9s7mXZxbDZ655w3wevWqwVCFlCfXq14=
Received: by mail-ot1-f42.google.com with SMTP id e90so7473569ote.1
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 10:44:14 -0700 (PDT)
X-Gm-Message-State: AOAM530DycmuagDAVKMaSm6bjGE7Rxsrugnh7WPQfbWuglvjpEvlw4CK
 ZW2meYYCfPBiD7+x4ST1Kkx7HYr6GyKtH/NAPg==
X-Google-Smtp-Source: ABdhPJzmF19p2CWPSseEsvbYzrAu3m4cEXKROdnW9Mwivlqz1HHyHd8Lvx2gzO5P1fA1g1DlI6dgjzgfnM6jDjbbmBQ=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr9977843ots.192.1595007853870; 
 Fri, 17 Jul 2020 10:44:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200702191322.2639681-1-helen.koike@collabora.com>
 <20200702191322.2639681-5-helen.koike@collabora.com>
In-Reply-To: <20200702191322.2639681-5-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 Jul 2020 11:44:02 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLYHY85_JhpGKwTOSP99uCER9VEf-gp3g4nFhN4ktCO3w@mail.gmail.com>
Message-ID: <CAL_JsqLYHY85_JhpGKwTOSP99uCER9VEf-gp3g4nFhN4ktCO3w@mail.gmail.com>
Subject: Re: [PATCH v4 4/9] media: staging: dt-bindings: rkisp1: fix "no reg"
 error in parent node
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 2, 2020 at 1:13 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Fix the following error found with make ARCH=arm64 dt_binding_check:
>
> Documentation/devicetree/bindings/media/rockchip-isp1.example.dts:24.27-101.11:
> Warning (unit_address_vs_reg): /example-0/parent@0: node has a unit name, but no reg or ranges property
>
> Reported-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
>
> V3:
> - this is a new patch in the series
> ---
>  .../Documentation/devicetree/bindings/media/rockchip-isp1.yaml   | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index e5b9c0574e352..4d111ef2e89c7 100644
> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -126,6 +126,7 @@ examples:
>      #include <dt-bindings/power/rk3399-power.h>
>
>      parent0: parent@0 {
> +        reg = <0 0>;

Just drop the unit-address.

>          #address-cells = <2>;
>          #size-cells = <2>;
>
> --
> 2.26.0
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
