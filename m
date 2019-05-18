Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD81224FE
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 23:01:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 730F2226E9;
	Sat, 18 May 2019 21:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h3nIqob+DRC6; Sat, 18 May 2019 21:01:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 89B4C23DA9;
	Sat, 18 May 2019 21:01:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7C8F1BF3E9
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 21:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B427185DF5
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 21:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZruB0Hdex9Ue for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 21:01:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EFE1885D4C
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 21:01:07 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id d15so9154651ljc.7
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 14:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GjVQ36VwzFJ7223GVX+W1QUwbbB9XFPvg3hASkJmDUE=;
 b=kRi08ubsnM+ykN86OGVCMysxcVyFgiHLV0b9Fr5ew9x6FdqJsy8RjcIcHaTPXgYKmm
 d9J29YZ8wKZ/wqisIZCggD2OTJlDFI4EqxAo5uyb91meiXhXpkATPV+mqDRW3cmyPHkX
 3XbgcF7MFCIgtbuwm+ReN7wbA62uj7EOJoMwVYslAIsKcLC7kxKGjMpkrLm8pFn0WumH
 oUnqD/c5nHDKWSPTpB74hAfowS5FbTi6RLxKw1bqw7mIUlNbTJJQQf/H3gdEnOrDa1uE
 qZc0C0sQ7lBMw6/Ew01qw9Jk2fXF8lBI1M64m//I24dV9uzG2Ydm6ayj7oXjhOe62ZLV
 9NDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GjVQ36VwzFJ7223GVX+W1QUwbbB9XFPvg3hASkJmDUE=;
 b=jj/8Qlmz9/FnVX36o2DkNumHtI/HtacxWesMqEOSjh2S/8/3i3+/ySNgvj19h4QBcl
 IPueflxofgq5j/7F5/piW7yf3uBnbP0QeVIuy7r02CYG/fCiXvtK/P9NTgb0MNdpH0m1
 5uAN0nwjFYVg2qfi7I+8dzsGojWhLhQKJ+u//QX9lIc2SwfAUHvt+XQQ0/DmDnxBv0l4
 EGe7Fw6JWIzG/Sc/SjNl1Fr3LzoZEumocwjvzGHZohFT4bw770LUqwbTOtY9tgi3nFG5
 iiQYlKuuDUXIyPM3sHNFmrkUkWcmNRShSOxiQi0NAdE/PVj1vcTQI+V7xKYvXbdM1yKq
 1OSg==
X-Gm-Message-State: APjAAAX1nx6XXsy37XVqoTc6B6eTUvb69dEY3jYVLHIEKqfd3Ue/mip8
 gmgdAfXoipqO072Snq319rj/sjLv5eLcuk3v5gU=
X-Google-Smtp-Source: APXvYqz5V1Li5FC7AKD0AQty1G5o21b08C9dVNe188+/PFCqLvAreMM45t6P1vCeSAEyPNJZMmZrxAYvskKc+t8Jt58=
X-Received: by 2002:a2e:1f02:: with SMTP id f2mr31672771ljf.86.1558213266061; 
 Sat, 18 May 2019 14:01:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190518173852.GA1191@hari-Inspiron-1545>
In-Reply-To: <20190518173852.GA1191@hari-Inspiron-1545>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 18 May 2019 18:00:56 -0300
Message-ID: <CAOMZO5AjtnPhPsQqTqb+FgyEU7kVp+i+6M1AOmwm9XwzTE9rPg@mail.gmail.com>
Subject: Re: [PATCH] staging: media: imx: fix Unneeded variable: "ret". Return
 "0"
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 18, 2019 at 2:38 PM Hariprasad Kelam
<hariprasad.kelam@gmail.com> wrote:
>
> fix below warning reported by  coccichec
>
> drivers/staging/media/imx/imx-media-capture.c:617:5-8: Unneeded
> variable: "ret". Return "0" on line 630
>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
