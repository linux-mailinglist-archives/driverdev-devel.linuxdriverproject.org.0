Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E343B226BE
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 13:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A56886373;
	Sun, 19 May 2019 11:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AfNNsDNarNsi; Sun, 19 May 2019 11:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4ACF486233;
	Sun, 19 May 2019 11:17:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82F361BF616
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8002821080
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2nqrBIC7+rIY for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 11:17:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 46086207A6
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 11:17:52 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1AA1F217F5;
 Sun, 19 May 2019 11:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558264672;
 bh=kk7r638p7yvAE0YxJCe0oCbhN7riRAph/7kkz1bmEeM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0LSy+rgdh4FHVrxV9GcVitq8XOzwAwQYX9mTWsESHPD/nGK/savNTYKIY20exl5Ij
 Ub6lO/d5LOPdn+uDhnNv5uoqglkfAZDJkrPGz1guXv8MSaiGvndddLB0+zIC6IxqfP
 IDF6+FiHcWjEGB9uVJQ9hGTPosy2Tdnzz8+3hCMc=
Date: Sun, 19 May 2019 12:17:47 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Tallys Martins <tallysmartins@gmail.com>
Subject: Re: [PATCH 2/2] staging: iio: ad2s1210: Add devicetree yaml doc
Message-ID: <20190519121747.0e7b5824@archlinux>
In-Reply-To: <20190518221558.21799-2-tallysmartins@gmail.com>
References: <20190518221558.21799-1-tallysmartins@gmail.com>
 <20190518221558.21799-2-tallysmartins@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>, kernel-usp@googlegroups.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-kernel@vger.kernel.or
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 18 May 2019 19:15:58 -0300
Tallys Martins <tallysmartins@gmail.com> wrote:

> The driver currently has no devicetree documentation. This commit adds a
> devicetree folder and documentation for it. Documentation must be moved
> as well when the driver gets out of staging.
> 
> Signed-off-by: Tallys Martins <tallysmartins@gmail.com>
> Signed-off-by: Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>
> Co-developed-by: Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>

Hi,

There is no need for a direct relationship between a binding and a driver
at all. As such, we normally don't take binding documents in staging.

Just put it directly in it's final destination.  The driver can catch
up with it later!

I'm still not that comfortable with yaml (haven't gotten around
to doing any conversions myself yet) so I'll be looking for additional
review on these from others.

A few comments inline.

> ---
>  .../Documentation/devicetree/ad2s1210.yaml    | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 drivers/staging/iio/Documentation/devicetree/ad2s1210.yaml
> 
> diff --git a/drivers/staging/iio/Documentation/devicetree/ad2s1210.yaml b/drivers/staging/iio/Documentation/devicetree/ad2s1210.yaml
> new file mode 100644
> index 000000000000..733aa07b4626
> --- /dev/null
> +++ b/drivers/staging/iio/Documentation/devicetree/ad2s1210.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/iio/ad2s1210.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: |
> +  Analog Devices Inc. AD2S1210 10-Bit to 16-Bit R/D Converters
> +
> +maintainers:
> +  - Graff Yang <graff.yang@gmail.com>
I would check that one with the Analog devices team.

> +
> +description: |
> +  Analog Devices AD2S1210 Resolver to Digital SPI driver
> +
> +  https://www.analog.com/en/products/ad2s1210.html
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad2s1210
> +
> +  reg:
> +    maxItems: 1
> +
> +  clock-frequency:
> +    minimum: 2000
> +    maximum: 20000
> +    default: 8192
This doesn't look like a modern clock binding.
If we are going to end up changing this, then we should probably delay
having a binding doc until after that change is made.

We often only do binding docs for drivers in staging just before moving
them out so as to avoid this sort of issue.
 
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +  resolver@0 {
> +    compatible = "adi,ad2s1210";
> +    reg = <0>;
An example is probably more useful if it includes all the optional properties
as well.
> +  };
> +...

Thanks,

Jonathan

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
