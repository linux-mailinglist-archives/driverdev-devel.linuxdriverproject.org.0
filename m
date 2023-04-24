Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CB66EC42F
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Apr 2023 05:56:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AF4B40640;
	Mon, 24 Apr 2023 03:56:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AF4B40640
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bSJqQDrTlMlJ; Mon, 24 Apr 2023 03:56:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2EF440133;
	Mon, 24 Apr 2023 03:56:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2EF440133
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3EC01BF360
 for <devel@linuxdriverproject.org>; Mon, 24 Apr 2023 03:56:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B03B160E3E
 for <devel@linuxdriverproject.org>; Mon, 24 Apr 2023 03:56:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B03B160E3E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DG8seOSC9sGg for <devel@linuxdriverproject.org>;
 Mon, 24 Apr 2023 03:56:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64FDA60E1A
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64FDA60E1A
 for <devel@driverdev.osuosl.org>; Mon, 24 Apr 2023 03:56:00 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-4eff055d4d3so773438e87.3
 for <devel@driverdev.osuosl.org>; Sun, 23 Apr 2023 20:56:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682308558; x=1684900558;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9IBIIIVB0/UVXXPchIriYjqhJgKzHwJL4Sxu/PzCESo=;
 b=T3GlQ3vUc3uRvUSYYwtGBQGaOFMgYGstBcuplOfW2rmSDLEw1FCUM8Xl+VUiSAQcLs
 dzILhCWr/YFmCn/LdsehbdVgP0Fp426nSDJAubTtzPbq/ZjiTc0LIM7p55d6mhE/jvlu
 jTPR3+IBbbjiEige77pIjleHwcdPDcuCTB8zHKMSFQyqnNCbohE8j06o0ZsH/66fFO2k
 iGUVvXKqQW4EP4cWFmxtZ0UccRfa6LcZczT3K1JZCrfpEfQ/0IAj6bm01lptOqL9NGKG
 q4J8ZpiT1dTyJN07iAxXK3alIHn7DOSA6TEcwLZvpxWIwN01XQ7ZnUdgJIa+iTE67w9I
 hqnQ==
X-Gm-Message-State: AAQBX9cQd+xF6dC680TAext+w8xxQAO6lP45rYFaOGPw5UykBtiPwuv/
 Bu1TQ5Qp4MgkyLwpAXf/TBBRnlpWcUPL/G4uVCc=
X-Google-Smtp-Source: AKy350Y+dNF7KbjDlRbTkO4RprH9BgBbOo9+7FfUmFcQ9fxuusTfLgFanDOTWkv+hNZw943Ldk6IJcul9aG17BAefvg=
X-Received: by 2002:ac2:4e49:0:b0:4ec:a18e:f985 with SMTP id
 f9-20020ac24e49000000b004eca18ef985mr3024928lfr.13.1682308557668; Sun, 23 Apr
 2023 20:55:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:760f:0:b0:227:9d30:f04b with HTTP; Sun, 23 Apr 2023
 20:55:56 -0700 (PDT)
From: Euro Millions <pete.wetzlinger@gmail.com>
Date: Mon, 24 Apr 2023 04:55:56 +0100
Message-ID: <CAAik_9QQ9hO1h2yT5-HS8vXgU1TNwae96AxNCFgdWiSF-b_THg@mail.gmail.com>
Subject: Aw
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682308558; x=1684900558;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=9IBIIIVB0/UVXXPchIriYjqhJgKzHwJL4Sxu/PzCESo=;
 b=smV6HOzrYTHiRNY2XWf2xMzgLTg9ozkS4YLiYL88+gI4cBk86K40XM1Rl3gWgMVL3e
 RDcORmBkFZ8rFfn4XgSbA7xhxNaF0tsyZyl4qBvz0Xfxn1YFGcpS7y7Ol81IOlT54qIA
 YKrMZ1jQq1LBIKLU/Aop0zYVUBN8xlz7dyiMIjwUHRsht3nQJiXbuWfqpshUgwQLqETb
 ZKFj3MTGDDc6GDPPjAEj0ctCChhVyBn7/ptOnrd525aLu3kVDB6FOs4vORJketrvFblH
 cz+G44fiG+gT+DfxEYJCmfP5fIL7CI9GShHkazOHk7oFD2vCsKPkTckirJcQ4nXr0DyC
 SFHg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=smV6HOzr
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
Reply-To: officialeuromillions@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVyemxpY2hlbiBHbMO8Y2t3dW5zY2gsIFNpZSBoYWJlbiBhbSAyMC7CoEFwcmlswqAyMDIzIOKC
rDY1MC4wMDAsMDAgYmVpCmRlbiBtb25hdGxpY2hlbiBFdXJvIE1pbGxpb25zL0dvb2dsZSBQcm9t
by1HZXdpbm5zcGllbGVuIGdld29ubmVuLgoKQml0dGUgZ2ViZW4gU2llIGRpZSBmb2xnZW5kZW4g
SW5mb3JtYXRpb25lbiBlaW4sIGRhbWl0IElocgpHZXdpbm5iZXRyYWcgYW4gU2llIMO8YmVyd2ll
c2VuIHdlcmRlbiBrYW5uLgoxLikgVm9sbHN0w6RuZGlnZXIgTmFtZToKMi4pIFRlbGVmb24tIHVu
ZCBNb2JpbGZ1bmtudW1tZXJuOgozLikgUG9zdGFuc2NocmlmdDoKNC4pIEJlcnVmOgo1LikgR2Vi
dXJ0c2RhdHVtOgo2LikgR2VzY2hsZWNodDoKCgpIZXJyIEFudGhvbnkgRGVpZGVyaWNoCk9ubGlu
ZS1Lb29yZGluYXRvcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
