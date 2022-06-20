Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361ED552132
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jun 2022 17:37:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 535E940B49;
	Mon, 20 Jun 2022 15:37:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 535E940B49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XGUxZRoRagf1; Mon, 20 Jun 2022 15:37:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1E184047D;
	Mon, 20 Jun 2022 15:37:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1E184047D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E2C31BF2F6
 for <devel@linuxdriverproject.org>; Mon, 20 Jun 2022 15:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 062B640B40
 for <devel@linuxdriverproject.org>; Mon, 20 Jun 2022 15:37:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 062B640B40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4D4MDbhDtLUy for <devel@linuxdriverproject.org>;
 Mon, 20 Jun 2022 15:36:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 485D44047D
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 485D44047D
 for <devel@driverdev.osuosl.org>; Mon, 20 Jun 2022 15:36:59 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id eq6so8325594edb.6
 for <devel@driverdev.osuosl.org>; Mon, 20 Jun 2022 08:36:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=mr+iAGjByavtVLAQKiAQDHpjl6ae/h58WRbLzWLbqk4=;
 b=DKemqtYJEusu3uU3qrTqCIif7lRJiEanzgmfBnDQl0rKhaK+F8qqVvk2d8ve/hhl9K
 1wj/qWP3et9eZD67UdlsM2LNDF52GiFWD1ZgxyMhneBhoeUAvj4mk9pQzQnEASd1fA1i
 Q2m5yVANFBog9UXV7Yb2f5evMFDS9A6Zm+ffpR56FXMgAsy1fg+OBGg8ChP4kPHUcfjV
 zwe397fIQM0OIt6IPWG2KvQD4SumhHCTybNqvfA3IkJss2uw8dEezZUqix6bVFrW6i0Q
 jqpzlhEFy+/sCyxGD+0xydyAe3iOBafjnbE4qmJVgf+fhtZS51Z3lrEd4Wlgh+KuYrkv
 Cb4g==
X-Gm-Message-State: AJIora8tGwTg4Kpb8O7Z2vmLxX95aRHflP0zZGPMPIyMVDdqPndhXcIA
 EXBDWrOsR/KB5agXpO0uyGLxdLFm/ThnqpTXY4U=
X-Google-Smtp-Source: AGRyM1t/nOO+OJGi+DmRxCH1c8BMaXNMVLB5y8Vu6LyNf8TXLZoa0BBmAYDHI8qctpR2JC/dS227i77IRz5DTM2yg6Q=
X-Received: by 2002:a05:6402:1386:b0:431:6911:a151 with SMTP id
 b6-20020a056402138600b004316911a151mr30065613edv.105.1655739417352; Mon, 20
 Jun 2022 08:36:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:8ac1:0:0:0:0:0 with HTTP; Mon, 20 Jun 2022 08:36:56
 -0700 (PDT)
From: aminata abdullahi <aaminata813@gmail.com>
Date: Mon, 20 Jun 2022 08:36:56 -0700
Message-ID: <CALEbBcOx7oUV_ByCANNpeUFW5K7VNGZe6vaMRWohSoKqK-VauA@mail.gmail.com>
Subject: Dear friend,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=mr+iAGjByavtVLAQKiAQDHpjl6ae/h58WRbLzWLbqk4=;
 b=oPPLlNfB+9kS+/09RVHpFQ7OWEcHfCuAOLDgP+rKvzEbGVBxNrCkhcgRZPdJAKLMct
 29LCiGknBhZdu+58DqfJwz7TkutbBUss8ClLRcvn+1OG4PLFKgk+Z1pWSolRLn6Ay9L6
 AWjRgdl8F/GI/pkUoJJ6l4rZ+5JweihVYNJ+XzI5zbXyCE3t4p36rNPwT6a/0RrHURQs
 MmMIC2929Fy5cGcaUKVf8DE86liC2/AgDrg6x2PxdmlKVq1/fpWLxMyB/SL5YTwKI8e8
 9uIEKL01tzhk6RbARPBGhMszDnU6uXVp0zvXTCxKEZJT7fZdK/U5Dj8FRWB+GSWw4+vH
 k4mQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=oPPLlNfB
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
Reply-To: aminataabdullahi270@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear friend, Greetings to you. Honestly, I got your email through the
internet, while searching for a reliable person I can partner with, I
believe you can be the right person to partner with me in a genuine
business transaction which I will be delighted to explain in detail if
you grant me the opportunity. Note the benefits are fantastic, very
attractive and risk free.
Warms Regards
Mrs Aminata Abdullahi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
