Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C142D32D4
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 20:54:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F3D07275C6;
	Tue,  8 Dec 2020 19:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wikxkBINRoOW; Tue,  8 Dec 2020 19:54:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7EF9C2049C;
	Tue,  8 Dec 2020 19:54:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B3541BF475
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 19:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 76D4087764
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 19:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bwK36zZOAlrL for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 19:54:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF898875C3
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 19:54:36 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id b62so16947104otc.5
 for <devel@driverdev.osuosl.org>; Tue, 08 Dec 2020 11:54:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QxevaX9hHJqThS0h+1tu93etIkBHDGFZ0rujAfMqWBU=;
 b=WaOR93fLt4m7xQlV5qgWHYv2GRc08pIbWF6n5T7BP8Q8T58h1xTBqJJLnvoLkb2hre
 c/c7Fa4j94vMtXPWmZyhvV+mkxYvoXR97jumL3sIc8DpJ6zRkqVwLMOLVwU3NlmaQW32
 3nxQ2gk66BwX2NUQKjjPI7tc6bAoc9UhPKzC8WGz8OMeVK1yqJd6py0Fh7ciGwOLEyfV
 bCyNHUqeajYsyEdPoFXDywzrjg/kCsYegiYw3Mt9JQWRZpWhwM57xrKvOPcFOIWgN/wO
 YiolB8PlqwJr3ekx/xNrtYysC55IkmmLm7GD0M+ytCF6dYqMiw+vGBUJJZdAU4eo40Zt
 907Q==
X-Gm-Message-State: AOAM5336b8niKZRl/SAmKqcjM2bzhKQEIRkTauRtt7d627oamNWsF/t8
 +88i9SRbw7UIb3ek1sGJwg==
X-Google-Smtp-Source: ABdhPJzCUquUPkk4QcEOY3Zw0x6ce2Fw4YZ0IvyhJ84rgBYmuVMaX6uzvrqVOqNJYEjlVUOHQDs46g==
X-Received: by 2002:a05:6830:1d8c:: with SMTP id
 y12mr17836523oti.34.1607457275947; 
 Tue, 08 Dec 2020 11:54:35 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n3sm3887074oif.42.2020.12.08.11.54.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 11:54:34 -0800 (PST)
Received: (nullmailer pid 2975909 invoked by uid 1000);
 Tue, 08 Dec 2020 19:54:32 -0000
Date: Tue, 8 Dec 2020 13:54:32 -0600
From: Rob Herring <robh@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 06/19] dt-bindings: media: sun6i-a31-csi: Add MIPI
 CSI-2 input port
Message-ID: <20201208195432.GA2973474@robh.at.kernel.org>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-7-paul.kocialkowski@bootlin.com>
 <20201201104321.rl3ujt5pjre6xlmm@gilmour>
 <X8ehzCjZJ3yC8YtJ@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X8ehzCjZJ3yC8YtJ@aptenodytes>
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
 Helen Koike <helen.koike@collabora.com>, Maxime Ripard <maxime@cerno.tech>,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 02, 2020 at 03:16:44PM +0100, Paul Kocialkowski wrote:
> Hi,
> 
> On Tue 01 Dec 20, 11:43, Maxime Ripard wrote:
> > On Sat, Nov 28, 2020 at 03:28:26PM +0100, Paul Kocialkowski wrote:
> > > The A31 CSI controller supports two distinct input interfaces:
> > > parallel and an external MIPI CSI-2 bridge. The parallel interface
> > > is often connected to a set of hardware pins while the MIPI CSI-2
> > > bridge is an internal FIFO-ish link. As a result, these two inputs
> > > are distinguished as two different ports.
> > > 
> > > Note that only one of the two may be present on a controller instance.
> > > For example, the V3s has one controller dedicated to MIPI-CSI2 and one
> > > dedicated to parallel.
> > > 
> > > Update the binding with an explicit ports node that holds two distinct
> > > port nodes: one for parallel input and one for MIPI CSI-2.
> > > 
> > > This is backward-compatible with the single-port approach that was
> > > previously taken for representing the parallel interface port, which
> > > stays enumerated as fwnode port 0. However, it is now marked as
> > > deprecated and the multi-port approach should be preferred.
> > > 
> > > Note that additional ports may be added in the future, especially to
> > > support feeding the CSI controller's output to the ISP.
> > > 
> > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > ---
> > >  .../media/allwinner,sun6i-a31-csi.yaml        | 86 ++++++++++++++++---
> > >  1 file changed, 73 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> > > index 1fd9b5532a21..3bcee2d44f3c 100644
> > > --- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> > > @@ -43,6 +43,7 @@ properties:
> > >    # See ./video-interfaces.txt for details
> > >    port:
> > >      type: object
> > > +    deprecated: true
> > 
> > I'm not sure we want to deprecate it. There's some SoCs with the same
> > controller but without the MIPI-CSI block where this would be completely
> > valid
> 
> I think we'll need to deprecate it when adding support for the ISP anyway,
> so I figured we might as well do it now. But I'm okay to postpone this for now.
> 
> > >      properties:
> > >        endpoint:
> > > @@ -67,6 +68,59 @@ properties:
> > >  
> > >      additionalProperties: false
> > >  
> > > +  ports:
> > > +    type: object
> > > +
> > > +    properties:
> > > +      port@0:
> > > +        type: object
> > > +        description: Parallel input port, connect to a parallel sensor
> > > +
> > > +        properties:
> > > +          reg:
> > > +            const: 0
> > > +
> > > +          endpoint:
> > > +            type: object
> > > +
> > > +            properties:
> > > +              remote-endpoint: true
> > > +
> > > +              bus-width:
> > > +                enum: [ 8, 10, 12, 16 ]
> > > +
> > > +              pclk-sample: true
> > > +              hsync-active: true
> > > +              vsync-active: true
> > > +
> > > +            required:
> > > +              - bus-width
> > > +              - remote-endpoint
> > > +
> > > +        required:
> > > +          - endpoint
> > > +
> > > +        additionalProperties: false
> > > +
> > > +      port@1:
> > > +        type: object
> > > +        description: MIPI CSI-2 bridge input port
> > > +
> > > +        properties:
> > > +          reg:
> > > +            const: 1
> > > +
> > > +          endpoint:
> > > +            type: object
> > > +
> > > +            properties:
> > > +              remote-endpoint: true
> > > +
> > > +            required:
> > > +              - remote-endpoint
> > > +
> > > +        additionalProperties: false
> > 
> > There's a schema for the OF-graph now, you'll want to use it.
> 
> I didn't know that, thanks for the tip! Will look into it.

There's about to be. Don't use what's in graph.yaml (in dt-schema) yet.

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
