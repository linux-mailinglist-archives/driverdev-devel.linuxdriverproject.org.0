Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A27735AD64
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Apr 2021 14:59:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FD87605FD;
	Sat, 10 Apr 2021 12:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wURN9zLGGYrF; Sat, 10 Apr 2021 12:59:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EADEE605F9;
	Sat, 10 Apr 2021 12:59:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 762EC1BF228
 for <devel@linuxdriverproject.org>; Sat, 10 Apr 2021 12:59:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6383E40236
 for <devel@linuxdriverproject.org>; Sat, 10 Apr 2021 12:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PNXgUgpomS9P for <devel@linuxdriverproject.org>;
 Sat, 10 Apr 2021 12:59:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com
 [IPv6:2607:f8b0:4864:20::a30])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C39E140141
 for <devel@linuxdriverproject.org>; Sat, 10 Apr 2021 12:59:22 +0000 (UTC)
Received: by mail-vk1-xa30.google.com with SMTP id o2so45577vkn.1
 for <devel@linuxdriverproject.org>; Sat, 10 Apr 2021 05:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=EqZjh7FfQz6itUdKUiF7ntDm22+F+9VPDKI9cNs1Vyw=;
 b=A/KOwjoj3iqUDpi/e/VFlJZlzleYAeXQ3Ex2NcKwcavVBogWFBNfTdyUowICm6Af5K
 BjCIIerFnZ1Ti6OpPdYTKGg+Kl9r1wfcSQoFDsgQkSq2VmuZbfQ8DgnS05p1gx/e5qfG
 82BumYKaEjxGqHdN/ky1siaFAoSTRdIT1RnHeYS68dtWsxEsIGIno4n3Kd+zWz2wzjm2
 9PnGarAJisR4kSLCEjDYApoKU4iepg5v1ycOFLhg5C3gVE5zy+qojie8nk4tMuioOjBV
 UVfd5d82AyIVozofDnIWdAWETsulXMaPRV87Bea1+3wpx1z6D7i3TkNtZ3dB7eJoYVS9
 GdAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=EqZjh7FfQz6itUdKUiF7ntDm22+F+9VPDKI9cNs1Vyw=;
 b=jcp+wkJZBJyMSDuPd35jkNJYB3hs9wcJXvay7NttMKWXEY1bfxyRilDiktz45eUJY6
 eYkrUh6Qkwg7a6WN388JYH3JNdHbZEuuWWYcWxRGoWRWqFpwPXg1ejjbM7JFr57R/eGA
 IXTuOO8h+WIzkzgHDsI21+92O8R47q797y1js/Gsq679tVdfipf2s/ZcOMYqVG8QL7to
 EMN+EEGxFB8ZlheuD5kMVsJIRKPYTvL+3PqzwYyVF2LvGNoRTiFtGbVVym7HdZl6Qu2O
 S3J1lccpvKjiECrNXDXbPiBG4NAcorNay3agutQADOoIL0a42ZTllI6GAKohA0NJMzB8
 EfiQ==
X-Gm-Message-State: AOAM531AqS1CfiQW9TmC/phesJb3BKl4nCk3F+Jfrck9gEmK5kemBFFi
 WMjNie8z3rZ1o7MnAxYF7/mmt9ABf2ZyUE7Lg9k=
X-Google-Smtp-Source: ABdhPJwvtvgAgbqLWZTD3qoXxaSYGxuBTN7pVays4aX8gk9LFYE8f91+x+GPMgkCnagd7MCqDbY22V7xwGEASszXjow=
X-Received: by 2002:ac5:c968:: with SMTP id t8mr9231053vkm.14.1618059561577;
 Sat, 10 Apr 2021 05:59:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:20e1:0:0:0:0:0 with HTTP; Sat, 10 Apr 2021 05:59:20
 -0700 (PDT)
From: "Mrs.chantal lawrence" <mrschantal737@gmail.com>
Date: Sat, 10 Apr 2021 05:59:20 -0700
X-Google-Sender-Auth: GBN_pxeJxp0NIM_Ffxj1mNWNrs0
Message-ID: <CALaZXPRjg-eo2KuGhrZamSi_bmjorBNhFNo8Y=PaAC2WwXPj-A@mail.gmail.com>
Subject: Good Day
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
Reply-To: mrs.chantal778@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

HELLO

I am Mrs. Chantal Lawrence. I am sending this brief letter to solicit
your partnership to transfer a sum of 12 Million Dollars into your
reliable account as my business partner. However, it's my urgent need
for foreign partner that made me to contact you for this transaction.
Further details of the transfer will be forwarded to you if you are
ready to assist me.

Best Regards
Mrs.Chantal Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
