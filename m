Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C05B6661449
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Jan 2023 10:27:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CFC260A6D;
	Sun,  8 Jan 2023 09:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CFC260A6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X2Pyr0NwaSUj; Sun,  8 Jan 2023 09:27:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3E0260A68;
	Sun,  8 Jan 2023 09:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3E0260A68
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 898AE1BF592
 for <devel@linuxdriverproject.org>; Sun,  8 Jan 2023 09:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63D89410E8
 for <devel@linuxdriverproject.org>; Sun,  8 Jan 2023 09:27:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63D89410E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zvgB0URTzQ3O for <devel@linuxdriverproject.org>;
 Sun,  8 Jan 2023 09:27:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA35C410E4
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA35C410E4
 for <devel@driverdev.osuosl.org>; Sun,  8 Jan 2023 09:27:03 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-4c7d35b37e2so21016197b3.2
 for <devel@driverdev.osuosl.org>; Sun, 08 Jan 2023 01:27:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=L0V3tEWU6RXdv4sHk2WURUiKYv8hNk/3Vb4RrbCcOlY=;
 b=jCo8UBY3gzc7iNIv3M+g7TotbEn+KYl1LVO5tsFE+wmTf2qUMznrSvpBN0NhXhkrMl
 xHZ7aKphU25MgxH8xgsHFw15HB9gwwgiab2gfEqcbcD/Tov1r+YqxXtI/RtH5Be9SCuk
 kspMx+zyGAvDF0JhlOhYgtfRuVwLs05BgWQiMNO1A+eBDAxFBTmqvx0zsKtk+/J5Bfyg
 mDAHIgB7929VIX0P+iLj8eVU8ou/eNRBtE3zSS68YgLoH4af7chJUukUn6G51+zOF5EI
 7OTtdmynIygJ1bnEhmep2Jx4Rb43RVXEG39eWlencqVjYVOduCxfgiwxw1fl5DRieM1k
 Yx5Q==
X-Gm-Message-State: AFqh2koviPB1oBZtv+Q1hx8t2ZLnwCTM2GDankYUPRWTH4E3Rp0oyP8S
 nvQzcwCEBnP1ynBP2lu7KqEM0jQwvKFzXcxSy6M=
X-Google-Smtp-Source: AMrXdXvEB2U1IyhhF6oZ/+CFL31JGm0Lgh9Bpu2O8QBRx4nVj3bK6gpuIUJcUW8xjV/lr1W2KbVxDlR55IOXCv5mKww=
X-Received: by 2002:a0d:f806:0:b0:391:fccf:db48 with SMTP id
 i6-20020a0df806000000b00391fccfdb48mr519161ywf.257.1673170022307; Sun, 08 Jan
 2023 01:27:02 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:5c44:b0:414:e8b1:34c with HTTP; Sun, 8 Jan 2023
 01:27:01 -0800 (PST)
From: AISHA GADDAFI <scoulibaly950@gmail.com>
Date: Sun, 8 Jan 2023 10:27:01 +0100
Message-ID: <CAAhOtaqCLDiaUqd3vxnVuip1zBkhD_va6UCjLeRnC9C7z--Q2Q@mail.gmail.com>
Subject: Liebster Freund,?
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=L0V3tEWU6RXdv4sHk2WURUiKYv8hNk/3Vb4RrbCcOlY=;
 b=qLTtjOenzC+X0pvm0dGVBnpt6+0KajASSqIJWyrQOrUAQWhmyJkWhFDinQNqVy4QAL
 OkyPVPDwcEJHKO6yaS+0J8UMNDnDWJVG96/fn5w2l73KztCbwTKIJzEDpcj1ya885pVt
 QsQwakxFRBtq0kXhjIQe3QJHD/mygxNLKgkmiPwu9DU7LL7dP35q36B70mWNyk3IQQnv
 iRlfhMFDLodn9buoVGkBsqFI7s7g3UVBv345PpHl0ED8Onr+zkjHUGCL/zQhk3lWpMiS
 f4Y+B10n0aVHVL6hy1bAbfS4l03Q8xdNOuUcwF1jNpI15/QpyMgQQRkFijzKcVl9uteH
 0yuQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=qLTtjOen
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
