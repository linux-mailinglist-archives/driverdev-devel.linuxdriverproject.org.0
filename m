Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2715305DDE
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 15:08:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A7C1922844;
	Wed, 27 Jan 2021 14:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3p6sRMeLgjMi; Wed, 27 Jan 2021 14:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 881FA21509;
	Wed, 27 Jan 2021 14:08:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63C221BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5E08421509
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oUSuNEI7vfea for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 14:08:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by silver.osuosl.org (Postfix) with ESMTPS id 4E4EE1FD16
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 14:08:16 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id q20so1258250pfu.8
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 06:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=dZ5Apc48PgkcI0iXXqNFunIaMeiv0OUaEYhLHdVP0NQ=;
 b=dJy0+TMILjiVrUpvi7MdKmW8sdrsYcu+xcsBSAgst74BJQi0ZNqyRWhZfzs1szh0p7
 lWS54dhIYPKbyr0rJ0broDLBytoXwoz/mkAv6kRh6Ddq5i8pUKb0JSQ+fIZJ2ARQdD1q
 i6fJMvNgcKx4e4JakNddu3DpJLn/jVtdvgAFaZ4iibiw3zg9IMH6tbjvTHrYAE6kqC1K
 vLukDbyD+W11RS0/l8d3XG3mujP03amTNHJp3UbUbbfNVGrLsyudpD3VFfTKR7jcuGGY
 X7ZHQY/G5OqmAwjod3a/2Il9nyvNf3AE9g6y2I1G5oeXW5Pgw63PTqI0TCFP85SbbvXt
 SA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=dZ5Apc48PgkcI0iXXqNFunIaMeiv0OUaEYhLHdVP0NQ=;
 b=FFfYpbQVl5dNQoGOQrHVijiQSPrbp+oPsjGDUVuwoHZ1TClbmM3s1Y88dNykdTPYcx
 tq5V9YxnXSAUxJ3/m1OsvgYMlGea0hnmziH4REbFsTF1nx7S92ogoIIo5PVffOqxNxlp
 k5RaDHYyDERBq5WPoVEoXg2rFjbw/cz1QMqitrh6PIHP5DMoVkL6FPmPgO7wPdDt1rRd
 svavGkbXUd1YA4QRi75LEx0IaqENMYiqxj0bt2ekx5qa25pu6D9kpjKtIblInbvUq7f+
 eSEBtjXRUad6V/B0yIp/OUPKCB2bEEFTQnhaIV8+z2SKv/MrwzswvZW1tGYAe+UGPvj4
 jn1A==
X-Gm-Message-State: AOAM532zUFmb4Qyh8GXcZxj1yHqWdHsJWr6Q7kppG6VGJlJ0+tHApZ73
 PY3a+oy38sIawHlo2rzvP2g=
X-Google-Smtp-Source: ABdhPJzc7K4wiaIzTiUqaEc8ZDf0bQRgXReBZZ0hBd/naH+2JnDs7iHHAkpIutIYQ12pcivRgHxmZA==
X-Received: by 2002:a65:5241:: with SMTP id q1mr11307536pgp.143.1611756495877; 
 Wed, 27 Jan 2021 06:08:15 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id u3sm2866475pfm.144.2021.01.27.06.08.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 06:08:15 -0800 (PST)
Date: Wed, 27 Jan 2021 22:08:09 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
Message-ID: <20210127220809.000026fb@gmail.com>
In-Reply-To: <YBFv+12xfsoxacDb@kroah.com>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <YBFv+12xfsoxacDb@kroah.com>
Organization: Tyzmig-ryrjum-8kedto
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, oliver.graute@kococonnector.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 sbrivio@redhat.com, colin.king@canonical.com, zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 27 Jan 2021 14:51:55 +0100
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Jan 27, 2021 at 09:42:52PM +0800, Carlis wrote:
> > From: zhangxuezhi <zhangxuezhi1@yulong.com>
> > 
> > For st7789v ic,when we need continuous full screen refresh, it is
> > best to wait for the TE signal arrive to avoid screen tearing
> > 
> > Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>  
> 
> Please slow down and wait at least a day between patch submissions,
> there is no rush here.
> 
> And also, ALWAYS run scripts/checkpatch.pl on your submissions, so
> that you don't have a maintainer asking you about basic problems,
> like are in this current patch :(
> 
> thanks,
> 
> greg k-h

hi,
  This is my first patch contribution to Linux, so some of the rules
are not very clear .In addition, I can confirm that before sending
patch, I check it with checkPatch.py every time.Thank you very much for
your help

regards
zhangxuezhi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
