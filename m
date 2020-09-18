Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C76026FF77
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 16:04:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E1A1876C0;
	Fri, 18 Sep 2020 14:04:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q5u-ggJ4Dltj; Fri, 18 Sep 2020 14:04:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B633D87672;
	Fri, 18 Sep 2020 14:03:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC9731BF3AF
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 14:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B8BEC86C3A
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 14:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C1TrDoMtIeMV for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 14:03:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C4A586C39
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 14:03:55 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CBD1E2388B
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 14:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600437834;
 bh=jlUpQedx8lxFnhVYRHD0h2Z+8oE7QO6G9HDCL13E1RI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hkoxVra26u+srB3hgMaWdFmgKHe/+4D9c7Q77PzhLQCLd8LvMoHtcMKBh7PQDncaN
 WhnwOkhrhrLq+g1PHNFu7hThsMHxnIOZOo6nv6qUeAwFwKaEyXyzPYBsyOVWXCMMiU
 xqMhzUt8cjTHWfMlYqdGr9EXabKN1gD6ko272Aj0=
Received: by mail-oi1-f175.google.com with SMTP id u126so7083170oif.13
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 07:03:54 -0700 (PDT)
X-Gm-Message-State: AOAM531dURH9nl1LaUsKZFPHSRH2Eshx/5rpu5r9bF5VwwAyLXm8ZWHS
 R5fsxAQg7KUqJD5XLEhtqvsCJzHhkdgMKo1dxg==
X-Google-Smtp-Source: ABdhPJw5PYmmyHWV1DhKrLllNfPExtmDPBfDoTPRLpa4UM124TtPu7YW7eKVG32FF/CjBLW9jymuFh3mRGXmtomX2ZE=
X-Received: by 2002:aca:4d58:: with SMTP id a85mr8881222oib.147.1600437834149; 
 Fri, 18 Sep 2020 07:03:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-3-helen.koike@collabora.com>
In-Reply-To: <20200722155533.252844-3-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 18 Sep 2020 08:03:43 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJgJYfT7iyxwfhixrBC3npUGZxMa_Dk4=XjKKN-AV7New@mail.gmail.com>
Message-ID: <CAL_JsqJgJYfT7iyxwfhixrBC3npUGZxMa_Dk4=XjKKN-AV7New@mail.gmail.com>
Subject: Re: [PATCH v5 2/9] media: staging: dt-bindings: rkisp1: drop i2c unit
 address
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

On Wed, Jul 22, 2020 at 9:55 AM Helen Koike <helen.koike@collabora.com> wrote:
>
> Add missing required items in Rockchip ISP1 dt-bindings example for
> a complete i2c node.
> Drop unit address to Fix error:
> /example-0/parent/i2c@ff160000: node has a unit name, but no reg or ranges property
> Remove unecessary fields for the example.
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
>
> Changes in v5:
> - Patch re-written to drop unity address instead of completing i2c node
>
> Changes in v2:
> - new patch in the series
>
> tmp: i2c drop fields
> ---
>  .../Documentation/devicetree/bindings/media/rockchip-isp1.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
