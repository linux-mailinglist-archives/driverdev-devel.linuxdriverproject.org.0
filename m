Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5351C1F4F
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 May 2020 23:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D80E88561;
	Fri,  1 May 2020 21:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zWc4BaQ2n77c; Fri,  1 May 2020 21:11:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28BA488556;
	Fri,  1 May 2020 21:11:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0214E1BF59D
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 21:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E7ADF253F8
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 21:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V+z4q8l1z+MS for <devel@linuxdriverproject.org>;
 Fri,  1 May 2020 21:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 1CEA02078B
 for <devel@driverdev.osuosl.org>; Fri,  1 May 2020 21:11:53 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id i27so3615940ota.7
 for <devel@driverdev.osuosl.org>; Fri, 01 May 2020 14:11:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xqacNoPDzEhoIlaSFiZ7M/nYt8g4Eq6ioZ6f5ZQzoGk=;
 b=eN91sj2Drn1p2WDW9knP69DoGs3eUpq59zJl+n1VeU8lO4A1acipu+RdRYbJUa01P9
 0C3ryrAuXGbJBNWF1Eecn+IiVB9JhD/wXyw+t13L9a6HFc0UdVzKLwtRs9asx+MFAYlD
 dW655aGt6f4epeKYNPnDTWhBsElDcuR+dXOwcgqj9ZUYENi9MwWc7jcUwDsEZhP8h//3
 y/p6Cf6lSjI9HbEImYKfYesjoGWdVktNZhg5sXhWnpV66muGL42eyBvLv8UQL4L4ZkOG
 K5pxwwrrMsFq+CJnckr6p2P2NkN7cTPOSSR2xeu+OtoWhkIYysG8ZWJpYPcP+IQA4+r1
 IFwA==
X-Gm-Message-State: AGi0PuZh1yTU9jdVo8Q2bZQwvKt8c1b2yDBubzequ19erPCmljFyGEHN
 bbRV+rzLiePKFYwlWKzblw==
X-Google-Smtp-Source: APiQypJPe8AZoHgqxvdb7h4mgNCU3orWjlvJ4UdLPdx21xltnwFsvEVM5yqH47FVpb1SJsX2/IROAg==
X-Received: by 2002:a05:6830:2090:: with SMTP id
 y16mr5315996otq.131.1588367512101; 
 Fri, 01 May 2020 14:11:52 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v8sm1151555oos.0.2020.05.01.14.11.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 14:11:51 -0700 (PDT)
Received: (nullmailer pid 2201 invoked by uid 1000);
 Fri, 01 May 2020 21:11:50 -0000
Date: Fri, 1 May 2020 16:11:50 -0500
From: Rob Herring <robh@kernel.org>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Message-ID: <20200501211150.GA537@bogus>
References: <cover.1588236052.git.xji@analogixsemi.com>
 <a5d43ffb0250468050be5b9271567fadd0fe4e1c.1588236052.git.xji@analogixsemi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5d43ffb0250468050be5b9271567fadd0fe4e1c.1588236052.git.xji@analogixsemi.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Nicolas Boichat <drinkcat@chromium.org>, Pi-Hsun Shih <pihsun@chromium.org>,
 Nicolas Boichat <drinkcat@google.com>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 30 Apr 2020 17:34:11 +0800, Xin Ji wrote:
> The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> for portable device. It converts MIPI to DisplayPort 1.3 4K.
> 
> You can add support to your board with binding.
> 
> Example:
> 	anx7625_bridge: encoder@58 {
> 		compatible = "analogix,anx7625";
> 		reg = <0x58>;
> 		status = "okay";
> 		enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
> 		reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> 		#address-cells = <1>;
> 		#size-cells = <0>;
> 
> 		ports {
> 			#address-cells = <1>;
> 			#size-cells = <0>;
> 
> 			mipi2dp_bridge_in: port@0 {
> 				reg = <0>;
> 				anx7625_in: endpoint {
> 					remote-endpoint = <&mipi_dsi>;
> 				};
> 			};
> 
> 			mipi2dp_bridge_out: port@1 {
> 				reg = <1>;
> 				anx7625_out: endpoint {
> 					remote-endpoint = <&panel_in>;
> 				};
> 			};
> 		};
> 	};
> 
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  .../bindings/display/bridge/analogix,anx7625.yaml  | 97 ++++++++++++++++++++++
>  1 file changed, 97 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/bridge/analogix,anx7625.example.dts:21.13-26: Warning (reg_format): /example-0/encoder@58:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/display/bridge/analogix,anx7625.example.dt.yaml: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/display/bridge/analogix,anx7625.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/display/bridge/analogix,anx7625.example.dt.yaml: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/display/bridge/analogix,anx7625.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/display/bridge/analogix,anx7625.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'

See https://patchwork.ozlabs.org/patch/1280084

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
