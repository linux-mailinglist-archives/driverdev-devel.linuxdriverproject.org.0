Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF025483C1F
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jan 2022 08:02:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5531B825CA;
	Tue,  4 Jan 2022 07:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hmfhR50gbLNO; Tue,  4 Jan 2022 07:02:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D69C81335;
	Tue,  4 Jan 2022 07:02:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3BA41BF29C
 for <devel@linuxdriverproject.org>; Tue,  4 Jan 2022 07:02:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2CBD40926
 for <devel@linuxdriverproject.org>; Tue,  4 Jan 2022 07:02:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NpAY0coy1n1N for <devel@linuxdriverproject.org>;
 Tue,  4 Jan 2022 07:02:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0365F40925
 for <devel@driverdev.osuosl.org>; Tue,  4 Jan 2022 07:02:41 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id j83so86721878ybg.2
 for <devel@driverdev.osuosl.org>; Mon, 03 Jan 2022 23:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=GWdJLwDyWgSwoci0ReBaiGnuvGRxn02rgVfYL7Zf4ew=;
 b=UnETjje5c75D7CRpOfkz1y6kO4n+mD60vtJgsqcxlJQDUlDViTHdW77od2fylE0y27
 VcczPCGVRTYIsGDCbcuwBRKYvuCgEoCdF94A/USigWDOWeuOaFIqZknFDMxjrgjP/a43
 h6rKBNKn7XKvub5JezR1HebQ6aFzt1YAxU5PIap9V00eSFYiu7cJ6pyrjd1ZmsH/Yrjp
 YOEtg7Fp15iRbEhRv7IztmHoE6xun8hRP4mwZCTuWYyIydyQEtTnMXl2ll/hZevAAPUL
 gH9fT1iS62N/iL7Z6g1lkXGhWu+eWQfIdzPa18gQO2uas1hSqsbzOTmDai5lSVFDrYaA
 kfXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=GWdJLwDyWgSwoci0ReBaiGnuvGRxn02rgVfYL7Zf4ew=;
 b=7Jn1uZHUAjgNM1/R8swQbgfSC16chEqPp5jKLdf+k0AL9z9kyUuFr2BBofPDUgQkbz
 UzOSdBFQ6foh8YBj0lXCaH8UzKO9M0mLbVCGoHS8dSYMBbnG/X4tIV3tmtxTMnV6Cvcu
 5xPo+o26vers6EQjmpOlwEeGQdveobhnFtMMkGy6B4dpVYAg4TqPCmgnj4C+BMh9KNBx
 NJAIBNuXfqkaHvnrfGgJ1sv1oQxbfGM0R3mBqvI4m0AW4a++Hp8YHOMI/5whckRlQNCB
 QW28+4SiJON4X0a6/zcTGCnHER7tMtcwKbKVnIJk31uFym0sERf4j2v01vJOIjln1dCC
 4r7w==
X-Gm-Message-State: AOAM531Bh9K9chRKw1M2RPaE382Cj52D8/hkdFD69YrCOZE77FwvnlxD
 r8CxPcoomAfiV4fEbVfDdjsW0M8Gxcr0i2PV46U=
X-Google-Smtp-Source: ABdhPJzGRSrU2tWOsonr/tU46ZtTDm9FZZ7X1++vVmA3eG+YnoJtS2Pf97hM8s3U/lb2oCl2jj9hhHasNQ2dcL3dTOc=
X-Received: by 2002:a25:81d0:: with SMTP id n16mr47035932ybm.301.1641279760950; 
 Mon, 03 Jan 2022 23:02:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:360a:b0:120:f2ec:3af6 with HTTP; Mon, 3 Jan 2022
 23:02:40 -0800 (PST)
From: Mrs Bill Chantal <harrisonfrank886@gmail.com>
Date: Tue, 4 Jan 2022 01:02:40 -0600
Message-ID: <CAM2iKDmHM4V0VpYJ9jfPxEB1+ajsPcTHfogbkie7x_psdSBndg@mail.gmail.com>
Subject: URGENT ATTENTION
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
Reply-To: mrs.billchantallawrence@seznam.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Friend......

We bring greetings to you in the name of the lord. This message is
sent to you as a notification that you have been chosen to benefit
from our charity project aimed at touching lives and helping those
that we can across the world as God has blessed us. I won the
Powerball lottery of $150Million on November 2, 2019 and I have
voluntarily decided to donate the sum of $75 Million to charity, I try
to reach people randomly from different sources and modes so as to
touch lives from different angles, Hence you are getting a message
here.

You have been listed as one of the lucky recipients to receive $ 8.5 M
This donation is made out to you so to enable you strengthen your
personal issues and mostly to generously help us extend hands of
giving to the less privileged, orphans and charity organizations
within your locality To verify
https://www.powerball.com/winner-story/150-million-powerball-ticket-claimed

Get back to me on how to receive the donation through our official
email address below You can also contact us via our
email address: ( mrs.billchantallawrence@seznam.cz)

 The earlier you contact our email the earlier
you receive your donation

Thanks

Bill.Chantal Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
