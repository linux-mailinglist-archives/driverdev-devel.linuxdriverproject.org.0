Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 102B42B509F
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 20:17:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 780CF871D1;
	Mon, 16 Nov 2020 19:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YRicXtDE0lwb; Mon, 16 Nov 2020 19:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D28D887089;
	Mon, 16 Nov 2020 19:17:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFBBF1BF3D7
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 19:16:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BC96387084
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 19:16:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B7KL-hr9Uw17 for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 19:16:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4982E87089
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 19:16:58 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id m13so19956764oih.8
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 11:16:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=D4c13z/AWlllHasXtboOHruCJmJ26ohfoTPObmNGa6I=;
 b=febYNrJPJ2PadygNQ0LpmuU7lKP3Uk1IBFdn+8N3Ds82kcMN+MUT6gja+BDlV1gVBJ
 cBhRY+YZbMgSpfGhplZLQ1+mDgWXvb11cZiKx5LIHXlg+ayruEeYcuJxozroMomGRO28
 Oven6wFN7hqfwUwSN52sGzX/we5SWpZtRThbkYJGPI/5w4GMG0FT4llTglpdKyL0NMWt
 tYKlu3wAeFVMKU/j09wRWwLWwVIYFXQLKrLMxl8RXNmcAEpigB6EUKK352TVmwlzYXKa
 P63RQsUJN4lzahU+FwcCuY7MJ9ampKo8EU5AkecX8lZ7yW/x0KBjsPkQlnOK1RJtLnyp
 JY4w==
X-Gm-Message-State: AOAM531qhNu5rsSnBaxanam1W1zEWoMkGELh2vSysgK/IBiilJD9ZaMd
 L7eIovps85v8FxqVIzu+KQ==
X-Google-Smtp-Source: ABdhPJzYCwATlASvNHOCVUN3DnFx1wAEYSk90oisTeLS9A3YG/B9cJipsAO6LXDTD//sFHU08Ti66w==
X-Received: by 2002:a05:6808:7cd:: with SMTP id
 f13mr150333oij.38.1605554217445; 
 Mon, 16 Nov 2020 11:16:57 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n21sm4980586oie.15.2020.11.16.11.16.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 11:16:56 -0800 (PST)
Received: (nullmailer pid 1981950 invoked by uid 1000);
 Mon, 16 Nov 2020 19:16:55 -0000
Date: Mon, 16 Nov 2020 13:16:55 -0600
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH 2/7] dt: bindings: add mt7621-pll device tree binding
 documentation
Message-ID: <20201116191655.GA1981921@bogus>
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
 <20201111163013.29412-3-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201111163013.29412-3-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, sboyd@kernel.org, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org, jiaxun.yang@flygoat.com,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, hackpascal@gmail.com,
 john@phrozen.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 11 Nov 2020 17:30:08 +0100, Sergio Paracuellos wrote:
> Adds device tree binding documentation for PLL controller in
> the MT7621 SOC.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../bindings/clock/mediatek,mt7621-pll.yaml   | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
