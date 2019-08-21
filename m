Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD6998591
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 22:25:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2C3F86FFF;
	Wed, 21 Aug 2019 20:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KCmWtj9Uyimx; Wed, 21 Aug 2019 20:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA2D286E5A;
	Wed, 21 Aug 2019 20:25:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C60DA1BF405
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 20:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC2E92049A
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 20:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01Wz3hQOo5-M for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 20:25:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 36B1B203D1
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 20:25:21 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id z17so3277968otk.13
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 13:25:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iJg47cQbCHnK8ufMuIHABp/qu3hQILpmFLj0ngT5bIQ=;
 b=suarf4AaxLVA6fnnQBGS5jbzudJXvt2aYc3PudXLvemGUJ/C90uPDO/XYvGG8A8k5Q
 eIpeQJ4gVPPGDhircXwq6Cbg24MSWPTu/FFlnNPIm5GQPBROBcMDmjUcn/If8c9AZd9H
 hM5tgb02MEqqlr1il2Mx53DLajFDl7NcX5kbgQfekye2OcB6CnUHDRwMenUyUPyEE5Fp
 hfDCV9wSetr0k0dwcoaq64w6Nx/ZTj/l4xfGMlYuR21iJ6WHlinyp+XnLNGO607u4FjY
 0SBuXFGdL50jwYn7RIKdLzWadDvjuT2oNTMHTBrUKL3Vg0m+GFJADrz9norvLuCoMS7H
 t4kw==
X-Gm-Message-State: APjAAAUea3onYzH/bzO8Juasx8/hgCtHal6B5YcuTyT6uJR5jQsNceq2
 p6OJmcOpmiVvKkzMiJXIGA==
X-Google-Smtp-Source: APXvYqwSwDIjlEYrjfOBpsOH2FMZcHzCO/vFpoXUufv4hyoncemTSLkRaVUBNRzsMdWOmbzBbC0Cmw==
X-Received: by 2002:a9d:1cf:: with SMTP id e73mr26436891ote.38.1566419120376; 
 Wed, 21 Aug 2019 13:25:20 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a66sm7133353oii.15.2019.08.21.13.25.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 13:25:19 -0700 (PDT)
Date: Wed, 21 Aug 2019 15:25:19 -0500
From: Rob Herring <robh@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: iio: adc: Add AD7606B ADC
 documentation
Message-ID: <20190821202519.GA28686@bogus>
References: <20190807133137.11185-1-beniamin.bia@analog.com>
 <20190807133137.11185-4-beniamin.bia@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807133137.11185-4-beniamin.bia@analog.com>
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, mchehab+samsung@kernel.org,
 paulmck@linux.ibm.com, Beniamin Bia <beniamin.bia@analog.com>,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 7 Aug 2019 16:31:37 +0300, Beniamin Bia wrote:
> Documentation for AD7606B Analog to Digital Converter and software
> mode was added.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
> ---
> Changes in v2:
> -nothing changed
> 
>  Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
