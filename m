Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2E64BF3C5
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Feb 2022 09:36:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A19144054A;
	Tue, 22 Feb 2022 08:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8XTE8BeEr3tG; Tue, 22 Feb 2022 08:36:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5854C4006C;
	Tue, 22 Feb 2022 08:36:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ACC311BF28D
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 08:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B8B381416
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 08:36:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mSsSZs8Juuqv for <devel@linuxdriverproject.org>;
 Tue, 22 Feb 2022 08:36:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 636D381414
 for <devel@driverdev.osuosl.org>; Tue, 22 Feb 2022 08:36:41 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id t21so14371964qkg.6
 for <devel@driverdev.osuosl.org>; Tue, 22 Feb 2022 00:36:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=L0V3tEWU6RXdv4sHk2WURUiKYv8hNk/3Vb4RrbCcOlY=;
 b=nHLacKXI00sKbvSzz1HqqnP31Xy9HX7shSUEFWWqQHGFa44ngagY2Il1SuzzUxNivT
 oeP/9hk0k3KGTD0LPmTOIkoxC34dKfIYvycRAneT+pgXKiK4+in9SlBQ8XotVz3YUZA+
 1TXPobLNh21X6aKDto6nB6B7qpAQaA2TKjmYiMCTGBVI68cSlrQQg2yPIu6T9nTHOnX9
 LLie4TC9Qp5kKub+7xuO4weLWhQm/0CgbXzOWc7gqfnnFYizHcucNHZI+JslfLQ19CUd
 8KiTLYBH04fjBOuvIFPCGbypb2oRKlzKRE9qzneD/VB0y+epqXxQ2osz3iBW3T/6IV+1
 oXCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=L0V3tEWU6RXdv4sHk2WURUiKYv8hNk/3Vb4RrbCcOlY=;
 b=c1zPsQNq23FuiCYqmJabGf8rSMg1SGrLN05lJiUDxzLVixWbSSCptQlvThaRA+trwW
 9yrllnvSJEo9FXXJ60EwCaHBnbK/rEs2vQoeD4B/m7d2zjInl1fnle7/53rJZzJwIV1b
 f9U1cEDB9vyCmhD71C4dIOnvkZIt9u9ppHO6+HXdYjT2FtaM1co1FFtiXhx6rupbE4zN
 IvChJbIQ7hhpj16hPBIbxlZEHpf64Zy5MpvURCzZjYqRYF5JSnqq+27OOCcTEVUPadrY
 0Zc36cZ39/NfhPYM9PBZlGbpp1yl4ZmfYEKJfr//KAZoNFTw+Z80J1LObqfae4f6MXFE
 j69w==
X-Gm-Message-State: AOAM533MlMg41xbaNI7f+bF7apu6NVuft8Y0b1FA0xpP5Le8LnsR5YGZ
 Yf8LLTpNX8jt0+nFEYW5Bjmd1ssxMHFlN5r4jrw=
X-Google-Smtp-Source: ABdhPJz/FZM4zBQYsTfXu2bz/ieM/chd7/OXcNaeLQyS/e/4qGBy1C3Mo01gAE2n834cdxTVpK1xbG15bfMP2g9Aozw=
X-Received: by 2002:a37:a347:0:b0:47f:3a7a:40d0 with SMTP id
 m68-20020a37a347000000b0047f3a7a40d0mr14534956qke.746.1645518999847; Tue, 22
 Feb 2022 00:36:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:4ea8:0:0:0:0:0 with HTTP; Tue, 22 Feb 2022 00:36:38
 -0800 (PST)
From: AISHA GADDAFI <kelvin.curtsscaparoti@gmail.com>
Date: Tue, 22 Feb 2022 00:36:38 -0800
Message-ID: <CAAZdrmqYVNk=vWPADHvShGhtSw8kddOa1ae=Z19MQN7d+v=i2w@mail.gmail.com>
Subject: Liebster Freund,?
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
Reply-To: ayishagddafi@mail.ru
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkxpZWJzdGVyIEZyZXVuZCwKCkltIE5hbWVuIEdvdHRlcywgZGVzIGduw6RkaWdzdGVuLCBi
YXJtaGVyemlnc3Rlbi4KCkZyaWVkZSBzZWkgbWl0IGRpciB1bmQgQmFybWhlcnppZ2tlaXQgc2Vp
IG1pdCBkaXIgdW5kIFNlZ2VuIHNlaSBtaXQgZGlyLgpJY2ggaGFiZSBkaWUgU3VtbWUgdm9uIDI3
LDUgTWlsbGlvbmVuIFVTRCBmw7xyIEludmVzdGl0aW9uZW4sIGljaAppbnRlcmVzc2llcmUgbWlj
aCBmw7xyIFNpZSBmw7xyIGRpZSBVbnRlcnN0w7x0enVuZyB2b24KSW52ZXN0aXRpb25zcHJvamVr
dGVuIGluIElocmVtIExhbmQuIE1laW4gTmFtZSBpc3QgQWlzaGEgR2FkZGFmaSB1bmQKbGViZSBk
ZXJ6ZWl0IGltIE9tYW4sIGljaCBiaW4gZWluZSBXaXR3ZSB1bmQgYWxsZWluZXJ6aWVoZW5kZSBN
dXR0ZXIKbWl0IGRyZWkgS2luZGVybiwgZGllIGVpbnppZ2UgbGVpYmxpY2hlIFRvY2h0ZXIgZGVz
IHZlcnN0b3JiZW5lbgpsaWJ5c2NoZW4gUHLDpHNpZGVudGVuIChkZW0gdmVyc3RvcmJlbmVuIE9i
ZXJzdCBNdWFtbWFyIEdhZGRhZmkpIHVuZApzdGVoZSBkZXJ6ZWl0IHVudGVyIHBvbGl0aXNjaGVt
IEFzeWxzY2h1dHogZGVyIG9tYW5pc2NoZW4gUmVnaWVydW5nLgoKQml0dGUgYW50d29ydGVuIFNp
ZSBkcmluZ2VuZCBmw7xyIHdlaXRlcmUgRGV0YWlscy4KClZpZWxlbiBEYW5rCk1pdCBmcmV1bmRs
aWNoZW4gR3LDvMOfZW4gQWlzaGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
