Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 154BC42BBDF
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Oct 2021 11:44:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25C6C80AD6;
	Wed, 13 Oct 2021 09:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JwPjnNveC4ZE; Wed, 13 Oct 2021 09:44:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93D2080C07;
	Wed, 13 Oct 2021 09:44:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 551721BF40D
 for <devel@linuxdriverproject.org>; Wed, 13 Oct 2021 09:44:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A0AB80C89
 for <devel@linuxdriverproject.org>; Wed, 13 Oct 2021 09:44:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2IQ7Qj52wwPf for <devel@linuxdriverproject.org>;
 Wed, 13 Oct 2021 09:44:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com
 [IPv6:2607:f8b0:4864:20::12c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 549B280C61
 for <devel@driverdev.osuosl.org>; Wed, 13 Oct 2021 09:44:08 +0000 (UTC)
Received: by mail-il1-x12c.google.com with SMTP id j8so1966598ila.11
 for <devel@driverdev.osuosl.org>; Wed, 13 Oct 2021 02:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=ykgdjxhAzVVgvIOev5ZjMvpn28ZknbgkcJ3ItmcQ13s=;
 b=lzzsHJqhXpAgGE6AfZSNlUvvxzcix7POL/6wo0f6fMKbumNWh7+j9zgB7ZZqEXxvri
 zoCWhYryF4yQpTJrjq9zKasLES5PMR4ROw3QNKQzmOfkaRUti+ImvXgIlkHNO3CTLp8s
 1Fy/yozqvqUAXsl/p/InbpdaPePGw3hmq/aypYYRPKMY8Ip4gVfy7dscpNX/xZhmT/w0
 0UK8jtLhF1MLOSeMaJ9KPxcEVF32cb4gUTSGjOMJ9UKot3tjPDVgG8f0hYNm/X25k0Uk
 If7Gkvh1ln8W1c02gppuUVlAnwA5wZmy9ufTZlyyTgmdea23B/qfQohYMaNALqA9nR9J
 YDKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=ykgdjxhAzVVgvIOev5ZjMvpn28ZknbgkcJ3ItmcQ13s=;
 b=ncOX1pGjQ6M8k7JGczbXobdo0Yew60ReP/9c5KN3pOFUzlbB5eUGfvXkgOduAIYvLz
 wqICRa+3ITvdMOlJdFEGh1hynYxBSroO25mlWrhZ78f6um+6objeGbIZWiV15kRIJdRb
 R+5gwJ3MJ6xDq2xqGldqpuT+0D6yQxjyf3Z6ThyzCpwjFGWkwVcPjKRxKWqeaCGwlr3S
 /zWiyVmjQsRd36sIsH1MzNY2+HO+SVMzVR6QE5x5WAEXbKHdP8AfCU7DJ4S81+dPo9c8
 NKnu9Hg+RdJdyIQDPCq4ccbFgtt7aOUJcqpq0E03NYc8MTFlIPcWu8jEAwulX6l1r4i/
 YjoQ==
X-Gm-Message-State: AOAM531IjKGvf+k1eAWaWf78HMEyuyQZugYdMu/9VviIw7YWvb4meJ36
 B7nXeOCUuDFMgjge0AKtpTWYAW+yyPzmE1f5SUM=
X-Google-Smtp-Source: ABdhPJxuZGSVpnmld0EHYQE39GSGjPRpu0kmO1iZ6bUWCRlEFR8wxf4368we/BcKLKTV+L00SDhOoQaO2ETjfjEe0CE=
X-Received: by 2002:a05:6e02:1689:: with SMTP id
 f9mr3826403ila.216.1634118247438; 
 Wed, 13 Oct 2021 02:44:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:c9d5:0:0:0:0:0 with HTTP; Wed, 13 Oct 2021 02:44:07
 -0700 (PDT)
From: Maureen Hinckley <jebetu100@gmail.com>
Date: Wed, 13 Oct 2021 12:44:07 +0300
Message-ID: <CAHZbNGEwex1HZz56TZT2hwMNPD_KqUJWsu_60E5pYn9fv0LuSQ@mail.gmail.com>
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
Reply-To: mauhin11@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhlbGxvLAoKSSBhbSBNYXVyZWVuIEhpbmNrbGV5IGFuZCBteSBmb3VuZGF0aW9uIGlzIGRv
bmF0aW5nICgkMi4yIE1pbGxpb24uCkRvbGxhcnMpIHRvIHlvdS4gQ29udGFjdCB1cyB2aWEgbXkg
ZW1haWwgYXQgKG1hdWhpbjExQGdtYWlsLmNvbSkgZm9yCmZ1cnRoZXIgZGV0YWlscy4KCkJlc3Qg
UmVnYXJkcywKTXJzLiBNYXVyZWVuIEhpbmNrbGV5LApDb3B5cmlnaHQgwqkyMDIxIFRoZSBNYXVy
ZWVuIEhpbmNrbGV5IEZvdW5kYXRpb24gQWxsIFJpZ2h0cyBSZXNlcnZlZC4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
