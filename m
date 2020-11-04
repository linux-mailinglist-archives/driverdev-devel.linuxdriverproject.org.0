Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 235052A7083
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 23:30:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70B8A8675E;
	Wed,  4 Nov 2020 22:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ICETkmEwHy5z; Wed,  4 Nov 2020 22:30:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8247086697;
	Wed,  4 Nov 2020 22:30:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EF151BF3CB
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 22:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 815A28563A
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 22:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 83GOsxNTBUSV for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 22:30:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com
 [209.85.161.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3C4F285631
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 22:30:44 +0000 (UTC)
Received: by mail-oo1-f65.google.com with SMTP id v123so32172ooa.5
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 14:30:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wQjWhDvaMTJfou20Vf7AfWs7QnF8sAKxHEJNNsSNo9w=;
 b=iJPt3feLSDbI6MF0eViHULcip51Vhb/efN8P8n2/wf3HkwIKDVXyXGTURzJ1go7t+1
 +hTI/yOHBNbeUHVhQMm2gLtxfMsx+Z8gGdirSjUv9aiWCWeSCGbsoAg6Y4iIMiXcLHzn
 6+fyyxiQwAkUDvBtTZI70KZndFAxEOiwUnPP/pPKLs0yG5DIHqxk/7gtYg3C8fsAEV+1
 Ufxi+ukrxwdIW/+DGWSlFxQbCorm/xvORdJ1Ws6vVIyKEVcZcLG3vtCQ6dcJWQLQZviD
 4+Mbk5fEBMiQJANf6aA4kv5fXEmOJhzJHbq8fCXNSJuZDJCBmnBFaoJ/Egteon156KYf
 WPoQ==
X-Gm-Message-State: AOAM533We9n+kdFxsPW9emEOdmLtnfhZgjXsTvt2f6wo45D8XwDWkPgX
 aFE8b6xWZvzxDYzjxAXg9Q==
X-Google-Smtp-Source: ABdhPJxoSaiTqY8ZwkOoi85uoZLZdAqS35LRLrzQWuMe7HsRiXIEV9lxY53ATct93LI4USmqtoMBsw==
X-Received: by 2002:a4a:bb94:: with SMTP id h20mr229963oop.73.1604529043410;
 Wed, 04 Nov 2020 14:30:43 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a23sm839597oot.33.2020.11.04.14.30.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 14:30:42 -0800 (PST)
Received: (nullmailer pid 43077 invoked by uid 1000);
 Wed, 04 Nov 2020 22:30:42 -0000
Date: Wed, 4 Nov 2020 16:30:42 -0600
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: phy: Add binding for Mediatek MT7621
 PCIe PHY
Message-ID: <20201104223042.GA43042@bogus>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
 <20201031122246.16497-2-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201031122246.16497-2-sergio.paracuellos@gmail.com>
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
 gregkh@linuxfoundation.org, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 31 Oct 2020 13:22:43 +0100, Sergio Paracuellos wrote:
> Add bindings to describe Mediatek MT7621 PCIe PHY.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../bindings/phy/mediatek,mt7621-pci-phy.yaml | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
