Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E76F43D0EA
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Oct 2021 20:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B6B380D38;
	Wed, 27 Oct 2021 18:40:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dKdkJ8cDYCLK; Wed, 27 Oct 2021 18:40:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC29381D7C;
	Wed, 27 Oct 2021 18:40:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9E2C1BF2C7
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 18:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9DDC60B05
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 18:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uvzirX92gXNf for <devel@linuxdriverproject.org>;
 Wed, 27 Oct 2021 18:40:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4215460821
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 18:40:18 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id s1so14332208edd.3
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 11:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=w1lOikvT83TxlEoyvgpvkpl+gUOy6uaCwKYN12Rxif8=;
 b=I5UnX6Sgi11jE7rhOS7eKjefq2Wpa3NnriKKncmQy8V9DSvsP4UZn/ZzHRVR09bGxM
 7zgpCECgficIk5PvBXOsJIZhmzVnYfUJeNM7Nd6iUKTEMOqB9+zWQC9hKaHUC/jHCJbN
 UabY3Y89YnV2k+vunMcm3hJS1m9pvWfeie+4yit/mpDWQXeJ8e73vO+6xHfb7BTvmhGy
 LTFLe5oRNP8Rjy+dONyDK4uiFApXOuUbDYY8VIEjwmLu/9Y1RgqqvmgDuhv0EfUXv/OU
 6OLFxSKpPzZmgFpGS0atoek1Wt3jyxigR0NQloa8kcL23oxupQvm53WJhvcsbN3eyBlR
 ODJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=w1lOikvT83TxlEoyvgpvkpl+gUOy6uaCwKYN12Rxif8=;
 b=P+5VpNgJgZ4j1nyhs4/USMZwwO1ADTqczTq8Z+YIFVHSOQPrEY+3SUgIHUASRgKGSS
 TxkWEecv7GVIbPn5R3F6nzrQ92tPs/KCR4JM3DAU794KkxQmIk/txFvOcdFT1G5wnFvw
 8aotFyvFzovE4kFMM1H+rOIosf4WneR38f7pA8iE0eRvxkZ4fFOx22wv03xtDnP0H51J
 1jMjQgrp3htDNJuFwXx3yOfKtLvBjnOVAD0lIQ5rBAP4h/yCEaZhSOXPxNTGBchAacoi
 3iYNik9syEoby2n1XcktlGGiwjtPnGLRbBezk3UKQBafWciJ2lWSd899+wpIdwCsLCg/
 w8qQ==
X-Gm-Message-State: AOAM530+POg6ei0yOvstz3CbZAOjRBUzp31/vfKG4hVTB3OxJqNeiDgd
 hbiMYePKHgNtRUiEKfN/o7Jh0horY3QnJsrK3gw=
X-Google-Smtp-Source: ABdhPJz6cquvYByN80RZuF8x+2bIAC4ccE0dz5XD4SH9Z3Rxms+eKHGS5I/ICvea0yl3oHaSTtiWHZEi7DOFShFQwe0=
X-Received: by 2002:a05:6402:1e88:: with SMTP id
 f8mr45881464edf.247.1635360016448; 
 Wed, 27 Oct 2021 11:40:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:7255:0:0:0:0 with HTTP; Wed, 27 Oct 2021 11:40:15
 -0700 (PDT)
From: Mophie Richard <richardphie@gmail.com>
Date: Thu, 28 Oct 2021 00:10:15 +0530
Message-ID: <CAA1khCN=KdHwptO6Dq0n8y__6v1-SDKmgs6vXObR7rtibQjY5g@mail.gmail.com>
Subject: 
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
Reply-To: albertkjonatwn@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings to you, my name is Albert Jonathan, I have a very urgent
beneficial proposal deal that will be of great benefit to you. If
interested, kindly reply to me back.

I await your response.

Best Regards
Albert Jonathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
