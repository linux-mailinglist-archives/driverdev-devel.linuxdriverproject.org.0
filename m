Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC7E4E3E64
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Mar 2022 13:22:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D67B8611D1;
	Tue, 22 Mar 2022 12:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wy5mcAG3RLWl; Tue, 22 Mar 2022 12:22:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 898C260592;
	Tue, 22 Mar 2022 12:22:14 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 400FC1BF2A4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 22 Mar 2022 12:22:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A15A842F2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 22 Mar 2022 12:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TXsHG7fnVQ1y
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 22 Mar 2022 12:22:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B27B842EF
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 22 Mar 2022 12:22:11 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id l18so19976355ioj.2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 22 Mar 2022 05:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=hDE408tgDC2clqzo23ez6Lb/cQLmqmodgg9+orFFIpM=;
 b=YIXX+sHdR8AV4UVTZ2JvsQ6JINYAgWUgMv63wm0ittA59GSK7KY4pztFP+jF8LjsLE
 6BlSS2+/VbZAMaN+ESFpxr7LBMlSqeBfk2C89X6k9KmR/gesat0MTapl5w5oCVwjVMi2
 1cbRrcr2NPg/NSKWSB6Q4Re8xs4Kc667Su53NUbMcNpgtrk9XCQl4wBJdghLNnv3YXba
 BhmlRpP+TsV1a4ClX4baeTC4GfP8pWZgF0E3aAxa7SUxcpWadMuGY2ZpGAkaklICF3mj
 H9ypFX7pJo5eOlWa1kNQNV1bR/PNkLYd924OJaPPb2DDJ+S4UCoW5QulDPxAngpBZee4
 KP/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=hDE408tgDC2clqzo23ez6Lb/cQLmqmodgg9+orFFIpM=;
 b=51f2k9dDBha5GHAj4yMgHAhghX3+Lj7ACY/po1tdXTQQt3hWXfo5CRGs06bI432POh
 RDMMNIwgFinjaRnFJE+aMH1aVg4FP+0TrDzEmtkFzCNJHmbSl9mvMcrid+xCR4ankv5I
 gx1BKDkR3KwuuI5nwfY9CGr7R9OeW2vfR9RbUb2HOr0RhKZ0BvzlbSEA+70DdZwy9B6h
 Bee1NBmvG2O7FeEkb2bGOfoXPAdGCemrWsnZyZapNMw3dKoTUZi0LPfLN6PDfRjTRpzp
 Tk9UDmGzgk8DKgzIuuzQVY9cwtcEgLoQHvpltVG8argbxz7Y0pfDbu08av+1Q1lVl70G
 1n1A==
X-Gm-Message-State: AOAM531qHDEybeJaP34C03g6O0IhGKaZ3vSiDbVoRyGRAQgxnc2uuZ3j
 4Bxpn4lAGZuns84g7IUm/sHdmi2Nw89ruEthti8=
X-Google-Smtp-Source: ABdhPJzJTpX3OkJBjKuxacGxD5rWLW/0VOJitxUo52B7ekY1a97vfAApa8v03mhV+VM/UkPP9hFs/oMN9Sy4N9vIWuw=
X-Received: by 2002:a05:6638:1414:b0:31a:889a:99f8 with SMTP id
 k20-20020a056638141400b0031a889a99f8mr9051182jad.245.1647951730563; Tue, 22
 Mar 2022 05:22:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:c8d6:0:0:0:0:0 with HTTP; Tue, 22 Mar 2022 05:22:10
 -0700 (PDT)
From: MR MAICK <psfcompany40@gmail.com>
Date: Tue, 22 Mar 2022 13:22:10 +0100
Message-ID: <CAEJc73f9b_fTccNoMQQP=TPuEUUSnGBZov7-gjsBeS6fJt+V_A@mail.gmail.com>
Subject: _
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
Reply-To: mike.holas64@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RU1BSUwgRUpFUi4KCkRlbm5lIGJlc2tlZCBlciBmb3IgYXQgaW5mb3JtZXJlIGRpZyBvbSwgYXQg
ZGluIGUtbWFpbCB2YW5kdCAyLjYwMC4wMDAKbWlsbGlvbmVyIGRvbGxhcnMuIEtvbnRha3QgQmFy
cmlzdGVyIEVkd2FyZCBSYXltb25kIHZpYSBoYW5zIGUtbWFpbApoZXIgKCBhZHViYTk4MTFAaG90
bWFpbC5jb20gKSBmb3IgYXQgZ8O4cmUga3JhdiBww6UgZGluIHZpbmRlbmRlIHBlbmdlCm1lZCBk
aW5lIG9wbHlzbmluZ2VyIHNvbSBmw7hsZ2VyLCBkaXQgZnVsZGUgbmF2biwgZGl0IGxhbmQsIGRp
dApoamVtbWVhZHJlc3NlIG9nIGRpdCB0ZWxlZm9ubnVtbWVyLgoKTWVkIHZlbmxpZyBoaWxzZW4K
TXIuIE1hbGljayBTYW1iYS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
