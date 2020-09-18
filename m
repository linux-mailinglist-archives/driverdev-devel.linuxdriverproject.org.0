Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED94326FF73
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 16:03:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6425877E5;
	Fri, 18 Sep 2020 14:03:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hGlL-IhRM6gq; Fri, 18 Sep 2020 14:03:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C641D877D6;
	Fri, 18 Sep 2020 14:03:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3D7D1BF3AF
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 14:03:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 998AB877E5
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 14:03:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LbI+9ErzB1Bl for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 14:03:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C24A387756
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 14:03:04 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
 [209.85.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71A0C23787
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 14:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600437784;
 bh=ceMp5e2PEx8+OXFUL08K6kd8nS2HTjT3yL8yWWmw/XY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aN1L5afhODcB6oZbb3gXe25GiRn6TznrDNDCmMA15uZWO5FXTxYUT2+HApeOJAZJX
 VRkk+dX1u/ZsU98LrqqKjArYsJ/0g1yO0a4xDO9IWfLu7EgS/m6jCTi1buG9DXSmHY
 N1vxXeFCCJxB/wvlroPm6j1i1QAPrPUSRfOP8C8M=
Received: by mail-ot1-f53.google.com with SMTP id e23so5457106otk.7
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 07:03:04 -0700 (PDT)
X-Gm-Message-State: AOAM5318WY8v11LAcppbiVMpxhbRCyakwQaiwZdhoSho6M0N+dtWsQX1
 S2FyJ1C/nCqYcc/upm8cv1y+3PiCVxdggDy0xQ==
X-Google-Smtp-Source: ABdhPJzFRdqI6xDMxO2WwbAZUoxvL1C2s8llhjhqxIM2uXpb4VM3ABM4S06vvLPwRuD/6HYmbQsubXallQ2te0BX6Og=
X-Received: by 2002:a9d:6ada:: with SMTP id m26mr9287562otq.192.1600437783776; 
 Fri, 18 Sep 2020 07:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-2-helen.koike@collabora.com>
In-Reply-To: <20200722155533.252844-2-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 18 Sep 2020 08:02:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLB2wJE0VBmonSC_hBETgE-he50HJGbBBKy8RKS6GyjxQ@mail.gmail.com>
Message-ID: <CAL_JsqLB2wJE0VBmonSC_hBETgE-he50HJGbBBKy8RKS6GyjxQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/9] media: staging: dt-bindings: rkisp1: add missing
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

On Wed, Jul 22, 2020 at 9:55 AM Helen Koike <helen.koike@collabora.com> wrote:
>
> Add missing required nodes in json-schema yaml file for
> Rockchip ISP1 dt-bindings.
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>
> Changes in v2:
> - New patch in the series
> ---
>  .../devicetree/bindings/media/rockchip-isp1.yaml          | 8 ++++++++
>  1 file changed, 8 insertions(+)

Sorry, PW filters patches and this isn't under
Documentation/devicetree/bindings/.

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
