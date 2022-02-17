Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D19814B9B66
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Feb 2022 09:47:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21B8083EDB;
	Thu, 17 Feb 2022 08:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BYoDgS21UUNl; Thu, 17 Feb 2022 08:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E259F83E83;
	Thu, 17 Feb 2022 08:47:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D66D1BF471
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 08:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AD2D60ACE
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 08:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cY5HiO6jPbFF for <devel@linuxdriverproject.org>;
 Thu, 17 Feb 2022 08:47:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-xa32.google.com (mail-vk1-xa32.google.com
 [IPv6:2607:f8b0:4864:20::a32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6972160ACC
 for <devel@driverdev.osuosl.org>; Thu, 17 Feb 2022 08:47:05 +0000 (UTC)
Received: by mail-vk1-xa32.google.com with SMTP id k15so2612821vkn.13
 for <devel@driverdev.osuosl.org>; Thu, 17 Feb 2022 00:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=t2/hqPqqm8hOB/ANe6Gjk0ClfCchtUe2IOqTHAnGlBQ=;
 b=Wi5uvGam57IiiFuqaYwWqHZ4fKnyj6WSHX8o9LCdzK4JTV4M4Wc5FhoELjENkDr6Jr
 W9heycVV8QVL/M5FIGR1GzOrCWAC9YmZzU6uo3Mrl+gSXMgWXcnDxV6GT/xCCBr9vM7Y
 aPrcQJZJUo0zIyGyo12qnpCfZvWZgNREmSIS74os+WfJMi5aPNAXb4dogwOOhIaVcWA1
 2rFrjwNrdeGCBh/PXLajvyiLuhTM2D9GD92RlToCUa5bsR+QV39cT04/vY2nyRMvd0m1
 eyCgsdoZK2jrYB1pduZAGP95bj+30QhUmra8+rO0Vcrw+iwyrUUSdiyUH7fYJ7RbtXQu
 nN5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=t2/hqPqqm8hOB/ANe6Gjk0ClfCchtUe2IOqTHAnGlBQ=;
 b=ViKOaO3nmNfOshIKvYXR3DKt1oSofglcqxm3MPRHYDXS2hgO69Ny/ulh5vUTaX9CvD
 zgmsYxU1m+JniXFtqs5yRJFs5jDZ2r6c5BmGO9heELFx3+YeadNDvbKA8EOukmQQHLkv
 53/WhYdFGO5aqoCGWWs5IdpC3D+LqJThwF0I1DkZ0pY4NY1bk1VG96QAk5FYhCzUboJB
 LQSMYo3RbpfLqxbLVJkQwybF/LH4gy9aCFMGxt8O0qmbdZThVzrB7wPKHdPLSDJdgbmk
 D7jvETArSOVpo200Of+rqunaSZbrVwDhaS3x1m5rS6uD8EwPbAl0X+ufyphdb9aPr2Ld
 npEw==
X-Gm-Message-State: AOAM532Hk8mB+5loKsZKI8zjOQWHsZ5j5Oxh53tuBBDSaolebt7I7hEr
 UKWVpf2C0tA/H5GZ4Rae51TxKEP+PlDirWSbDYU=
X-Google-Smtp-Source: ABdhPJylT+XkZ0/iatRp8vA3CHrQ/O5hEnkl0Y7H7n4tLFEIEACvWNDYkesGTHkGoxFGg/X8FZ60Xh/xwchaFVKx13Y=
X-Received: by 2002:a05:6122:a29:b0:321:dd99:acd8 with SMTP id
 41-20020a0561220a2900b00321dd99acd8mr763247vkn.3.1645087624287; Thu, 17 Feb
 2022 00:47:04 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:612c:a8c:b0:27a:1a1:b606 with HTTP; Thu, 17 Feb 2022
 00:47:03 -0800 (PST)
From: "Mrs.Malinda Andrew Khasmire" <am9061755@gmail.com>
Date: Thu, 17 Feb 2022 00:47:03 -0800
X-Google-Sender-Auth: ky7QK49seM30N3B4j47dAClMsPE
Message-ID: <CAG8ouFniXA0ZH-SK967sxUFdJ8wGDSn82e2vhyM6M_Jz9KXMxA@mail.gmail.com>
Subject: RESPOND URGENTLY...
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBGcmllbmQsCgpIb3cgYXJlIHlvdSBkb2luZyB0b2RheT8KCkNhbiB5b3UgcmVjZWl2ZSB0
aGUgc3VtIG9mIEVVUuKCrDcuNSBtaWxsaW9uIGluIHlvdXIgY291bnRyeSBmb3IKSW52ZXN0bWVu
dCBQdXJwb3Nlcz8gSSBiZWVuIGluc3RydWN0ZWQgYnkgbXkgQmFuayB0byBwcmVzZW50IGEKQmVu
ZWZpY2lhcnkgdG8gdGhlIGZ1bmQudGhhdCBpcyB3aHkgSSBjb250YWN0ZWQgeW91IHRvIHN0YW5k
IGFzIHRoZQpCZW5lZmljaWFyeSAvIEJ1c2luZXNzIFBhcnRuZXIuIFRoZSBGdW5kIGJlbG9uZ3Mg
dG8gZm9yZWlnbiBkZWNlYXNlZApDb250cmFjdG9yIHdobyBoYWQgbm8gaW5kaWNhdGlvbiBvZiBC
ZW5lZmljaWFyeSBvbiBoaXMgZGVwb3NpdApkb2N1bWVudHMuCgpJIHdpbGwgZ2l2ZSB5b3UgZnVy
dGhlciBkZXRhaWxzIGluIHRoaXMgcmVnYXJkIG9uY2UgSSBjb25maXJtIHlvdXIgcmVhZGluZXNz
LgoKUmVnYXJkcywKCk1hbGluZGEgQW5kcmV3IEtoYXNtaXJlLgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
