Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B17D2C8E0
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 16:35:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7F0BE30270;
	Tue, 28 May 2019 14:35:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CO2oBtZqopiG; Tue, 28 May 2019 14:35:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 31F6E232D2;
	Tue, 28 May 2019 14:35:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 805151BF308
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 14:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7610C851CC
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 14:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q9zDkrCMq98K for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 14:35:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CAB35851CB
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 14:35:21 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id j49so17903641otc.13
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 07:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RkzNKIRiEzcSbm+tX81QK9PaQwoVmPZvfI0mhyqI/yw=;
 b=t2DGp7sN8sVDLXOxZJFvCBGPvVLq+HnkhgcsmhYupokEyvzfHN2p1xvO5klVLV9DL9
 Viv+m96xmESsM7MPNQnbS+9iC/UHCZLiTEOkngSjrgPweccvgM23B/zy1tNUZpsJYc9r
 envjIOeTJ1R9mVIgi2Sr20aaSjHzJ9/sV8XpZEe7hYnChRynDtDOkfEsF/Up3KCs50Qa
 KbfoLY20J70fNihtXZuZuFX3NtakuPvefpWPfc/g+K9/FLgrWLLEuEOEBZkQzhK1PnjU
 8w8de8yvie0p11C1a0wzRJti9yuDp+/vLcFoX+bwitObdmIp8MS5I21AtARZ3z5EJv2I
 nC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RkzNKIRiEzcSbm+tX81QK9PaQwoVmPZvfI0mhyqI/yw=;
 b=scNcKpIo1xD8hlHeltkNoi4vo3YgjVhcrcFZ2pTG89pO1jjRQmq1CBRVuqC88zfiBz
 h9eMGJaWq5pPcESFLCHFwzSEfXeCdkiZs/LrYtrNo/OrDxEdCQngdtib+LcDQCjDMyX6
 G3wJs+zxk4542XS4z8whHWi1RVJvmhsfUwaXlyiiayZvjfSWFiChKPDfZnhpJXWb0rcR
 F0ueFL0OIk5OIOyeCAxgCMO54T+yN1PcgkATHedTnF9pmMtxFE63xH9gVLGg8yyD6p6x
 U/U5j8ZI+ZalFBAPnYnH/dt6/cYcKyluNW4mehR5uC0YJRZSXLida60cetHFHtNnkqhC
 2grw==
X-Gm-Message-State: APjAAAUN05uB0DodXqyWRzpEaRh/6kz9vWKv4Z0hlHZyUrynZf8pet+7
 cwB4RkPl7XGOr6TVLlgwAgKRlj/f/zS7sgQhTzQ=
X-Google-Smtp-Source: APXvYqwmqSAV2f2zETkGMF8GguAlSVn6CSaem6SwBvSoEhh6XVyZPxvKm7nnj3Z03zi/JU1waoGInRTQTVetVLY7cNQ=
X-Received: by 2002:a9d:6e0f:: with SMTP id e15mr67099046otr.0.1559054120960; 
 Tue, 28 May 2019 07:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAGngYiU=uFjJFEoiHFUr+ab73sJksaTBkfxvQwL1X6WJnhchqw@mail.gmail.com>
 <20190528142912.13224-1-yuehaibing@huawei.com>
In-Reply-To: <20190528142912.13224-1-yuehaibing@huawei.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 28 May 2019 10:35:10 -0400
Message-ID: <CAGngYiW_hCDPRWao+389BfUH_2sP4S6pL+gteim=kDrnb9UDzQ@mail.gmail.com>
Subject: Re: [PATCH v2 -next] staging: fieldbus: Fix build error without
 CONFIG_REGMAP_MMIO
To: YueHaibing <yuehaibing@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 28, 2019 at 10:31 AM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Fix gcc build error while CONFIG_REGMAP_MMIO is not set
>

checkpatch.pl errors remain:

$ ./scripts/checkpatch.pl < ~/Downloads/YueHaibing.eml
ERROR: DOS line endings
#92: FILE: drivers/staging/fieldbus/anybuss/Kconfig:17:
+^Iselect REGMAP_MMIO^M$

total: 1 errors, 0 warnings, 0 checks, 7 lines checked
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
