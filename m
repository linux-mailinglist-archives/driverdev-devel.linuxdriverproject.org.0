Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B4426FF7B
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 16:04:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B6C5876D7;
	Fri, 18 Sep 2020 14:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h2JBQ-i8XqJB; Fri, 18 Sep 2020 14:04:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A8AA8769A;
	Fri, 18 Sep 2020 14:04:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9515A1BF318
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 14:04:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8ED0587313
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 14:04:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pkOeEvxcNiOm for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 14:04:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5B6EF872E7
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 14:04:42 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DA83235FA
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 14:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600437882;
 bh=+AUjt8uHrU807ERl3qIjVJflDoMSNyT4i7yBC6dijrI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RVt4tQGL4NGqcuth0LV1JnlCXBW8SO30dOK+Lg8IIRjV0yOF0wWgsEgCOkBjFzk9s
 0Rn62vEFabnBsQPloLvnLHln9lSqPd+bL09xYBIprQJYenk2AZwnYvfpwWNJSXEtpi
 Ma7cMkDdiC5idrlwehKbmi2TBawmYb3NOOEdOvqA=
Received: by mail-ot1-f51.google.com with SMTP id c10so5440115otm.13
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 07:04:42 -0700 (PDT)
X-Gm-Message-State: AOAM533p1IIhiJgAjDvReEKiQ8HuxroAC7FX3aS7begDiAHz5wG8cWBN
 2ldlqU41GcJVFhhM8lRK7YI8Sw4OoxekQZL1dg==
X-Google-Smtp-Source: ABdhPJxRV95Yj/Uh3LvsS3bkFNGt2GCjGRYFMGcZ1fb2PKBNRXUO/m0gTSbm+YgzBtSAdBkO/WVadlDzl7cQpcm0zfE=
X-Received: by 2002:a9d:6ada:: with SMTP id m26mr9294255otq.192.1600437881398; 
 Fri, 18 Sep 2020 07:04:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-5-helen.koike@collabora.com>
In-Reply-To: <20200722155533.252844-5-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 18 Sep 2020 08:04:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJYTNBZQ08ORB01z+=We6tuvqK3MKgGNm-Yj7q2KAMcAQ@mail.gmail.com>
Message-ID: <CAL_JsqJYTNBZQ08ORB01z+=We6tuvqK3MKgGNm-Yj7q2KAMcAQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/9] media: staging: dt-bindings: rkisp1: drop parent
 unit address
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

On Wed, Jul 22, 2020 at 9:56 AM Helen Koike <helen.koike@collabora.com> wrote:
>
> Fix the following error found with make ARCH=arm64 dt_binding_check:
>
> Documentation/devicetree/bindings/media/rockchip-isp1.example.dts:24.27-101.11:
> Warning (unit_address_vs_reg): /example-0/parent@0: node has a unit name, but no reg or ranges property
>
> Reported-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> V5:
> - Patch re-written to drop the unit address instead of adding reg
>
> V3:
> - this is a new patch in the series
> ---
>  .../Documentation/devicetree/bindings/media/rockchip-isp1.yaml  | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
