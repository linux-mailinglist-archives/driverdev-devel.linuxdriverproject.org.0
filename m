Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DF9274D01
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 01:00:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CAFC1872D6;
	Tue, 22 Sep 2020 23:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2RKMs7eVsZ4W; Tue, 22 Sep 2020 23:00:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F82D8707C;
	Tue, 22 Sep 2020 23:00:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0ABEF1BF96B
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 23:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 06CA7870F3
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 23:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id heWARxVZsauY for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 23:00:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 93E6F8707C
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 23:00:45 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id t18so18985946ilp.5
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 16:00:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GsXOYZZf5xdaUt63u65zd5bMSVGREYrkQy367fZurpc=;
 b=QDmZW2nN7L16s8ZPp6uK4XScNl+T2WngFmUuxWZ3mws+NzDymbSM90j5uNvG77daLm
 UoL0u0vFXoJaXDzDw5dLLQpU0frpQ4CcBkugjcsuvyMg9R04wsmGQavivcKvQq7hGria
 gIPJorzokS3IDfieuE6sp5gRExL7HVm106srgIRRCesS44F2v+V3SiQfbiJAPfmIfwT4
 tFlP8If7PNe7qrft8alILdA0pV0q7TfjniykVfolyAuV9KMOwx0jurJAbwhmnVctOHHp
 s/EsZLXjVchDm63Sn7qc6slZBLR4I4JtYbT3hxg9XRXNpIbyy+fObjAZT0OxoFvhnO3X
 otqg==
X-Gm-Message-State: AOAM533RIaguA9ZVRbUtMK3XlCNVv+WGi/XEk2UqTGU7h/c4LSLiwAr0
 dRmUz+XekREYjlwqVW/kmA==
X-Google-Smtp-Source: ABdhPJxfqDX5bxzFUrY+k6Qc1PsPZWVhldUH35d8eXvTqDKiWig6b9je3/K0vTqPctttmyXkbg6eqg==
X-Received: by 2002:a92:cb01:: with SMTP id s1mr6368568ilo.225.1600815644833; 
 Tue, 22 Sep 2020 16:00:44 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id u15sm8062352ior.6.2020.09.22.16.00.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 16:00:44 -0700 (PDT)
Received: (nullmailer pid 3425231 invoked by uid 1000);
 Tue, 22 Sep 2020 23:00:43 -0000
Date: Tue, 22 Sep 2020 17:00:43 -0600
From: Rob Herring <robh@kernel.org>
To: Martin Cerveny <m.cerveny@computer.org>
Subject: Re: [PATCH v2 5/6] dt-bindings: media: cedrus: Add V3s compatible
Message-ID: <20200922230043.GA3425202@bogus>
References: <20200912143052.30952-1-m.cerveny@computer.org>
 <20200912143052.30952-6-m.cerveny@computer.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200912143052.30952-6-m.cerveny@computer.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 12 Sep 2020 16:30:51 +0200, Martin Cerveny wrote:
> Allwinner V3s SoC contains video engine. Add compatible for it.
> 
> Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
> ---
>  .../bindings/media/allwinner,sun4i-a10-video-engine.yaml         | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
