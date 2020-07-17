Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A5422421C
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 19:42:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6756A85640;
	Fri, 17 Jul 2020 17:42:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M45ThoZHgxDJ; Fri, 17 Jul 2020 17:42:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65A9A85755;
	Fri, 17 Jul 2020 17:42:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 630AC1BF370
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 17:42:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5FE3C85618
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 17:42:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPCDw_3dfRnW for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 17:42:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1420285550
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 17:42:43 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D53CB2083B
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 17:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595007762;
 bh=5QieGgazv24uxo8nfYhggh5x6thKh4BOctE0GCVxO54=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0fPlT+MeApkuB/3q8zwgO47JyR/2u7Y3WEOj3trpqCfUkiooVDnmGPHIjQFKsAbrF
 pfRu1fH8S2ZWkcDzvu0XMjWuD6R+29u9xg2G9hYYX4hFqhr8tV2J1klqauvRkhgx+X
 m25Qu+/21bL+H8AdLLv75nX21xsHbvi3uGKhaVtg=
Received: by mail-ot1-f50.google.com with SMTP id t18so7447808otq.5
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 10:42:42 -0700 (PDT)
X-Gm-Message-State: AOAM532Iy6ZcD+WoxwUT7wFQ4HvEJTaUC/AGMDSPoTc+mn23FqHBJfcN
 seysauEkhoNRJfCAlqEaj0cqsgFn9x8Gz4r4Xw==
X-Google-Smtp-Source: ABdhPJzD3YUc/7CeZQ+EaWXw6Qv+Go+VXgLHLQ/PJovsvgRkjaTGFOIray60Uq73A/E9jWweZDFCEtTGocFzvzdEEgg=
X-Received: by 2002:a9d:4002:: with SMTP id m2mr9888236ote.129.1595007762224; 
 Fri, 17 Jul 2020 10:42:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200702191322.2639681-1-helen.koike@collabora.com>
 <20200702191322.2639681-2-helen.koike@collabora.com>
In-Reply-To: <20200702191322.2639681-2-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 Jul 2020 11:42:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKLFanS_Vhsbxt5mibxCimDGoa=ShyjR0Qt9YPeazOmTg@mail.gmail.com>
Message-ID: <CAL_JsqKLFanS_Vhsbxt5mibxCimDGoa=ShyjR0Qt9YPeazOmTg@mail.gmail.com>
Subject: Re: [PATCH v4 1/9] media: staging: dt-bindings: rkisp1: add missing
 required nodes
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
> Add missing required nodes in json-schema yaml file for
> Rockchip ISP1 dt-bindings.
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
>
> Changes in v2:
> - New patch in the series
> ---
>  .../devicetree/bindings/media/rockchip-isp1.yaml          | 8 ++++++++
>  1 file changed, 8 insertions(+)

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
