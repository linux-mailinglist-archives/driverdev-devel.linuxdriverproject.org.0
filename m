Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A02E346D35
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 23:34:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8141A40540;
	Tue, 23 Mar 2021 22:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wm4o1IOq2Fvt; Tue, 23 Mar 2021 22:34:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CC8540544;
	Tue, 23 Mar 2021 22:34:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1EFCE1BF2BE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 22:34:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 194338002A
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 22:34:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PiWqfLQ-n63X for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 22:33:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com
 [209.85.166.181])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80940847F0
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 22:33:59 +0000 (UTC)
Received: by mail-il1-f181.google.com with SMTP id z9so19649154ilb.4
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 15:33:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1WoClusEkOfDI9wl2HJjQIHrJPuS0gJSk2OCwRkvDpY=;
 b=oseVzOFkMIWLa04xCzIcI1HHnAQ1NPePy6OfI5f5ETPkMQmR6bJy5IwC5SDPDNNvL9
 QxnA45mz2od9Rko77791N0bbfZ2SmwFYSxbqrcOlFTEdg2Mb+W5mC8Kppbw5fLzn4eBR
 oGsWER7Tn2EElTD2Q37ElDoeNLOX4OijXpzqoV4eYNCzNtYzLBM4b1klyVRcCTM0TYG3
 pn5U8TrMFKHfJ2mYiZ6ArcOLS9+f4xRDg+12RHKUD27Hjp7/6zwWmCoTmbAqI4PjVmhR
 nGr05e4ObRHFHglYD3xZGTO/c2gYXbES3zgre947x0dQz+oY6gmjPzim4b4pLOQbZheM
 7yXQ==
X-Gm-Message-State: AOAM533wR4VFBTJ2Pt2tci0SxmllYSw61upcENy3+xB6GTGbelLCFEah
 jdDCnI06XVPuObVbxMZZNw==
X-Google-Smtp-Source: ABdhPJzfOBNB+j3wZfc4QmDzvSzG/k6H7Hd6eitCOGrxlYx5RIAJt5rxTKsg+9ttUF711gq1ZDa7dQ==
X-Received: by 2002:a92:d7c7:: with SMTP id g7mr309586ilq.305.1616538838716;
 Tue, 23 Mar 2021 15:33:58 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id o10sm120122ilq.22.2021.03.23.15.33.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 15:33:58 -0700 (PDT)
Received: (nullmailer pid 1468543 invoked by uid 1000);
 Tue, 23 Mar 2021 22:33:55 -0000
Date: Tue, 23 Mar 2021 16:33:55 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v6 01/13] dt-bindings: mfd: Add 'nxp, imx8mq-vpu-ctrl' to
 syscon list
Message-ID: <20210323223355.GA1468513@robh.at.kernel.org>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318082046.51546-2-benjamin.gaignard@collabora.com>
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, kernel@pengutronix.de,
 s.hauer@pengutronix.de, mripard@kernel.org, robh+dt@kernel.org,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 p.zabel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 18 Mar 2021 09:20:34 +0100, Benjamin Gaignard wrote:
> Add 'nxp,imx8mq-vpu-ctrl' in the list of possible syscon.
> It will used to access to the VPU control registers.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
