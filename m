Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 265791E299C
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 20:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C20ED8601B;
	Tue, 26 May 2020 18:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vSht+PWwjiD4; Tue, 26 May 2020 18:04:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B657D86E89;
	Tue, 26 May 2020 18:04:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43A4B1BF3D1
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 18:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3E178860F1
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 18:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xbEUmtsm-rfT for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 18:04:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 89CBD8601B
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 18:04:21 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id r2so12748205ioo.4
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 11:04:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ClJL8gB+/7Ulq3yj2f4VaDBjcjvT7VkWGg/z9gQ4pgg=;
 b=TYqS1hHS4zHoZNNy15L+UInrStp1w5bfvWEarfgX8EI0CbWC5XJEz0whOOWz6lBkCB
 VRUpkl86mkHS1KWtsGlOFd8G7aiQqbfqE3b46JxP4z15cjidAmOdyJcQ8maev/FpVXUY
 RsDrjEENk+tq9+vYZgg9jB5tdyowygMneG7F2J2hjk9dtevlP6FAiT51JsD2SOkhrIuA
 ifgt6rDWXGZxR3MCw9iu6zfC2/RPadpBmWNqeoztYDwihTpHTSelDgX9fJpAUjYLuOTJ
 lACWr4XTAYaNpLIaanm18dya38vSvJb03Ong8Ka7/O5xQ+xrlYGNSANuFIifCy1zzLxM
 prgg==
X-Gm-Message-State: AOAM531+w1wRLacskHa/nWtXeuV4Ze1u9XJ1C/LtwH5tL0hWKrmLGEuo
 TV51IeLRsqSWNGAmO9sEYQ==
X-Google-Smtp-Source: ABdhPJzcu2nCj6F92lx7P/df1l59GGQNg9IGF9YDymeeq6DRFL67TpPCdRsq+oEeB/mS2xXLEmpasQ==
X-Received: by 2002:a05:6602:2c8f:: with SMTP id
 i15mr11103155iow.45.1590516260900; 
 Tue, 26 May 2020 11:04:20 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id z13sm319397ilh.82.2020.05.26.11.04.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 11:04:19 -0700 (PDT)
Received: (nullmailer pid 80209 invoked by uid 1000);
 Tue, 26 May 2020 18:04:18 -0000
Date: Tue, 26 May 2020 12:04:18 -0600
From: Rob Herring <robh@kernel.org>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v11 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter DT schema
Message-ID: <20200526180418.GA80145@bogus>
References: <cover.1589511894.git.xji@analogixsemi.com>
 <393386c0a18753cb4b3f695348fe506a192ea82a.1589511894.git.xji@analogixsemi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <393386c0a18753cb4b3f695348fe506a192ea82a.1589511894.git.xji@analogixsemi.com>
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@google.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Neil Armstrong <narmstrong@baylibre.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pi-Hsun Shih <pihsun@chromium.org>, Sam Ravnborg <sam@ravnborg.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 15 May 2020 13:49:20 +0800, Xin Ji wrote:
> anx7625: MIPI to DP transmitter DT schema
> 
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  .../bindings/display/bridge/analogix,anx7625.yaml  | 95 ++++++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
