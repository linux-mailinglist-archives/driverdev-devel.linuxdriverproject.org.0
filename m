Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBF256154E
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jun 2022 10:40:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 311B360AF4;
	Thu, 30 Jun 2022 08:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 311B360AF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H4slmsvtsXTT; Thu, 30 Jun 2022 08:40:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8450860AE0;
	Thu, 30 Jun 2022 08:40:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8450860AE0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E5F761BF281
 for <devel@linuxdriverproject.org>; Thu, 30 Jun 2022 08:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BABFC408B0
 for <devel@linuxdriverproject.org>; Thu, 30 Jun 2022 08:40:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BABFC408B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nQTuN2DTGZed for <devel@linuxdriverproject.org>;
 Thu, 30 Jun 2022 08:40:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F344408A6
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F344408A6
 for <devel@linuxdriverproject.org>; Thu, 30 Jun 2022 08:40:01 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id o19so25951874ybg.2
 for <devel@linuxdriverproject.org>; Thu, 30 Jun 2022 01:40:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=0VFBNRjyKYMSiIcS+rAJSarCPrWcDvX+uQRmL9/yYac=;
 b=JJ9PUUBkNtFRKNHWGpEf0Wsi7k2neLQik1X2IvwHRhxDfpCxYkbCf8Swz7xzg7QcAW
 pzBa73zfI0AcQVbie6XuVwd+2UEP1RWqXl+lArhXE9KdQ5bPcqBGZXH/eW1CS1y8kyho
 1LmOcPQBUJqS2pnSCxcGps3SKZ/3gkcvRdGA/YrLMWur06pWs7EN5LBbHf9mZectKZrP
 PXSy7UIiMJ2zUpPmXEQZBGpk9vKJVLj0/vH5wE4sQ6kWDQ3V+9XKIPeFS/E47PwQEx22
 c+Q1a1c+EVUt1l5/alc4sOHNez0uosyZaz+E0iSsu9PsrUmhYAA5hCkJKRolbBggHZhD
 BgUQ==
X-Gm-Message-State: AJIora/J1pyjEzOGr6zk6/SSGJ+oInixWn8gIt5npmnA1IMTJXQRuWJA
 QHkpOJOLzOCMyOKroKapzQQ1ZefVtuRhxTCQghM=
X-Google-Smtp-Source: AGRyM1smRmw79+60Z3qz4eXStae2Nx05mQXdxLJ1yA7TF4OHhottEFBydMQwBiBfJAUIH9ItBR+xSoUUrPbuAwO9bA0=
X-Received: by 2002:a25:9ac1:0:b0:65c:bf5a:ce24 with SMTP id
 t1-20020a259ac1000000b0065cbf5ace24mr7920641ybo.378.1656578400157; Thu, 30
 Jun 2022 01:40:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6918:a426:b0:c6:cbf3:a9e with HTTP; Thu, 30 Jun 2022
 01:39:59 -0700 (PDT)
From: Barrister Bernard Kabosa <balike010@gmail.com>
Date: Thu, 30 Jun 2022 10:39:59 +0200
Message-ID: <CACdP_hmzgycoGG1s0_NTPvp7HFyYK7ezZFJYQfVxh9S1ZA=QkQ@mail.gmail.com>
Subject: Attention Sir.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=0VFBNRjyKYMSiIcS+rAJSarCPrWcDvX+uQRmL9/yYac=;
 b=mJUZY2ogcLLGLqg1pqiGAVA3rJbBtTuF8fyL1lHPJDtekm4nLUcfQlGqxlpHCEw1YS
 Fk9KPi0OQIl3eUlfcKPAS1rlPgEWSoeUTIwOBtl/u3tALlmxxsDAb/k2ybue9mtqnhO1
 TFtiMhR0thajC7JCPTsgYIW8LJdi+MZzq87U1pDAxGfEQdBZQv3PpLHLd2KKmKsqy2kI
 JWJ6uQTHxuriM4aQf3RYhdLLUwDG5jMoIyPm0GH86BliRnKjBKmjXGSfkPdlV+qQqGY8
 NRSnC/7gQgtveAVhONb6R0X6PZzi4UXSaS8Ef31X6Lw1jCboUkz+ukebmEgZL5kah4K3
 1LjQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=mJUZY2og
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
Reply-To: barristerbernkabosa@aol.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QXR0ZW50aW9uIFNpci4KCkkgYW0gQmFycmlzdGVyIEJlcm5hcmQgS2Fib3NhLEkgZ290IHlvdXIg
Y29udGFjdCB0aHJvdWdoIG15IHBlcnNvbmFsCnNlYXJjaC5JIGtub3cgdGhpcyBtZXNzYWdlIHdp
bGwgY29tZSB0byB5b3UgYXMgYSBzdXJwcmlzZSBiYXNlZCBvbiB0aGUKZmFjdCB0aGF0IHdlIGRv
buKAmXQga25vdyBlYWNoIG90aGVyLkkgYW0gbWFraW5nIHRoaXMgY29udGFjdCBpbiByZXNwZWN0
CnRvIG15IGxhdGUgY2xpZW50LCBoZSBkaWVkIGluIHRoZSBraW5ncyBjcm9zcyBzdGF0aW9uIHVu
ZGVyZ3JvdW5kIEJvbWIKYmxhc3QgaW4gTG9uZG9uLkhlIGlzIGEgbmF0aW9uYWwgb2YgUG9sYW5k
IGJ1dCBzcGVudCBhbGwgaGlzIGJ1c2luZXNzCnllYXJzIGhlcmUgaW4gQmVuaW4gUmVwdWJsaWMg
b2Ygd2VzdCBBZnJpY2EuIE15IGNsaWVudCBpcyBhIGNvbnN1bHRhbnQKd2l0aCAgZm9yZWlnbiBj
b21wYW5pZXMgb24gb2lsIGRlYWwgaW4gbWFueSAgYWZyaWNhbiBvaWwgY291bnRyaWVzIGFuZApo
ZSBkZXBvc2l0ZWQgc29tZSBmdW5kIGluIGEgU2VjdXJpdHkgdmF1bHQuCgpWaWV3IHRoaXMgd2Vi
c2l0ZSBmb3IgbW9yZSBkZXRhaWxzIG9mIHRoZQpib21iLmh0dHA6Ly9lbi53aWtpcGVkaWEub3Jn
L3dpa2kvN19KdWx5XzIwMDVfTG9uZG9uX2JvbWJpbmdzLgoKU2luY2UgdGhlIGRlYXRoIG9mIG15
IGNsaWVudCxJIGhhdmUgbWFkZSBlbnF1aXJpZXMgdG8gaGlzIGNvdW50cnkKZW1iYXNzeSBpbiBv
cmRlciB0byBsb2NhdGUgYW55IG9mIGhpcyB3aWZlLGNoaWxkcmVuIG9yIHJlbGF0aXZlcyBhbmQK
cHJlc2VudCBoaW0gdG8gdGhlIHNlY3VyaXR5IGNvbXBhbnkgYXMgaGlzIG5leHQgb2Yga2luLCBh
cyBJIGFtIHRoZQpvbmx5IHBlcnNvbiB0aGF0IGhhcyBhbGwgdGhlIGxlZ2FsIGF1dGhvcml0eSBh
bmQgcG93ZXIgdG8gcHJvdmlkZSBteQpjbGllbnQgbmV4dCBvZiBraW4sIGJ1dCB1bmZvcnR1bmF0
ZWx5IGFsbCBteSBsZWdhbCBlbnF1aXJpZXMgZmFpbGVkLgoKVGhlIHNlY3VyaXR5IGNvbXBhbnkg
c2VudCBtZSBhIHJvdXRpbmUgbm90aWNlLCBub3RpZnlpbmcgbWUgdGhhdCBJCmhhdmUgbGl0dGxl
IHRpbWUgdG8gcHJvdmlkZSBoaXMgbmV4dCBvZiBraW4gb3IgdGhleSB3aWxsIGhhdmUgdGhlIGZ1
bmQKY29uZmlzY2F0ZWQgYnkgdGhlaXIgYXV0aG9yaXR5LgoKU2luY2UgSSBoYXZlIGZhaWxlZCBp
biBhbGwgdGhlIGVucXVpcmVzIEkgbWFkZSBpbiBvcmRlciB0byBsb2NhdGUgaGlzCm5leHQgb2Yg
a2luLCBJIGhhdmUgZGVjaWRlZCBhZnRlciBzZXZlcmFsIHllYXJzIG9mIHRob3VnaHQgdG8gbG9v
ayBmb3IKYSB0cnVzdGVkIGFuZCByZWxpYWJsZSBmb3JlaWduZXIgd2hvbSBJIHdpbGwgcHJlc2Vu
dCB0byB0aGUgc2VjdXJpdHkKY29tcGFueSBhcyBteSBjbGllbnRzIG5leHQgb2Yga2luIHNvIHRo
YXQgdGhlIGZ1bmQgd2lsbCBiZSByZWxlYXNlZCB0bwpoaW0uSXQgaXMgcmlzayBmcmVlIGFuZCB2
ZXJ5IGVhc3kgdG8gZXhlY3V0ZSxJZiB5b3UgY2FuIGJlIHRydXN0ZWQgYW5kCndpbGxpbmcgdG8g
c3RhbmQgaW4gYXMgbXkgY2xpZW50cyBuZXh0IG9mIGtpbiwgbGV0IG1lIGtub3cgaW1tZWRpYXRl
bHkKc28gdGhhdCB3ZSB3aWxsIHByb2NlZWQuaWYgeW91IGhhdmUgcXVlc3Rpb25zIHlvdSBtYXkg
YXNrLgoKWW91cnMgZmFpdGhmdWxseSwKCkJhcnJpc3RlciBCZXJuYXJkIEthYm9zYS4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
