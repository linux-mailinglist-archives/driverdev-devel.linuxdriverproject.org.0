Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B455583ED8
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jul 2022 14:29:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90486418E4;
	Thu, 28 Jul 2022 12:29:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90486418E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M8Xpu146G5n3; Thu, 28 Jul 2022 12:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1814041840;
	Thu, 28 Jul 2022 12:29:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1814041840
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8FD191BF3F2
 for <devel@linuxdriverproject.org>; Thu, 28 Jul 2022 12:29:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A2E060AD7
 for <devel@linuxdriverproject.org>; Thu, 28 Jul 2022 12:29:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A2E060AD7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P_yt1OksALk5 for <devel@linuxdriverproject.org>;
 Thu, 28 Jul 2022 12:29:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65888607A1
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65888607A1
 for <devel@driverdev.osuosl.org>; Thu, 28 Jul 2022 12:29:16 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id q14so1266988iod.3
 for <devel@driverdev.osuosl.org>; Thu, 28 Jul 2022 05:29:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=X0OsGdJZS7Xoem/2HlbqnYGlc0IrgkQ6aYmlGHce2Fs=;
 b=EJg+yq3gwHPitReU5PLuJbk+qVPIYMkFNTjPX57v9SWBDYVrEisttCjNn9ZIC4P1aM
 yGnSOyyLQ7vo7/7zYpLjJtcMjoOVQez0H3lH/H8K2Z8Z70PGWscmtW6dLSYlxbyhlXcA
 SKAC1KMiphbZ9XMq9mc25K1p+jatY7pm5cAMD8V5tH7rTF7ec6O3xo45jie7eTbuf2Dx
 PkHpdHQ0oloiHcktvGeIvLkpeMqJDUo9zaxgnnSwpYHe1iCbRkOccP980gMeMl3/Uu2s
 P8JzZwcJ0o+1cOO+017zZj/JHE/hDtxunxqd/7K9ZW1F/TMuNgeWf+/PhZEhP2eu+Vt7
 txDQ==
X-Gm-Message-State: AJIora+IwVqQuD2UuiGRzRiZcFZvrro4BF2ShcA2denwGKlWNNIOhBeo
 bOFu9+igJfXjMGwNcB/1QpJHnEe8g4YSy46yx5Q=
X-Google-Smtp-Source: AGRyM1sE3LOdSfonNLUvLZI5QIPiUtpQlScRPymbEj1fCdsEemMKTm0i8t5gXVQHNNzKc2GFMaZQss4F/KlE/n5gAxQ=
X-Received: by 2002:a05:6638:2614:b0:33f:5bc2:b385 with SMTP id
 m20-20020a056638261400b0033f5bc2b385mr10585233jat.246.1659011355452; Thu, 28
 Jul 2022 05:29:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4f:b013:0:0:0:0:0 with HTTP; Thu, 28 Jul 2022 05:29:14
 -0700 (PDT)
From: OLSON FINANCIAL GROUP <abdullahiumaradam331@gmail.com>
Date: Thu, 28 Jul 2022 05:29:14 -0700
Message-ID: <CAJwp9149+k32biSBoYPrKRDPhvuaHqoRNKU2s8mK0b5XYVmJjQ@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=X0OsGdJZS7Xoem/2HlbqnYGlc0IrgkQ6aYmlGHce2Fs=;
 b=UmOLFoo+7nAijUpM33A9yKqhISmkRjFYuUPJfpr/H7VEp7eLNgWVOzDlbsq6K0trIU
 V1kvXiJ6vfR0zGNH+DcPTSWG9S7m7Y7u5WXxw2VYxsdDj6wTugnlettqlriAnMvldoZ5
 MCjTBuMQ6OnmoOAmvcR/dbpypWdf5AgYsncZnmQZFEn4NYOy6X56LPkh49FiQLc/SZSs
 CwDOAyr2hAL8R6QKCMwdrCLTqAPBJ9y/8GRCb8NRAmwCKtJuTexZl8DAsuiDuMxHh2rk
 SPOxU/fha3iwazQYgjo3nUiZojM65oO+9UtbTZgRM+EXGol8ckCLoeIzDClow9NLkIH8
 XElA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=UmOLFoo+
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
Reply-To: golsonfinancial@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCgoKLS0gCkhhbGxvIGd1dGVuIFRhZwpCZW7DtnRpZ2VuIFNpZSBkcmluZ2VuZCBlaW5lbiBL
cmVkaXQgZsO8ciBkZW4gQXV0b2thdWY/IG9kZXIgYmVuw7Z0aWdlbgpTaWUgZWluIEdlc2Now6Rm
dHMtIG9kZXIgUHJpdmF0ZGFybGVoZW4sIHVtIHp1IGludmVzdGllcmVuPyBlaW4gbmV1ZXMKR2Vz
Y2jDpGZ0IGVyw7ZmZm5lbiwgUmVjaG51bmdlbiBiZXphaGxlbj8gVW5kIHphaGxlbiBTaWUgdW5z
IGRpZQpJbnN0YWxsYXRpb25lbiB6dXLDvGNrPyBXaXIgc2luZCBlaW4gemVydGlmaXppZXJ0ZXMg
RmluYW56dW50ZXJuZWhtZW4uCldpciBiaWV0ZW4gUHJpdmF0cGVyc29uZW4gdW5kIFVudGVybmVo
bWVuIEtyZWRpdGUgYW4uIFdpciBiaWV0ZW4KenV2ZXJsw6Rzc2lnZSBLcmVkaXRlIHp1IGVpbmVt
IHNlaHIgbmllZHJpZ2VuIFppbnNzYXR6IHZvbiAyICUuIEbDvHIKd2VpdGVyZSBJbmZvcm1hdGlv
bmVuIHNlbmRlbiBTaWUgdW5zIGVpbmUgRS1NYWlsIGFuOgpnb2xzb25maW5hbmNpYWxAZ21haWwu
Y29tLi4uLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
