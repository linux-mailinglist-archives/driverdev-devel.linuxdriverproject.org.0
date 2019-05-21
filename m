Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 955F225491
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 17:53:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7E2FE227AD;
	Tue, 21 May 2019 15:53:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pSAEzHuCalbp; Tue, 21 May 2019 15:53:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A98EF23B31;
	Tue, 21 May 2019 15:53:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A468F1BF4DA
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9FBAD86D2D
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lufuh5SCLKQi for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 15:53:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3899586CB6
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 15:53:27 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id f4so13193786oib.4
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 08:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uiy2m9z99ipbVeeWFB4EOcFq0uh6YoqdjiXnnlz32AE=;
 b=dGc5ZZV9m0gIO9qApqTZsdg/BMohXW3nXpoRoTFn41fsv8zZ+0GfLrCTMUyd90zhcy
 lpANNPkydRSz/k48z+g/y8wHvFOp8rVV84sk3R3NrK6vkgpoEK51w+pxYnUkZYfZfXXV
 LZ1q36BZf9Q4zpGVMNzZE54z1iYMc7COZwGs1Ve4IvzJTAN+9IZjKFg3+SRH3D/SBavL
 ROGtiVdI5VTA7Xp1zWBkp7buRnHrzBR+VBjRuX2eoOhTP2NPeLyxeOLkVcY5N31b71KG
 KtW3soYtqm32k3xLY2S2EP6E3gCILfwUhAAonXdqwaxKCclfBrjovtaQpkCq5XLLq7AZ
 0rfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uiy2m9z99ipbVeeWFB4EOcFq0uh6YoqdjiXnnlz32AE=;
 b=ND2AXDkEkTqVEah9jaz7xBR67umGEH8uxCvosohEaw38zmM6BiddVGEjpNjW0iY3v2
 qc+cDxWk5NGxF1nGo5tN+ZxjPdKBRoJpYpGrQ2QrcRKAu0j4Bw9pt5r2OpaXC0sni36k
 j6Fyt1Vxvkil0VelHSs4iqm2KJDt88SwgTWiKA+7/6lT4WCXIWakb7QmuVxC8eMCC94Y
 yrmybi4tZij2kS01zSzRYImZdR2mSETCuoEWwk+6DSJIZSZbdsJQh9J2hUlMiaz0KQ9G
 wo/t/ldPVHRrTw4Y+QqC/oLN7MEtPVAasaTwH+5KM7iumuNzKMckzH1VEWo3FkVrli8y
 d88Q==
X-Gm-Message-State: APjAAAWSYatQP5iraoRz4dWTTVQJ4inUVRmZ4L+hsvxyq04qlcdohZ8r
 VhGi8pLBaTaFWxLfTUIJVlyUtqb3uD9Zs3cSUw4=
X-Google-Smtp-Source: APXvYqzzcqppAL/kopI3FM+VWAkNyBbUx3pEfH8WRHrx7NOG5uRvquGWrBk9Tt1uboZQhqYDmmGR3RE0ch5xE3wAcxc=
X-Received: by 2002:aca:580b:: with SMTP id m11mr1401504oib.169.1558454006316; 
 Tue, 21 May 2019 08:53:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190521145116.24378-1-TheSven73@gmail.com>
 <20190521151059.GM31203@kadam>
 <CAGngYiXLN-oT_b9d1kRyBrrFMALhKO-KnuwXB0MjVq0NFc01Xw@mail.gmail.com>
 <20190521154241.GB15818@kroah.com>
In-Reply-To: <20190521154241.GB15818@kroah.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 21 May 2019 11:53:15 -0400
Message-ID: <CAGngYiU_iK5=swD_DA5PcOeYFT0zTrdQ+30Db0YrahuEukEP_A@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: force address space conversion
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 11:42 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> Ick, if you are using __force, almost always something is wrong.
>

What if I create a separate structure for the regmap context ?

struct anybus_regmap_context {
        void __iomem *base;
};

Then just store the base pointer inside the struct, and pass the struct
as the regmap context:

ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
ctx->base = base;
devm_regmap_init(..., ctx);

static int write_reg_bus(void *context, unsigned int reg,
                  unsigned int val)
{
        struct anybus_regmap_context *ctx = context;
        <now access ctx->base>
}

Penalty is an additional dynamic pointer-size
allocation. Pro: it'll be formally correct ?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
