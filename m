Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B412E4683B
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 21:43:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6067386A84;
	Fri, 14 Jun 2019 19:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BxXmmwnubnrM; Fri, 14 Jun 2019 19:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2AF29869DE;
	Fri, 14 Jun 2019 19:43:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F3551BF33C
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 19:43:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 884BC869F7
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 19:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cYubPfQv0IEn for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 19:43:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 014CA869DE
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 19:43:04 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id p144so2419930qke.11
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 12:43:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Mp8xTO5oNN7LboeBKHyfl41RYppmWJR4foCIg2c5W1s=;
 b=Qt3CZ3oaJTh9aXlnCQxH1bT4jCkc0jySYlk6Y1hfizCyl/rONfs3h/PDQiRuGSyVhm
 flI0YoonOM1TXJUi7Ob+EGhLJBX/QcZ5spRyZ8bfcoRTuQu2eXoqBr6X1VMiUufdpf0U
 34blT4dUzj/ap/osw1LCUxDpvdTttn39p37z+V5+hw0GUG/FNlGkU0dx/ou9rIJarTHH
 go1ViNBKtf5qCH2ob1oSWn2B/ttL0mVU568Zhpz26B+eAGiczxidYTnZSHYZ1cVHnzFr
 rJbRnMtjsUlCMblZVwOQkIb5j1ESAqiKt6qP7JAX1VpQrceQVpmJbjisWgfr2iQ1kQj6
 0IXA==
X-Gm-Message-State: APjAAAVlgRy99wNTbkDWtfa0oXvUW0dUT8ZGLXLAd7IErtMRUQ5uqANC
 AiI4lBWBxMm6cS7GW9JQtw==
X-Google-Smtp-Source: APXvYqz0aEx4FDJ3gg/LvUzydLqr7NaukJPecyN5OsnEwsUCU0LY+1pAYvSd5Ebr1tqcYxuiJF4DxA==
X-Received: by 2002:ae9:c106:: with SMTP id z6mr57253623qki.285.1560541383979; 
 Fri, 14 Jun 2019 12:43:03 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id j141sm2430766qke.28.2019.06.14.12.43.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 12:43:03 -0700 (PDT)
Date: Fri, 14 Jun 2019 13:43:02 -0600
From: Rob Herring <robh@kernel.org>
To: Renato Lui Geh <renatogeh@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: add adi, ad7780.yaml binding
Message-ID: <20190614194302.GA18613@bogus>
References: <cover.1558746978.git.renatogeh@gmail.com>
 <2426649b2d8224ae72e7706bcb8c4f2c44c581d2.1558746978.git.renatogeh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2426649b2d8224ae72e7706bcb8c4f2c44c581d2.1558746978.git.renatogeh@gmail.com>
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
Cc: mark.rutland@arm.com, devel@driverdev.osuosl.org, lars@metafoo.de,
 stefan.popa@analog.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, alexandru.Ardelean@analog.com, jic23@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 24 May 2019 22:26:30 -0300, Renato Lui Geh wrote:
> This patch adds a YAML binding for the Analog Devices AD7780/1 and
> AD7170/1 analog-to-digital converters.
> 
> Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>
> ---
> Changes in v2:
>  - vref-supply to avdd-supply
>  - remove avdd-supply from required list
>  - include adc block in an spi block
> 
>  .../bindings/iio/adc/adi,ad7780.txt           | 48 ----------
>  .../bindings/iio/adc/adi,ad7780.yaml          | 87 +++++++++++++++++++
>  2 files changed, 87 insertions(+), 48 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
