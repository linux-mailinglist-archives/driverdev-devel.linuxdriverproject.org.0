Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4133F28BF
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Aug 2021 10:58:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF27081A18;
	Fri, 20 Aug 2021 08:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VRTquOGYrEvq; Fri, 20 Aug 2021 08:58:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2030281991;
	Fri, 20 Aug 2021 08:58:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DAADF1BF2C0
 for <devel@linuxdriverproject.org>; Fri, 20 Aug 2021 08:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA1E340752
 for <devel@linuxdriverproject.org>; Fri, 20 Aug 2021 08:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zrfchEfY8jDx for <devel@linuxdriverproject.org>;
 Fri, 20 Aug 2021 08:58:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B868D4072A
 for <devel@driverdev.osuosl.org>; Fri, 20 Aug 2021 08:58:15 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id bj38so10125422qkb.9
 for <devel@driverdev.osuosl.org>; Fri, 20 Aug 2021 01:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=fH69mDTm18CUU/ZIpL3w4+jHkLq1s7KBc8aXa6vZcAg=;
 b=g8UsNCn5s17f4R/aY3TeyhxpUG1EDtzweLLMEG292fSHyJuC0a8q7CUhYXT7l6cTW5
 4C02bBpMN6BSiz1E4o9OLvv5OfFW3QgzL+Q7bFjo/AtQ7t0MBZ7qrMg62LYxmGk6h8uo
 ENEfRmChtffgnLo9TI2d+jBfE6DX5EaHJy+0VRNfkEPrvM7BqnlAAZJS1ALTBpTbgkJZ
 Mm0o0GRitK9WLnXq0/Yr5GEugQA2yKsileMG9CpMtNfXjkXbIBwYxzWQUkBt5CnutS22
 Bl5TvJfEYILf+bnjxLPS8fNWjdMdN4xiw1oeY9uOlhwroYjiASwM0rG9PcRuAehEat7w
 RH0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=fH69mDTm18CUU/ZIpL3w4+jHkLq1s7KBc8aXa6vZcAg=;
 b=Vqe56VA5HOFtlVsWCxWpIxOi1Jv7wV+21SFDDCNkTsZT/2HIo4byaWdZFF3gGE9/DW
 dUymv+YDHrKiaq+EwY4vA/LzeaWpuymU5GdYh9YDat3Fz1NaWnCNraTHUdC7PpXbg3Ao
 buNcPDlmolCluNQg5ElgYZPTfRGsxgHrVWwEF7LQDiYgcLODYaNLY2CeV0RIWXfWKdZM
 J8G75vK1F6sJGKMrX/xtmLtSgatIsMsBqbQuVW/QE3rFpItwoyqC9I5jwFWIZKkDSlRr
 PCLRx+A5HL9tPHz5beauisuV/sUQZwddAsEt4QJhnw4KgtEPH7FJ4MCOtA+rpIPN4AcX
 Dusg==
X-Gm-Message-State: AOAM530vQWa5of5OeFT8sSZ8H5VdpPWdqpxgsB1crRHr6Ht2pZU7/D25
 erBLJ4DCmIQDUOM/JuHDMMQe6SkyJVLeaWjywXk=
X-Google-Smtp-Source: ABdhPJx9R8upwjfOZmrNsDsJm/kTLwtR1BvVmZI/T4cxsYCc6UGGN5VfpWxbvTaxwhUmcgbOtcMdYNVOcgzlQTTTRwQ=
X-Received: by 2002:a05:620a:1212:: with SMTP id
 u18mr5542127qkj.154.1629449894600; 
 Fri, 20 Aug 2021 01:58:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:3071:0:0:0:0:0 with HTTP; Fri, 20 Aug 2021 01:58:14
 -0700 (PDT)
From: "Mrs. bill Chantal " <scottfavour757@gmail.com>
Date: Fri, 20 Aug 2021 09:58:14 +0100
Message-ID: <CAA0Em+PNWTNg6eQydMaTHCjOskfMNLr7GAc0APFktcKhEr4t-Q@mail.gmail.com>
Subject: Dear Friend
To: undisclosed-recipients:;
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
Reply-To: mrs.billchantal201@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention


You have been compensated with the sum of 4.1 million dollars in this
United Nation the payment will be issue into Atm Visa Card,

and send to you from the Santander Bank of Spain we need your
Address,Passport and your whatsapp number.

THANKS
MRS Salem Chantal Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
