Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06142313152
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 12:49:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E33B820767;
	Mon,  8 Feb 2021 11:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xpl9XyR+pEu4; Mon,  8 Feb 2021 11:49:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D77642052F;
	Mon,  8 Feb 2021 11:49:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D96AB1BF3C8
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 11:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D5E028702B
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 11:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZvQZrnqtFXLZ for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 11:49:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E0A3286FFA
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 11:49:18 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id g10so16740002wrx.1
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 03:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3mciRa7cMGw+89JwLiOf5wQ63ZdZhqloXYBNXacQTd0=;
 b=ele/Op1LikFpIE/w29roSL53XhNUf3kIRgIdQqW3tbl5jFLqFst1m6oGfeYiQxY2NY
 6dsfmulUO9gmkugKj6fvubsZ2RkcVTO7wGDlSmhapc/GnJCnOhCapfcP1bMCg0Yd5aQo
 XXg2fZDHb771UA2ycvKcWlFciLR7UwaGFzODJiDA/cJUfUyUefzWdcC1/imhuLhErq48
 WG3WbYo3AvbnQL3WOLRU3VpYGRtDxXHD1UlH7/fuCQlKa97uKLx9BUiozUh/W7PvLXyJ
 67ZzS/+LpBN/axZHXRZ45tROjM0OP7Wp+rpjWVXHW+ArGiNdVoYcT1MKaN2cGHjlQZJ+
 C4UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3mciRa7cMGw+89JwLiOf5wQ63ZdZhqloXYBNXacQTd0=;
 b=YB1YEK8JjtcjDzCs+s/l8RpLuzswT33bJvC0/652Oo0gfOdCcylOSRSZzHqr2HrzJA
 +wWvATeQU5dolvZS/iIcAVv7x1YUKICBMDXxC3Qyf38eyijwxVABvkoPGXKb/U0xlOpD
 bAyuZ+BjrFB+Tak1nMU+hYEe1NAxRXdGQ+X1XL2rAeZggvGuliSjfBELTpjGDkEGnDZq
 ifTU5xq5VSJP+YKcpamTtQyvekx8QldT/kICSYTjtFGTKoFA3ex/GtlFOLN9IaDpd6zq
 8ZX+p8fJxuvugTA+wFx+/CzEtvr5vTpHKV4BF0m8s0REkX/3WcSghYfXxfGB/a4IxtxH
 jOCw==
X-Gm-Message-State: AOAM532+11Lztqhi7zt2CyXalv17JtP1cdYNnrd4AoqqUzljVIkzl4O6
 xs4mznkkH+jh3YCMpvqCWUqKSA==
X-Google-Smtp-Source: ABdhPJxwtYMJ43K6RSTiqi5dsGPmexEEWZSFirxDQkCQbvlx5dufhtRQG6MbTfDCgtvW5SGHuvST2w==
X-Received: by 2002:a5d:67cd:: with SMTP id n13mr6413679wrw.96.1612784957392; 
 Mon, 08 Feb 2021 03:49:17 -0800 (PST)
Received: from kernelvm
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id z8sm27563113wrh.83.2021.02.08.03.49.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 03:49:16 -0800 (PST)
Date: Mon, 8 Feb 2021 11:49:14 +0000
From: Phillip Potter <phil@philpotter.co.uk>
To: Alexander Sverdlin <alexander.sverdlin@nokia.com>
Subject: Re: [PATCH] staging: octeon: remove braces from single-line block
Message-ID: <20210208114914.GA115411@kernelvm>
References: <20210206201701.5273-1-phil@philpotter.co.uk>
 <51bab7d2-2f37-b4de-71b5-47cfe8857f02@nokia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51bab7d2-2f37-b4de-71b5-47cfe8857f02@nokia.com>
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 chris.packham@alliedtelesis.co.nz, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 08, 2021 at 08:14:02AM +0100, Alexander Sverdlin wrote:
> Hi!
> 
> On 06/02/2021 21:17, Phillip Potter wrote:
> > This removes the braces from the if statement that checks the
> > physical node return value in cvm_oct_phy_setup_device, as this
> > block contains only one statement. Fixes a style warning.
> > 
> > Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
> 
> Reviewed-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> 

Thank you Alexander.

> > ---
> >  drivers/staging/octeon/ethernet-mdio.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
> > index 0bf545849b11..b0fd083a5bf2 100644
> > --- a/drivers/staging/octeon/ethernet-mdio.c
> > +++ b/drivers/staging/octeon/ethernet-mdio.c
> > @@ -146,9 +146,8 @@ int cvm_oct_phy_setup_device(struct net_device *dev)
> >  		goto no_phy;
> >  
> >  	phy_node = of_parse_phandle(priv->of_node, "phy-handle", 0);
> > -	if (!phy_node && of_phy_is_fixed_link(priv->of_node)) {
> > +	if (!phy_node && of_phy_is_fixed_link(priv->of_node))
> >  		phy_node = of_node_get(priv->of_node);
> > -	}
> >  	if (!phy_node)
> >  		goto no_phy;
> >  
> 
> -- 
> Best regards,
> Alexander Sverdlin.

Regards,
Phil Potter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
