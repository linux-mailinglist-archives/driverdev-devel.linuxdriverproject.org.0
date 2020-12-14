Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 239452DA3F9
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 00:14:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C0F786CDA;
	Mon, 14 Dec 2020 23:14:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xeG+IzIew33R; Mon, 14 Dec 2020 23:14:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39EB686BBB;
	Mon, 14 Dec 2020 23:14:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7ACA31BF381
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 23:14:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 773B186F76
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 23:14:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j55sTlSTqN7n for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 23:14:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D7FDF86361
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 23:14:29 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id 9so14055473oiq.3
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 15:14:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iTh9N+rYwCFON7UymOJ+NHCNudvypqo4gsPCV8m5fAQ=;
 b=LKRhLlEV20NsUj8G7qfXABeKHmA6J7PYv99G4FR+Tbea26tZxY4otsGRURKIh3kb3c
 mUmmwlq+HBNMHe/xsPlvAT9LocJB6cJnt7RfAHp6u8WsAZevS7QGhtUrEZYAt8VdUif7
 NSuMacO46gAvhEC4gv3pYRdqvT2VsYnDdx1xS0e6EOWPqNhzPa4ZnmbmeN1KGxh38NmN
 zjM+GJL6vE5sNN1ZiltNiNc3bvoce4+afDx5+/OgVR62heBby42a/EFXMVPykJp0ztdZ
 JqDOe9PbsypufqDPQCzbkVmltXWK29GuSYUSZMppEFeW0PPbD/AVm3YejPZ/Xv81V8FI
 ER5Q==
X-Gm-Message-State: AOAM532ivA/lEKFpNKGb6qArpWXsT72+2TYHkBzZTiCtMarm356X6k9F
 +ovc/+i/Lc4UWrwCFFw9wg==
X-Google-Smtp-Source: ABdhPJw1/PEgIntKwP3Lbk8KAqgDfV7JdP6WU47iGZx+gZR0xq+HV8tbXHiKJO2xLiTHpwxo3QYgSw==
X-Received: by 2002:a05:6808:2c4:: with SMTP id
 a4mr20405604oid.114.1607987669080; 
 Mon, 14 Dec 2020 15:14:29 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u141sm4569388oie.46.2020.12.14.15.14.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Dec 2020 15:14:28 -0800 (PST)
Received: (nullmailer pid 2560486 invoked by uid 1000);
 Mon, 14 Dec 2020 23:14:26 -0000
Date: Mon, 14 Dec 2020 17:14:26 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v3 08/15] dt-bindings: media: Add A31 MIPI CSI-2 bindings
 documentation
Message-ID: <20201214231426.GB2555279@robh.at.kernel.org>
References: <20201211155708.154710-1-paul.kocialkowski@bootlin.com>
 <20201211155708.154710-9-paul.kocialkowski@bootlin.com>
 <20201214113509.gkzf42rtag5b4mcn@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201214113509.gkzf42rtag5b4mcn@gilmour>
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-doc@vger.kernel.org, linux-sunxi@googlegroups.com,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, kevin.lhopital@hotmail.com,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Helen Koike <helen.koike@collabora.com>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 14, 2020 at 12:35:09PM +0100, Maxime Ripard wrote:
> On Fri, Dec 11, 2020 at 04:57:01PM +0100, Paul Kocialkowski wrote:
> > This introduces YAML bindings documentation for the A31 MIPI CSI-2
> > controller.
> > 
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 149 ++++++++++++++++++
> >  1 file changed, 149 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
> > new file mode 100644
> > index 000000000000..4d0bab541da1
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
> > @@ -0,0 +1,149 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-mipi-csi2.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A31 MIPI CSI-2 Device Tree Bindings
> > +
> > +maintainers:
> > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - const: allwinner,sun6i-a31-mipi-csi2
> > +      - items:
> > +          - const: allwinner,sun8i-v3s-mipi-csi2
> > +          - const: allwinner,sun6i-a31-mipi-csi2
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Bus Clock
> > +      - description: Module Clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +
> > +  phys:
> > +    items:
> > +      - description: MIPI D-PHY
> 
> This should be written as
> 
> phys:
>   description: ...

Then you need 'maxItems: 1' or just that. I guess there is some value in 
saying it is a D-PHY.

Rob

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
