Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AEA2CAC7D
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 20:38:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5EF186BA7;
	Tue,  1 Dec 2020 19:38:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJczXo8n6kKD; Tue,  1 Dec 2020 19:38:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C993786B87;
	Tue,  1 Dec 2020 19:38:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E83FF1BF5E9
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 19:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E449D87675
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 19:38:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zOB9MHj0c56O for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 19:38:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 41EE887674
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 19:38:08 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id r17so2835141ilo.11
 for <devel@driverdev.osuosl.org>; Tue, 01 Dec 2020 11:38:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DYI9qxONvfFsX93NLUdjcCc5cniO135LSRFDHLJMHNc=;
 b=SMWPbSgskiLutfqaZRUKM++//b2lpR4MuN4kk04C1Cu4KUTQ+p2m0hDTGpV29lucXd
 ZUXXzlw50cjQ4yCpa1+bg7fv78qnbAe8/RsyUxWkf7b4d+fOWVIQw5KFd/ma/AsndLIt
 mHLKtdEjUC4npaXrvaHhCSXyQA66Fj30zaqpHnc6ejtId2B9vvgxsDZslKiKNdO70/Wx
 g5mOoVEPFZaUP2O7XJ5ERu+mHm8KYhDKmKBsXxVU7anwWRWcd+0sR9ZVfOd3uusHUIfE
 U+qq5/Lgn+9d+M1v76A0XICCVMCYuPfZV9dYlrrqatkmvPNpKALY0Hg24nw5+gXHBlbH
 tYhw==
X-Gm-Message-State: AOAM5312tC8wSEa9H5Fqw9mswYqBa3zP2GfY1CoA+mCrSRwdRb4FnJgi
 eRGQS9HsjRHYo4Vh3F0lbw==
X-Google-Smtp-Source: ABdhPJyvVD5SrSLhVY6E2GMjFTusn8xdbN/fL5/dU9/BGT2sTIfo6kFY4V/phZjd812h0KRt9YFXMA==
X-Received: by 2002:a92:d3c6:: with SMTP id c6mr4237207ilh.7.1606851487685;
 Tue, 01 Dec 2020 11:38:07 -0800 (PST)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id c89sm279355ilf.26.2020.12.01.11.38.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 11:38:06 -0800 (PST)
Received: (nullmailer pid 928924 invoked by uid 1000);
 Tue, 01 Dec 2020 19:38:03 -0000
Date: Tue, 1 Dec 2020 12:38:03 -0700
From: Rob Herring <robh@kernel.org>
To: Martin Cerveny <m.cerveny@computer.org>
Subject: Re: [PATCH v3 2/6] dt-bindings: sram: allwinner,
 sun4i-a10-system-control: Add V3s compatibles
Message-ID: <20201201193803.GA928894@robh.at.kernel.org>
References: <20201116125617.7597-1-m.cerveny@computer.org>
 <20201116125617.7597-3-m.cerveny@computer.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116125617.7597-3-m.cerveny@computer.org>
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Icenowy Zheng <icenowy@aosc.io>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 16 Nov 2020 13:56:13 +0100, Martin Cerveny wrote:
> Allwinner V3s has system control similar to that in H3.
> Add compatibles for system control with SRAM C1 region.
> 
> Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
> ---
>  .../bindings/sram/allwinner,sun4i-a10-system-control.yaml      | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
