Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99243274CFC
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 01:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDE35872AD;
	Tue, 22 Sep 2020 23:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wwMzKj6UnDJ9; Tue, 22 Sep 2020 23:00:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3411E870F3;
	Tue, 22 Sep 2020 23:00:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 305B41BF96B
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 23:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CAF5870F3
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 23:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vBTwUicCEkEa for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 23:00:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A12838707C
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 23:00:27 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id y74so21530950iof.12
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 16:00:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RVMguUIzmTtaxt/UzDSsjScytUJaBesIrEnv/YQ+RmI=;
 b=De534T76LVQc/DzMaN+vHrQYRlqPNQer+VF1WHkVsPbPoRRcH6DBVY8IGoi+fZk6ey
 l8BzpVAVrBnxYAAAvDfawbXc55/9IIpx6JR+oRCifJAOx0I3xdFuXH4E6SCuKOIr1FmT
 UhSlRoMwhNpx71xj0Ch06PsTv86PSJZsmRcfrlUJVBGVcGUq0BZ/S48Lh+eh9nZBCJOV
 eJESgpklIfuFUrscF2KtfMct502S767lAAHD6cUlQKLKUhLI+ZY77q2c6AUyYW6T1ARr
 mFCnYzCwUP14Ldy0z4JqLk7ivOGVz8jNxC5AK4WYVbPwY6eGs/bU7SRAWcAz0Y4b9jL1
 UBiQ==
X-Gm-Message-State: AOAM531tYcUoPNER/XC0GBgzQOEHITV4TEZVq8pHZ3f7kjZXsfWsWKqj
 8iWcIa5zDsPpo+6rT14FtA==
X-Google-Smtp-Source: ABdhPJz26l6SojL0Zz2qL3wOe+3ynhmyzZn2NCaiBJEE5oKVykLJ0KiIKrfvPkaL31K0xDj2zzRltg==
X-Received: by 2002:a05:6602:2043:: with SMTP id
 z3mr5017770iod.93.1600815626986; 
 Tue, 22 Sep 2020 16:00:26 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id l6sm1841382ils.6.2020.09.22.16.00.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 16:00:26 -0700 (PDT)
Received: (nullmailer pid 3424647 invoked by uid 1000);
 Tue, 22 Sep 2020 23:00:25 -0000
Date: Tue, 22 Sep 2020 17:00:25 -0600
From: Rob Herring <robh@kernel.org>
To: Martin Cerveny <m.cerveny@computer.org>
Subject: Re: [PATCH v2 2/6] dt-bindings: sram: allwinner,
 sun4i-a10-system-control: Add V3s compatibles
Message-ID: <20200922230025.GA3424613@bogus>
References: <20200912143052.30952-1-m.cerveny@computer.org>
 <20200912143052.30952-3-m.cerveny@computer.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200912143052.30952-3-m.cerveny@computer.org>
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

On Sat, 12 Sep 2020 16:30:48 +0200, Martin Cerveny wrote:
> Allwinner V3s has system control similar to that in H3.
> Add compatibles for system control with SRAM C1 region.
> 
> Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
> ---
>  .../bindings/sram/allwinner,sun4i-a10-system-control.yaml   | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
