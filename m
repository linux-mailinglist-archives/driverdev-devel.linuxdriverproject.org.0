Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2DF251914
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 14:54:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A94886A5B;
	Tue, 25 Aug 2020 12:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bOe-ZVRzZkeX; Tue, 25 Aug 2020 12:54:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADA2E86928;
	Tue, 25 Aug 2020 12:54:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34E261BF37A
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 12:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DEA588462
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 12:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wlBfiGoc091L for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 12:53:59 +0000 (UTC)
X-Greylist: delayed 00:22:29 by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5516188457
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 12:53:59 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y3so12596716wrl.4
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 05:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+HLPhy+qXHIinU4+E7TS6jEdPNtNrgqFPzcA0O6t5kU=;
 b=wEO9WqPQBcLwZUKcvqXvWeTQyatZBnoj8MNgvqBl3wXtPJizAT/oQ/SdGZfZ4EMq/E
 eyFKyYTJISm+DV330UA3npw7Dk0YMydTsCuYN9jpA+MHjIs/adfjauEBoaNXRZ0HI9Le
 JDdxy0U/s9OnS3u2btlKuWA8skzmnHXl+FdDvALKESloVFY3kHERMGM8vAtLPvLngs7q
 pN4QuFCkbyvSu3wmqoe19Atprq/sp9hCBmKWOpw9qfETRsv0KPDoH2X3ZJsbn1hKBRKu
 pSMBFzyQPBylG6jIRY2gLJ9lFIrCS6nd9xiUy1RuilZMNT57weEJFi5aBrdPQmLzGZTH
 70ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+HLPhy+qXHIinU4+E7TS6jEdPNtNrgqFPzcA0O6t5kU=;
 b=qkQx9xQ4YoE+zGk4K+mLmDEhfAQqP2QoIxjD7IIXZzLkQAS6aKSE30G7LqpCyBwkOT
 n7VV0vtHKvtRvzrk/7wjTJmKaIxdadVc2fbx0bCasrdQY+t1hMJ8OJy+s67vt0uHAoHG
 f1XYUoluKRI0nhWrYMJCFNq/LPspEynMF0vhjSGrYn5cQHxqwGgQw/MBHQdI4JetDPtO
 WlY3tsds4nyM5fObvLUm8oXU5q5BIWRtsqsq4g6QqdHFJj843hYrjZvpaa3yrfrxneuR
 fkYhCLYhkaKmCaXSLqUuxbc49+icpOVa2P3/62ZsMUuOKuZb3OpBHKBPerxqnxqncPOR
 GcHQ==
X-Gm-Message-State: AOAM530+n/czyAdjJre6F56YYXa+7s7uHy0qI3zxfChrPIauwlMYXI4L
 IftJjCFJa1Xj9qhcLcuFxysSaV3Um/r+3Kc2NR2xslMpmVfPmw==
X-Google-Smtp-Source: ABdhPJz1mB4Fdo1aDIpEuz/ea4FV6oUPMILZjNgY202nHhhVQ2y6zu7/a0D9cIzuEsl4KQKXulFb7/NPn2fB9IdTTE0=
X-Received: by 2002:a5d:644b:: with SMTP id d11mr10206039wrw.373.1598358688698; 
 Tue, 25 Aug 2020 05:31:28 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
 <20200819153045.GA18469@pendragon.ideasonboard.com>
 <CALAqxLUXnPRec3UYbMKge8yNKBagLOatOeRCagF=JEyPEfWeKA@mail.gmail.com>
 <20200820090326.3f400a15@coco.lan>
 <20200820100205.GA5962@pendragon.ideasonboard.com>
 <CAPM=9twzsw7T=GD6Jc1EFenXq9ZhTgf_Nuo71uLfX2W33oa=6w@mail.gmail.com>
 <20200825133025.13f047f0@coco.lan>
In-Reply-To: <20200825133025.13f047f0@coco.lan>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 25 Aug 2020 13:31:16 +0100
Message-ID: <CAPj87rNkqp0hDEv63jhJsMzsQ0qMLucjWE4KVByCFoMRrnfUKA@mail.gmail.com>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, driverdevel <devel@driverdev.osuosl.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Dave Airlie <airlied@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Wei Xu <xuwei5@hisilicon.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Bogdan Togorean <bogdan.togorean@analog.com>, Jakub Kicinski <kuba@kernel.org>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 linux-media <linux-media@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Liwei Cai <cailiwei@hisilicon.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Herring <robh+dt@kernel.org>, mauro.chehab@huawei.com,
 Rob Clark <robdclark@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Liuyao An <anliuyao@huawei.com>,
 Network Development <netdev@vger.kernel.org>,
 Rongrong Zou <zourongrong@gmail.com>, BPF Mailing List <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro,

On Tue, 25 Aug 2020 at 12:30, Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
> Sorry, but I can't agree that review is more important than to be able
> to properly indicate copyrights in a valid way at the legal systems that
> it would apply ;-)

The way to properly indicate copyright coverage is to insert a
copyright statement in the file. This has been the accepted way of
communicating copyright notices since approximately the dawn of time.
The value of the 'author' field within a chain of git commits does not
have privileged legal value.

If what you were saying is true, it would be impossible for any
project to copy code from any other project, unless they did git
filter-branch and made sure to follow renames too. As others have
noted, it would also be impossible for any patches to be developed
collaboratively by different copyright holders, or for maintainers to
apply changes.

This is accepted community practice and has passed signoffs from a
million different lawyers and copyright holders. If you wish to break
with this and do something different, the onus is on you to provide
the community with _specific_ legal advice; if this is accepted, the
development model would have to drastically change in the presence of
single pieces of code developed by multiple distinct copyright
holders.

Cheers,
Daniel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
