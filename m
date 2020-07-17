Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9327224227
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 19:43:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93DB187F04;
	Fri, 17 Jul 2020 17:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0WJGKJQloAE3; Fri, 17 Jul 2020 17:43:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6013B87DB0;
	Fri, 17 Jul 2020 17:43:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6360F1BF370
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 17:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6051685F4B
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 17:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wyS9plM30mJ for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 17:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0528185550
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 17:43:36 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C62DD22BF5
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 17:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595007815;
 bh=FlddXETDbcCI+jX+Y9DK4+rIepVuWv5hMCWZBOLVowY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=y5Pi2lIQnfdBOI//84bhdjQC3IY36B9tgfvuVgsGZFH1r7DPsQXC2SQz4ouUB9Ls2
 xtaiOcZ2NF1EwIU/1DLWZrH854jy1zcG/o380BeunFx9u7Cu9OL/qVcg2nzb8gwBRv
 laBOx6/Z5OWb/sdAmhjUYJ0Jx42F1aVVjhR+Pbqg=
Received: by mail-oi1-f180.google.com with SMTP id j11so8640548oiw.12
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 10:43:35 -0700 (PDT)
X-Gm-Message-State: AOAM5325qanUdJBSk6xSfcRfp6WyZWggI8Edq+MAP/tear9oMLeBx3kc
 kqfpTmXFsgcFIThCYQvSriSLvlu4LkRJcr4DGw==
X-Google-Smtp-Source: ABdhPJxdEZTKZdDAtsUce5PttY07qOuwXdkHitKzJaeRFO0Ux7K7UV3QZV8Lp1Bc30tXd9ZMF4/9alh+Z0BcnZznP+o=
X-Received: by 2002:aca:30d2:: with SMTP id w201mr8705283oiw.147.1595007815168; 
 Fri, 17 Jul 2020 10:43:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200702191322.2639681-1-helen.koike@collabora.com>
 <20200702191322.2639681-4-helen.koike@collabora.com>
In-Reply-To: <20200702191322.2639681-4-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 Jul 2020 11:43:23 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLduaH=F0G8+15PM+1GGmKBjgn7ddP+__ACezLd+ivp5w@mail.gmail.com>
Message-ID: <CAL_JsqLduaH=F0G8+15PM+1GGmKBjgn7ddP+__ACezLd+ivp5w@mail.gmail.com>
Subject: Re: [PATCH v4 3/9] media: staging: dt-bindings: rkisp1: re-order
 properties
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
> Organize properties order in dt-binbings to move it out of staging.

typo

>
> On top: compatible, reg and interrupts.
> Then alphabetical order, then properties starting with '#'.
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>
> ---
>
> V2:
> - this is a new patch in the series
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 32 +++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
