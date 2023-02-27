Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A966A35F3
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Feb 2023 01:29:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02E71608D8;
	Mon, 27 Feb 2023 00:28:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02E71608D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kk6ch8fI6WUh; Mon, 27 Feb 2023 00:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8B18607FE;
	Mon, 27 Feb 2023 00:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8B18607FE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5DB91BF359
 for <devel@linuxdriverproject.org>; Mon, 27 Feb 2023 00:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6926814B1
 for <devel@linuxdriverproject.org>; Mon, 27 Feb 2023 00:28:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6926814B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t63TumV0fOtc for <devel@linuxdriverproject.org>;
 Mon, 27 Feb 2023 00:28:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11F47814AB
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 11F47814AB
 for <devel@driverdev.osuosl.org>; Mon, 27 Feb 2023 00:28:53 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id j3so3239809wms.2
 for <devel@driverdev.osuosl.org>; Sun, 26 Feb 2023 16:28:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xQnJvz9r//i40Q6M6D7Mlr1MIPxNoULnq+BRFHU1d6A=;
 b=llUlI4PbBtPimrFCBeBZ9RTBJZRfDhrh3EJXCnS5MXkoqT+jIo2ot9M9/h+kY2weER
 s2grYjtVBHOqH5gan+2kokMjRiSZNJ0CEJ4iGjcIOuABrJcEp4AXOXDOexKmM2YbDFNY
 M1C1qRWLasoFZdpyYOCmeL/0yAggJ62admfEqpuRT+rpjDxy+XMW9nogNeqflw5+WK/L
 2vB1LRObr5dl9Ner3TQs6zv8Cm8/52HiPdGRm94jYnLS+7zEKm8cfkmohOtklSw5Nuex
 kGOWClZcwdwlKR2gagEnQuorvFexUtpp8BgaXNDv7stn16Y8BdpkUGCAQD4UztRdPqdH
 bLLw==
X-Gm-Message-State: AO0yUKVCiEGpQGngCvt2fn5ju/P5JgdT/oI/5wS2SP60mqd06VbZ9OHn
 HrpuVfFpvpqqC45xxSigAU+ud8WSX02Wi1K/Ft8=
X-Google-Smtp-Source: AK7set9qfdmeSrd19nfTWM1cr3oKrPd+bMT1RRiC4G6nqiqI1AL6Rt8aouUNDZYDZZ7g83kYmA1mSZhrTbACKJY0Mpk=
X-Received: by 2002:a05:600c:34d2:b0:3df:d8c9:ca84 with SMTP id
 d18-20020a05600c34d200b003dfd8c9ca84mr3196336wmq.1.1677457731758; Sun, 26 Feb
 2023 16:28:51 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:d1ce:0:0:0:0:0 with HTTP; Sun, 26 Feb 2023 16:28:50
 -0800 (PST)
From: Raymond Dafter <raymonddafter4992@gmail.com>
Date: Sun, 26 Feb 2023 16:28:50 -0800
Message-ID: <CAN3-JYnVJi_56NhjLMkaBzFr5O1K6FfdsKnMbyDE=PypPU6G0g@mail.gmail.com>
Subject: We finance viable projects only
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=xQnJvz9r//i40Q6M6D7Mlr1MIPxNoULnq+BRFHU1d6A=;
 b=lNQRkBW3mXT698WKQQNDF5hVpWndz/ftRGGYzsDf9qNReqb1dAN6SKRYCTS9TtQ756
 SCNUgp/WM2VfqWE94S0ov+2fQsu8+snNvvIOwqB9bn06NkpchnFUvxTRQlQ8HugrUgaq
 o4jk0z+ftZpyqct7b82D1lVunGvO6PiS7GlNH1FPS0n/To6u/bSNm3IBiwc/2B7HKt8m
 NoLn1NCMB9LLhwm6HvmPOzJorMWfgLtiCIPpg3rxHdEvFEZ1sU4X+eJox4SHhX5jgstG
 6juJlG3KeK/Ypj+a9xla5KaU8/lAu1SWTliS7/YyVUTwfIgAJkTM14ObfN6fBYZFkwi7
 9C8Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=lNQRkBW3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention: Sir

We are interested in discussing with you, Entrepreneurs, Corporations
and Investors (start-up Owners included) with projects that require
financing also in helping you grow your network and offering you Loan
funds to complete and fund your existing Projects.

We finance viable projects only. The board will need to review the
detailed Business plan and executive summary of the project then
negotiate on the terms and conditions if the project is deemed viable.

If we can partner with you or your clients, We can send you our
Company Terms and Condition after review of your project plan and
executive summary of your project, if you are serious and Interested
contact us for further Information:

Thanks and best regards

Raymond Dafter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
