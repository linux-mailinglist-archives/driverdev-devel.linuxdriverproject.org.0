Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CBC1EEDB2
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jun 2020 00:24:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 62BFB25304;
	Thu,  4 Jun 2020 22:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uix7SsDvfYcL; Thu,  4 Jun 2020 22:24:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4977E250F6;
	Thu,  4 Jun 2020 22:24:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9701A1BF37C
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 22:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 93F5B87270
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 22:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1TL5heRyYdZ5 for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 22:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 319228723E
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 22:24:06 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id 9so7637240ilg.12
 for <devel@driverdev.osuosl.org>; Thu, 04 Jun 2020 15:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9twZbcOiLW0yLQJYmRVs4qavY+XNMKpL9WdtifUyAH0=;
 b=PezOy+ihbfRwZGHWWyuC963sihtqXpKnsZedw5qQ1bmxhF/XHf4eTSxlb47/urJedb
 QxhAtJim9ObNy1kk8RaKdkSezNWfvc72ShRfCF/9ZYAHevDqUGiEyc/x+0HZFvXVpDah
 HqvC2DtnkM9oHyi8vo/XmTExf/JpgD2zzy+v5TqsmKUzOHP5KXb6jQyZPAfK8QykM0yP
 Dby7hn/culaasijDcKdEyCirQH9V+QIMkB+05EyDCET9Sa19dE4aQUgLQoza+DmW+NYg
 n+vuogHtImv2t8tXoaxV8C1YukIUqd13x0NRABk4YI62Iq5iAWi2J/SNhCEXQk9RIcTB
 9jAQ==
X-Gm-Message-State: AOAM5303ajDrVFlY64o/HeDHT/qwc+1YfAnlK91h4HErdfAxFH1q0Mdw
 ti6J952UoFmLo09lA4kTBw==
X-Google-Smtp-Source: ABdhPJw4Iafe1pMJfz84rEJOIVETUZQAgI9tRhEJzB4YXRVgrQvOWSYePNiqSlZkykkFuA1ew6Sl1w==
X-Received: by 2002:a92:b001:: with SMTP id x1mr5480753ilh.18.1591309445557;
 Thu, 04 Jun 2020 15:24:05 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id p5sm2004317ilg.88.2020.06.04.15.24.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 15:24:04 -0700 (PDT)
Received: (nullmailer pid 4153174 invoked by uid 1000);
 Thu, 04 Jun 2020 22:24:02 -0000
Date: Thu, 4 Jun 2020 16:24:02 -0600
From: Rob Herring <robh@kernel.org>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v12 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter DT schema
Message-ID: <20200604222402.GA4153046@bogus>
References: <cover.1591253353.git.xji@analogixsemi.com>
 <eb82c52574bf41b5edad488e14c27cabad39b922.1591253353.git.xji@analogixsemi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb82c52574bf41b5edad488e14c27cabad39b922.1591253353.git.xji@analogixsemi.com>
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
 Nicolas Boichat <drinkcat@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pi-Hsun Shih <pihsun@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Nicolas Boichat <drinkcat@google.com>, Sam Ravnborg <sam@ravnborg.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 04 Jun 2020 15:56:36 +0800, Xin Ji wrote:
> anx7625: MIPI to DP transmitter DT schema
> 
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  .../bindings/display/bridge/analogix,anx7625.yaml  | 95 ++++++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
