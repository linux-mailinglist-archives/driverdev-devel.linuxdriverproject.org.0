Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E68AFBD77
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Nov 2019 02:29:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA7372F0BF;
	Thu, 14 Nov 2019 01:29:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N4nhnT7JRGJ9; Thu, 14 Nov 2019 01:29:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5A64C2E8B1;
	Thu, 14 Nov 2019 01:29:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03A5B1BF599
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 01:29:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F415A8A1F2
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 01:29:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id INaOKcZ7iWPy for <devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 01:29:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 677B98A1F1
 for <devel@driverdev.osuosl.org>; Thu, 14 Nov 2019 01:29:48 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id i185so3734784oif.9
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 17:29:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MkSV4WUTTRk3P116snJnQhPSQmUlJUtpb4z80AOnhjY=;
 b=hxcIWoLRkYtQ9uEQwTZ2Lh1npANFsYojCymwuJOGDzhNX2t/nPlFatAxP57mgH6cmp
 F069vCGPbwajZA8NedUtLvA2rcA3zK+uoF2hdsTi1L8bdQXk9iP4iiZBzhP3rZwEewWA
 CJ8nfD5kRKflAQqR/JAFFmI67vSW9T25keB3XrF28F8xMDkrcE00VXPM8X8mjCqrrhTz
 q9QtGGXQoUEbVsmcz7QJDsA7RS81n5x2/9UzQ5SLd4KhOZ/sJxbEa/onUZqlnCKOSMyk
 GSnpaCcR00MeHJ59fsK8QpshP6ygCugqkE51Wr0GXdhh/PuoJ0lvKpD5a3HGdOatM3Bz
 1IxA==
X-Gm-Message-State: APjAAAVkzPK82faqgyB0bEXpAWjULzwAoDYo+lY+Mzf/kCVnxpHqHpWc
 WxU/aYKgqNAOjqFuFCDilQ==
X-Google-Smtp-Source: APXvYqwpyD4mHPpEejKvVt/xOEivlwwbnes8oqT+MRV1d6o9XUjRrr0vN32yezmvw2Qp0y5Qw2o3GA==
X-Received: by 2002:aca:b286:: with SMTP id b128mr1421594oif.1.1573694987562; 
 Wed, 13 Nov 2019 17:29:47 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j17sm1328804otk.27.2019.11.13.17.29.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 17:29:47 -0800 (PST)
Date: Wed, 13 Nov 2019 19:29:46 -0600
From: Rob Herring <robh@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v3 3/4] dt-binding: iio: Add documentation for AD7091R5
Message-ID: <20191114012946.GA18103@bogus>
References: <20191107150759.5937-1-beniamin.bia@analog.com>
 <20191107150759.5937-3-beniamin.bia@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107150759.5937-3-beniamin.bia@analog.com>
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
 pmeerw@pmeerw.net, mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 Beniamin Bia <beniamin.bia@analog.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 7 Nov 2019 17:07:58 +0200, Beniamin Bia wrote:
> Documentation for AD7091R5 ADC was added.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
> ---
> Changes in v3:
> -spdx identifier updated
> -compatible property with lower case
> -additionalProperties added
> -hex value with lower case
> 
>  .../bindings/iio/adc/adi,ad7091r5.yaml        | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7091r5.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
