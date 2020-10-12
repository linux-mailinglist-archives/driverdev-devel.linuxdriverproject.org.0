Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 203E128B3F1
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 13:38:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0723F207A4;
	Mon, 12 Oct 2020 11:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i-fI3w8hwAG8; Mon, 12 Oct 2020 11:38:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C1CEF20555;
	Mon, 12 Oct 2020 11:38:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E70B21BF3F7
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 11:38:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E39FA849BE
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 11:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 95C-3Y7zscq8 for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 11:38:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6466184974
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 11:38:48 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id h2so8405546pll.11
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 04:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uAr1u2AxKhyAhsPGz3HPtu7lWVnt+PlRnjUfOtRYD10=;
 b=eXjiSmybFzCfsLPApRdx4SqJd6Q3JXAdvU4MJPKZZ4ippGkNFfgFeYTZwyzfKdWC3N
 YY4Ee59ldzAAxxHe4aH1Td5dqVxdLDSGafdKsH+jgctwaG/tQBZccfYg2Xd7cpGdzQhy
 fkUUiKGWchxtaeuE8+U1v99g21gesrczOEHEht53nKBwa+fizLetc2lpleHUJ3jYOm1F
 QMF4HcPQ5uyXuV6Lge8N7UnvTP16iaUuhVuaaUhk4DU80tBdQTswwjokQViDioc3Pi/N
 0n448WWUK9jaxfz/5wTa5GytQaRD4Yb4oY0mKvyOFaUUdJ0ABranwTEq/UXc10SqAA6R
 y3Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uAr1u2AxKhyAhsPGz3HPtu7lWVnt+PlRnjUfOtRYD10=;
 b=GXp+9j7UEE/1F2oUVkqA1pttbPRcJAX3UBCshLIDdDuuEl3VQYwL4roP75K8n3ygS0
 cjooareZSnjc5sP3snGIfFySRAsDPTLgmZUE8LvlWxs+rHV72pzytZwGBD54k7LEXYoA
 AUlibqNlASh+DBAi/RogXdR7RSK4OAbEqkOmnu3GpPN1Vg05eN0XrMTqWTnx8n81BlXR
 TA0HDrHiiF8a/n1EmXyGpDC3Yj6iYAtx/6ibv6TOYIPhGy6nP0sCQ0MgCTFlBZpKybcW
 6DjbXS+G9UBknmXTIya/0owVuKLpraTPfObWgFGZmfnmOrYhBF9PdMjDFoabeBPUCNzG
 65PQ==
X-Gm-Message-State: AOAM533Cope97H3tf01eU6JHIsMLjNPz80Ol3+PZXs+qkl4X9ApFahzp
 MkfMSacq9OUOzghPKIr0v7s=
X-Google-Smtp-Source: ABdhPJxHiPbCY6AwdU1NepgLndb4Cc4E+OU455e+aeQtaXWusCq2n76TGY06FvHVFDAGFlriW9lX4w==
X-Received: by 2002:a17:902:8698:b029:d3:b362:7342 with SMTP id
 g24-20020a1709028698b02900d3b3627342mr23245874plo.50.1602502728048; 
 Mon, 12 Oct 2020 04:38:48 -0700 (PDT)
Received: from localhost ([160.16.113.140])
 by smtp.gmail.com with ESMTPSA id v20sm14861383pjh.5.2020.10.12.04.38.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 04:38:47 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Mon, 12 Oct 2020 19:29:14 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v1 5/6] staging: qlge: clean up debugging code in the
 QL_ALL_DUMP ifdef land
Message-ID: <20201012112914.xrkwi53gqvg5l6lw@Rk>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-6-coiby.xu@gmail.com>
 <20201010080126.GC14495@f3> <20201010100002.6v54yiojnscnuxqv@Rk>
 <20201010134055.GA18693@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010134055.GA18693@f3>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 10, 2020 at 10:40:55PM +0900, Benjamin Poirier wrote:
>On 2020-10-10 18:00 +0800, Coiby Xu wrote:
>[...]
>> >
>> > Please also update drivers/staging/qlge/TODO accordingly. There is still
>> > a lot of debugging code IMO (the netif_printk statements - kernel
>> > tracing can be used instead of those) but this patch is a substantial
>> > improvement.
>>
>> Thank you for the reminding! To move qlge out of staging tree would be
>> interesting exercise for me:)
>
>If you would like to work more on the driver, I would highly suggest
>getting one or two adapters to be able to test your changes. They can be
>had for relatively cheap on ebay. Just search for "qle8142".

Thank you for the info! Right now I don't have a desktop to install
this kind of adapter. I'll get one after settling the plan for a desktop.

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
