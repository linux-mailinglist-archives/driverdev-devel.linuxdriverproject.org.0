Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F702BFF21
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 05:47:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A7E74870A1;
	Mon, 23 Nov 2020 04:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3+MX1x4BQSla; Mon, 23 Nov 2020 04:47:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19DB387062;
	Mon, 23 Nov 2020 04:47:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB6C01BF3D4
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 04:47:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C7A4687062
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 04:47:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zdPiPO2L66UE for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 04:47:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 756308705D
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 04:47:47 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id f24so3703273ljk.13
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 20:47:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NPKKFFttECtrhCNY5oVMatcAdfTTlnNsNes6pooxhN8=;
 b=OtQJHLYJy/PVJZyVZR4Ac9na645u/+YvS6yzHGcpge/d3vEH/cob8ttcu3IzUg7JZs
 s/yJoFtrsZKxNzEPAh7AVT14hXnPDAFaDdc7DM/hN66+64YjLrHlRZZRYSGaLLN+7eXe
 31/7AlD+BWCRYp5wzs2LAKIfRMLsIGodfKOlIOLx+amsZBR9jMgqo95PwZCKzm5yix3E
 K1jXBby4qr3mWFtzAWHIEU4p7FhGIh7neYhzHQrwwFYInITepxTvCzoYP14E2hhPFxKb
 miyKvTcR1ctCgbTpbXfnEF8ySxVizEYwlsGKu+OYmfzysF3tHEltcJPsq/j/3IE3jUDI
 ly5A==
X-Gm-Message-State: AOAM5337QjWlgCkRZG3jbms3rMGqblACne0G+GuXMqGr4JHyLQK4cn6l
 zPgVsey+h9NLItcpcwUJReJbBkHCSUN0qg==
X-Google-Smtp-Source: ABdhPJwTReh1EXblDvUAKKRM6fwuDDmjJjqSrguY8X0fcfXsnK8/jhjkjWX/PooSbAL7zcOEabVjgQ==
X-Received: by 2002:a2e:b5ca:: with SMTP id g10mr1902782ljn.209.1606106865390; 
 Sun, 22 Nov 2020 20:47:45 -0800 (PST)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com.
 [209.85.208.170])
 by smtp.gmail.com with ESMTPSA id r20sm1171718ljk.97.2020.11.22.20.47.43
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Nov 2020 20:47:44 -0800 (PST)
Received: by mail-lj1-f170.google.com with SMTP id 142so16540183ljj.10
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 20:47:43 -0800 (PST)
X-Received: by 2002:a2e:8546:: with SMTP id u6mr12923580ljj.125.1606106863590; 
 Sun, 22 Nov 2020 20:47:43 -0800 (PST)
MIME-Version: 1.0
References: <20201116125617.7597-1-m.cerveny@computer.org>
 <20201116125617.7597-7-m.cerveny@computer.org>
In-Reply-To: <20201116125617.7597-7-m.cerveny@computer.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 23 Nov 2020 12:47:32 +0800
X-Gmail-Original-Message-ID: <CAGb2v67kS3TfoEv+QsoOawuMOaRU89DY3TvJAruF6Tzryzwv_w@mail.gmail.com>
Message-ID: <CAGb2v67kS3TfoEv+QsoOawuMOaRU89DY3TvJAruF6Tzryzwv_w@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] ARM: dts: sun8i: v3s: Add video engine node
To: Martin Cerveny <m.cerveny@computer.org>
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
Cc: devel@driverdev.osuosl.org, devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 16, 2020 at 8:58 PM Martin Cerveny <m.cerveny@computer.org> wrote:
>
> Allwinner V3S SoC has a video engine.
> Add a node for it.
>
> Signed-off-by: Martin Cerveny <m.cerveny@computer.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
