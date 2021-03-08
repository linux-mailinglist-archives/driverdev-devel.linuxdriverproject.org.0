Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE7D331A79
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 23:56:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07A9B40159;
	Mon,  8 Mar 2021 22:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2uTJM9tIAMIN; Mon,  8 Mar 2021 22:56:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71CB340149;
	Mon,  8 Mar 2021 22:56:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 913801BF976
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 22:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8032E6F5C1
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 22:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VId649-uiD1f for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 22:55:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00C426F5BD
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 22:55:56 +0000 (UTC)
Received: by mail-io1-f44.google.com with SMTP id n14so11858817iog.3
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 14:55:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6xLykOfAllLruOHyBLWMIQxo1ZRSm2qdesc+Rm3KDTo=;
 b=Wfd/7rJWLXNpbQxAE6NtsgEO/z0hQWaYxPTpnxn1ZBhWYJhXzwpZoSfI+YQCbBp+I7
 vyPNU59xF4TXGW1GQLUa9pu/Fr4I/Nf+MeWlxK6ixcQyP+dOFnp9UCSU6N4NjRte+E4K
 Y1OeFoAGUpT0m7VKuRdbNkoSnscJPafy5dZEislAP8PL4ele8xo8bAI4m2rSxAlvB6mU
 skmPWDppQxn/1cVj3SW1wh6/77WIH5n2lNV60+mQ3UtR/mWj0erDWCFZAenbTkb0UYXn
 i2oaOEc/h3FWvZ3Dn5MNscagynWk6Qg6+tBd5JojrA+874FaI6Wb5X/E5GBnRhOO6m1I
 grGg==
X-Gm-Message-State: AOAM5316/esE8ItTac5Y53gi/4iXrtdApOKmCc9dBApknp+oHv0rOm7/
 vp9PBNnVrn3FQiy2WNOb9apZKISAUg==
X-Google-Smtp-Source: ABdhPJxgeW+f58tcaUK15KRvBIwF2tFD0pHXrnxDECAuwSHZ7sTDJEkg2+tfViLQGuduC6I8RJQNEQ==
X-Received: by 2002:a05:6638:12cf:: with SMTP id
 v15mr25119345jas.77.1615244156258; 
 Mon, 08 Mar 2021 14:55:56 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id s8sm6494741ilv.76.2021.03.08.14.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 14:55:55 -0800 (PST)
Received: (nullmailer pid 3102714 invoked by uid 1000);
 Mon, 08 Mar 2021 22:55:53 -0000
Date: Mon, 8 Mar 2021 15:55:53 -0700
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v10 2/6] dt: bindings: add mt7621-sysc device tree
 binding documentation
Message-ID: <20210308225553.GA3102663@robh.at.kernel.org>
References: <20210307070426.15933-1-sergio.paracuellos@gmail.com>
 <20210307070426.15933-3-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210307070426.15933-3-sergio.paracuellos@gmail.com>
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
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 07 Mar 2021 08:04:22 +0100, Sergio Paracuellos wrote:
> Adds device tree binding documentation for clocks in the
> MT7621 SOC.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../bindings/clock/mediatek,mt7621-sysc.yaml  | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
