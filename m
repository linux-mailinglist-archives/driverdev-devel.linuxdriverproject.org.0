Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D806DB03D
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Apr 2023 18:10:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBBEB616DA;
	Fri,  7 Apr 2023 16:10:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBBEB616DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9xvGOg5DkkQA; Fri,  7 Apr 2023 16:10:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8CAC616CF;
	Fri,  7 Apr 2023 16:10:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8CAC616CF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26D7B1BF23B
 for <devel@linuxdriverproject.org>; Fri,  7 Apr 2023 16:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0ADC242057
 for <devel@linuxdriverproject.org>; Fri,  7 Apr 2023 16:10:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0ADC242057
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r4dXFeOLHUmw for <devel@linuxdriverproject.org>;
 Fri,  7 Apr 2023 16:10:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C0A942039
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C0A942039
 for <devel@driverdev.osuosl.org>; Fri,  7 Apr 2023 16:10:07 +0000 (UTC)
Received: by mail-yb1-xb30.google.com with SMTP id ch3so266790ybb.4
 for <devel@driverdev.osuosl.org>; Fri, 07 Apr 2023 09:10:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680883806; x=1683475806;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GwldnxxVZHZIeHVMt8UZiIsJemyEAuafmPtqrxMMBXQ=;
 b=d6/nfZrR6u86Tuj2r7zsN60hh2YajK4T9JXYuhfIVXXmZTvD08HmThE6a/FhjOyu+J
 vUMSGQxCmULV2gT/dkJgS+7rNm0wG+3FwDpoWW56Os8pOMEAnsoeHkeNuuqjHm+QzMNs
 zxHmAJlB3pDW4GQo/IoJmBhdiisR0dxU9WJoDF5WB7SW7rTHMqCLyF6M5Yocecav5EnJ
 n4ZioQ1J7m4Cj1gwCKKfsoR0EFkMBEM3mN8TUjFuGHBrlVqPXAAco+YWdFkD/yx2dwU8
 WSY4Pog+6OlHSqzmN0ANnzc20i2LZuvlTQXkRGVQb/ztUiGNHdN9PKddFxNltXrTBMX9
 RcTg==
X-Gm-Message-State: AAQBX9cGJhwhZ9TwSomFY+usFigmjRdX0Tww/FA8egYDS0SxIlCgMhMo
 gm1aN+NPPcPFJuieO6/NaY2YylFY6tVbJmqrdN8=
X-Google-Smtp-Source: AKy350Z3iYFbH+whA94p672L93bzTel/tun015ARG5VWyejY8Me4CzzkeVHE0GCcLX6WZu4SmilP3cxul42kmLDdipU=
X-Received: by 2002:a25:6c07:0:b0:b8b:eea7:525b with SMTP id
 h7-20020a256c07000000b00b8beea7525bmr2027126ybc.7.1680883806055; Fri, 07 Apr
 2023 09:10:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:24c8:b0:490:e27d:edd9 with HTTP; Fri, 7 Apr 2023
 09:10:05 -0700 (PDT)
From: mrs Annie Hyemin kim <mrsanniehyemink@gmail.com>
Date: Fri, 7 Apr 2023 16:10:05 +0000
X-Google-Sender-Auth: ay9gTjy5eZKYx-jWGiHMqfSUes8
Message-ID: <CAPoMtKeThMXCWE6NU+0xROx5kZXwJ1f2O-w4hmGCxwcC717FyQ@mail.gmail.com>
Subject: salamlar,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680883806; x=1683475806;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=GwldnxxVZHZIeHVMt8UZiIsJemyEAuafmPtqrxMMBXQ=;
 b=IsSxetNKc+bHDJMQH39/zyBvLPyMHxBgN5MlqdILc3cqrJvVGg/W3gZkF2Y3CXUsVp
 1ke8YhOGIQKtlUCLGn7proikL2GWVnJgjMMvw1bSg2gfI/5f7Cs0P2Qd3dql0xDIqMaF
 0kgegNuXCD2XPLNMwcBLfZ2CjxnQG5fJwQDemnSoXJXl3gaKuEc5KkYmSvEqJEA6FBLL
 RV1/NdaY0PPPFtpWUzE/hAYaWyUD58NIjNrgfugvblKmQnaG4TazYXKtb5h81f3d4uUd
 rXerMVQPA2OkJtO2CBC9G0QlBxTxvVLqX2ynEmAMcHHR5pUncRGN67IIrL0R/1jAWXHG
 g/Ww==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=IsSxetNK
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

c2FsYW1sYXIsDQoNCkJ1IG3JmWt0dWJ1IHNpesmZIHNpemlubMmZIGV5bmkgc295YWTEsSBkYcWf
xLF5YW4gbcmZcmh1bSBtw7zFn3TJmXJpbWzJmSBiYcSfbMSxDQp5YXrEsXJhbS4gUsmZaG3JmXRs
aWsgbcO8xZ90yZlyaW0gYXZ0b21vYmlsIHHJmXphc8SxbmRhIGTDvG55YXPEsW7EsSBkyZl5acWf
aWIsDQpxb2h1bWxhcsSxIGlsyZkgaGXDpyBiaXIgxLByYWTJmWTJmW4gyZlsIMOnyZlrbcmZZGl5
aSDDvMOnw7xuIMmZbGFxyZkgc2F4bGF5YQ0KYmlsbWlyyZltIHbJmSBvLCBracOnaWsgdcWfYXEg
aWvJmW4gw7Zsa8mZbcmZIGfJmWxtacWfZGkuIE3JmW4gYnVudSBldG3JmWsNCm3JmWNidXJpeXnJ
mXRpbmTJmXnJmW0sIMOnw7xua2kgYmFua8SxbiBtw7zFn3TJmXJpbWluIHbJmXNhaXRsyZlyaW5p
IHTJmWzJmWINCm9sdW5tYW3EscWfIG1pcmFzIGtpbWkgYmFuayB4yZl6aW7JmXNpbsmZIGvDtsOn
w7xybcmZc2luaSBpc3TJmW3JmXpkaW0gdsmZIGPJmWxiDQpvbHVuYW4gbcmZYmzJmcSfIDYsOCBt
aWx5b24gZG9sbGFyIHbJmSB0yZlobMO8a8mZc2l6IHNheGxhbm1hc8SxIMO8w6fDvG4gYmFua8Sx
bg0KdMmZaGzDvGvJmXNpemxpayDFn8O2YsmZc2luyZkgcW95dWxtdcWfIDI1MCBraWxvcXJhbSBx
xLF6xLFsZMSxci4gTywgaGXDpyBiaXINCnFleWRpeXlhdGRhbiBrZcOnbWnFnyBxb2h1bXUgb2xt
YWRhbiDDtmxkw7wgdsmZIGJlbMmZbGlrbMmZLCBmb25kbGFyIGluZGkNCmHDp8SxcSBiZW5lZmlz
aWFyIG1hbmRhdMSxbmEgbWFsaWtkaXIuIFhvxZ9iyZl4dGxpa2TJmW4sIGjJmXIgaWtpbml6aW4g
c295YWTEsQ0KZXluaWRpciwgb25hIGfDtnLJmSBkyZkgc2l6aSBvbnVuIHLJmXNtaSBxb2h1bXUg
ZXRtyZlrIMOnb3ggYXNhbiBvbGFjYXEuDQrGj2fJmXIgbWFyYXFsYW7EsXJzxLFuxLF6c2EsIG3J
mW7JmSBiaWxkaXJpbiBraSwgc2l6yZkgbsmZIGVkyZljyZl5aW1peiBiYXLJmWTJmQ0KyZl0cmFm
bMSxIG3JmWx1bWF0IHZlcmltLg0KSMO2cm3JmXRsyZksDQpYYW7EsW0gQW5uaWUgSHllbWluIEtp
bQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
