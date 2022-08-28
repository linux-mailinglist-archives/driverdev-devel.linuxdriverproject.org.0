Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF32A5A3AA1
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Aug 2022 02:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05177607B4;
	Sun, 28 Aug 2022 00:30:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05177607B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zMaOygVpxdaG; Sun, 28 Aug 2022 00:30:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEC21605BE;
	Sun, 28 Aug 2022 00:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEC21605BE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8672D1BF963
 for <devel@linuxdriverproject.org>; Sun, 28 Aug 2022 00:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6121981B70
 for <devel@linuxdriverproject.org>; Sun, 28 Aug 2022 00:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6121981B70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id if5SMZOr8Q8R for <devel@linuxdriverproject.org>;
 Sun, 28 Aug 2022 00:30:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E268981B3E
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com
 [IPv6:2607:f8b0:4864:20::e35])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E268981B3E
 for <devel@driverdev.osuosl.org>; Sun, 28 Aug 2022 00:30:05 +0000 (UTC)
Received: by mail-vs1-xe35.google.com with SMTP id 67so5122830vsv.2
 for <devel@driverdev.osuosl.org>; Sat, 27 Aug 2022 17:30:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:x-gm-message-state:from:to:cc;
 bh=xLb3TQx9KxuMxtf3xcCBiCwA8sPGsTzld99AYCOXRKI=;
 b=LQOrqiVPdAzuzynFIHqayRXvrJxzqmOqX/+HpQyvjz0dKlCDVnWk1xo9r1l44GjyCd
 t5oWb7OwOgB+5FNQCG7mr5efH0R/NilHAM9ZuuQnNIZFMrev/v7kq28+voDK96HDvClX
 FvuSxg1NEh4JfwxDvDA3BWC+qM9esoDClqXbVZcRSH0qldIxQ5RWv/vPyVPLsRSQfGuE
 RMSIgnTWXYKABUHKaAXDp4fZjqFwGTPZqGfgs7B+hxxXQGtnIH/dOKw4i/4RdBrPwCEu
 m1xlmcMXnWOvXy1VsmO4nY0TwbvtuVdg/fIkuewbU/coYZvxhUEwZOf3/IEmVDQTPASw
 XG6w==
X-Gm-Message-State: ACgBeo03CGZfIR2iPc2uIJHnho0iR3ph4Zp5M6Sci9DO8xJP1RNTnoQ6
 Ky3Cr5Z3hDHdDnpjEvALQ2UTqYcPHJq6Vsy2jB8=
X-Google-Smtp-Source: AA6agR7nduxSoFBR2GGAWjh6z3KWrMLxcbbi2BONDse9hu2GQ264+2aAAw2J8mJsJNZJSQPhFY22JnruPSe2kl2+9M4=
X-Received: by 2002:a67:d60f:0:b0:390:1d18:289 with SMTP id
 n15-20020a67d60f000000b003901d180289mr1861653vsj.62.1661646604805; Sat, 27
 Aug 2022 17:30:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6130:28b:0:0:0:0 with HTTP; Sat, 27 Aug 2022 17:30:04
 -0700 (PDT)
From: Miss Reacheal <reacheal4u@gmail.com>
Date: Sun, 28 Aug 2022 00:30:04 +0000
X-Google-Sender-Auth: tnfABRst4IAGW_Qhqkz3FurGXgA
Message-ID: <CAGcQMfi1zUgE=8wL6FjLmEfoG7uyBe+-DYU4yVs5sXOKsmyn9Q@mail.gmail.com>
Subject: RE: HELLO DEAR
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:from:to:cc;
 bh=xLb3TQx9KxuMxtf3xcCBiCwA8sPGsTzld99AYCOXRKI=;
 b=Obhx2RMQOSmKkz6etn2qL4f3STp9DHQLbxAUSSy4vd+F9RKvPvSXxGx940k+jV0Qaq
 CgpFp2KaF/GXnDRPNNq7qX2ywV44KNWF8lWS7rvieFnnEP4NVc8tmZ+DrkgOPGf5RztQ
 XDyYMbZC+5cSqsQrIqy+LvBTVuT5yjNCCF1xwA2eVG5YFtUGJXDaJv5CncCU7C1iATiK
 Cn7l6gxyzIbmwbRRuM/SEYizy5lhNbLnf0fYQ3nhxFLotJPkJDWIMYqxzkwDdC0RPl17
 Lc+lDcEElb1JFDujuto/EjkwV8r1SKXQWPghGgQ2O5FYKjg0UzlOKqo7JTmDjreEifsR
 gNlQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Obhx2RMQ
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

SGFsbG8sCgpTaWUgaGFiZW4gbWVpbmUgdm9yaGVyaWdlIE5hY2hyaWNodCBlcmhhbHRlbj8gSWNo
IGhhYmUgU2llIHNjaG9uCmVpbm1hbCBrb250YWt0aWVydCwgYWJlciBkaWUgTmFjaHJpY2h0IGlz
dCBmZWhsZ2VzY2hsYWdlbiwgYWxzbyBoYWJlCmljaCBiZXNjaGxvc3Nlbiwgbm9jaCBlaW5tYWwg
enUgc2NocmVpYmVuLiBCaXR0ZSBiZXN0w6R0aWdlbiBTaWUsIG9iClNpZSBkaWVzIGVyaGFsdGVu
LCBkYW1pdCBpY2ggZm9ydGZhaHJlbiBrYW5uLgoKd2FydGUgYXVmIGRlaW5lIEFudHdvcnQuCgpH
csO8w59lLApGcsOkdWxlaW4gUmVhY2hhbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
