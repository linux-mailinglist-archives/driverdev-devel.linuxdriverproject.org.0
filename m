Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6772DB210
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 18:02:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D1C8A8727E;
	Tue, 15 Dec 2020 17:02:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d3o3cKP52ptr; Tue, 15 Dec 2020 17:02:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0217A87165;
	Tue, 15 Dec 2020 17:02:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D70661BF947
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 17:02:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D382286D5B
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 17:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 80DzwpBTilui for <devel@linuxdriverproject.org>;
 Tue, 15 Dec 2020 17:02:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 392A586D4D
 for <devel@driverdev.osuosl.org>; Tue, 15 Dec 2020 17:02:38 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id j12so20040399ota.7
 for <devel@driverdev.osuosl.org>; Tue, 15 Dec 2020 09:02:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Bt+H5jotseL1AMdWInj5OVTGOVxIaxj288Kg6674s+0=;
 b=cecmbwJjCEARrjzAhdqwvKi1fA5tk4LcHjB+6ws+0+Yq7GWJNycsjRhq+tOMD9DYS7
 hTQo6GhzqwvOpHaYbgdqovJwX1EMSEmvITbQH1fB1SXTCaV8rZAAe62zAXpAimGR50mX
 aibwm1Dr3g7QR8wbJzFF8QHPnQOqdjcRWGTD1twp/PdMABzhi6pg4c0rAHG7ST94uEcX
 1ITVIiImD/ozhEXj7004RIqLJqBHdT25R0MoOFbAmPLDkwCzusabhbc1chbvliI548Vc
 DPXMPzqyi2ipsWjC6xL7HqUD11RPyFowy2ax3oz0ViJ2r9gxq0SQLFtnCA+c74jW2CaO
 l2Pg==
X-Gm-Message-State: AOAM533sRtlRH2l/q8P7RvRHGIcrPwWjR9Y1zjUJMEki31VgKIJbQSsj
 owC36j8+XO2b2hyvWKEjuw==
X-Google-Smtp-Source: ABdhPJyxCd7bd9Gq18Mbbvm1/TAg7/UUpYW0JRnqRHkfgcbPovkbKGBBqx/OLXC/5bbU0V+ADwhFtg==
X-Received: by 2002:a05:6830:1bc6:: with SMTP id
 v6mr23482893ota.33.1608051756044; 
 Tue, 15 Dec 2020 09:02:36 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m47sm4712650ooi.12.2020.12.15.09.02.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Dec 2020 09:02:35 -0800 (PST)
Received: (nullmailer pid 4027620 invoked by uid 1000);
 Tue, 15 Dec 2020 17:02:34 -0000
Date: Tue, 15 Dec 2020 11:02:34 -0600
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: pinctrl: rt2880: properly redo bindings
Message-ID: <20201215170234.GA4027561@robh.at.kernel.org>
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
 <20201213161721.6514-2-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201213161721.6514-2-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 13 Dec 2020 17:17:14 +0100, Sergio Paracuellos wrote:
> When this bindings where applied there weren't already
> reviewed and some old hacks was being used to properly
> pass the schemas checks. This commits fix them up:
>  - Instead of using 'if-then' clause use '-pins$'.
>  - 'groups' and 'function' are included inside a new
>    '^(.*-)?pinmux$' node.
>  - compatible string is not an 'enum' but a 'const'.
>  - 'pinctrl-0' and 'pinctrl-names' removed since they are
>     used in consumer nodes.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../pinctrl/ralink,rt2880-pinmux.yaml         | 62 +++++++++----------
>  1 file changed, 28 insertions(+), 34 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
