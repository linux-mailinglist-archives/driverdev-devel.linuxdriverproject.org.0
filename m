Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC90865ADF3
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Jan 2023 09:18:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23B7481E42;
	Mon,  2 Jan 2023 08:18:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23B7481E42
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KM3VnS_LDMVN; Mon,  2 Jan 2023 08:18:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0B1981E32;
	Mon,  2 Jan 2023 08:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0B1981E32
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2090A1BF372
 for <devel@linuxdriverproject.org>; Mon,  2 Jan 2023 08:18:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC95A60AE3
 for <devel@linuxdriverproject.org>; Mon,  2 Jan 2023 08:18:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC95A60AE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WmJWvYOrzJ2l for <devel@linuxdriverproject.org>;
 Mon,  2 Jan 2023 08:18:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5611260AD2
Received: from mail-yw1-x1141.google.com (mail-yw1-x1141.google.com
 [IPv6:2607:f8b0:4864:20::1141])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5611260AD2
 for <devel@driverdev.osuosl.org>; Mon,  2 Jan 2023 08:18:09 +0000 (UTC)
Received: by mail-yw1-x1141.google.com with SMTP id
 00721157ae682-476e643d1d5so273657677b3.1
 for <devel@driverdev.osuosl.org>; Mon, 02 Jan 2023 00:18:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=75B4sEUxNy/29aFeQH95ym+3My265CA+0fHPqD2mTFU=;
 b=H1giFhmjuMWRN0IQZ2n6nqzC7ejmq9JgSP7C05Twg0/y8JScDllC3KxPbypy+CJW2b
 HvfqowIlZhOsgvWdxZRm23TjheSvNvmZ8zLWqrNEsD1I1dY2ZqXg2nXzuCuhfrDdb5WY
 g2c6y/OQuJstpMvEIQRw6yI6R+EFafKXMq3Il8xW6oVks1f6v4yrVy0T9pqiwdWFbcr6
 lNbTN7fETLKisf/o8AaGO1k3vu1mCU6hE/4t0iWvh3/EaxdK8egVrIhmXVmrYWIuDCMz
 dKeVXd0y3KbfZGwByO1uf3U859B0441L6b6ONSVNHyqsrfp61dkn5tE0MwR2BLXlmqtB
 alVw==
X-Gm-Message-State: AFqh2koYPgKQ5iAZ8bCcNgTrd325lQ3LxVmx8LhYVbtld2AKojJ/GAzj
 cyTZeL/aDjSBvfG0leGAE7rU72i/koJgLGjfs9Y=
X-Google-Smtp-Source: AMrXdXs6JZM8LOpknCxJkFgoQsOAoHxwQgHMOV6xwfBPV/T2sVrTlD5LJasqO1qKjkZt1nJGLAUoHrmB0MwcgFM1UTk=
X-Received: by 2002:a81:1495:0:b0:465:d978:9724 with SMTP id
 143-20020a811495000000b00465d9789724mr5073425ywu.249.1672647488033; Mon, 02
 Jan 2023 00:18:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:5a84:b0:412:59f9:1b6b with HTTP; Mon, 2 Jan 2023
 00:18:07 -0800 (PST)
From: "Ms. Beatrix Bahraini." <francoiskomivi@gmail.com>
Date: Mon, 2 Jan 2023 00:18:07 -0800
Message-ID: <CAMgerwpK_wTVUXAhD11LmLSgDv1ibVDWid-vyp43VEXQp6nFoQ@mail.gmail.com>
Subject: My Dearest in the Lord:
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=75B4sEUxNy/29aFeQH95ym+3My265CA+0fHPqD2mTFU=;
 b=bOnSvhtPreyWJ6t795ZK6a8ckf2sW153uExgQiz97EDo7A6muQ27pI34hhAcrXHI1P
 CwclACFNqzMn2nUkvdDhfVDhIejP9fSJ8OhfxuJWcHmZ9RwSQ+BAdfGHpYVjLbzDYOkb
 T7y4tvtap1lryVVGVxbppYgYWF0JvGU22z6LZFspqr9mdb/LOg2xpgFTMNCgZ9ao4gT6
 hO0J7zr1kaKZWTCTunXzyYJk70SR3mj0KFmbOQomEBH9aO+j1er9MexZ0/EHj0g3J2Aq
 4IbxHQrq95YZC/kdZUTCRYEUkQ/uuPu3HDgtUvUnR36+xnpfoMgmThGYDR4WaJgFM1Nz
 P03w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=bOnSvhtP
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
Reply-To: beatrixbahraini@att.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCk15IERlYXJlc3QgaW4gdGhlIExvcmQ6CgpHcmVldGluZ3MgdG8geW91LiBJ4oCZbSBNcy4g
QmVhdHJpeCBCYWhyYWluaS4gdGhlIHdpZG93IG9mIGxhdGUgRHIuCkdlb3JnZSBTb2xvbW9uLCBJ
4oCZbSA1NiB5ZWFycyBvbGQsIHN1ZmZlcmluZyBmcm9tIHByb2xvbmdlZCBjYW5jZXIgb2YKdGhl
IGJyZWFzdCwgZnJvbSBhbGwgbWVkaWNhbCBpbmRpY2F0aW9ucyBteSBjb25kaXRpb24gaGFzIHJl
YWxseQpkZXRlcmlvcmF0ZWQgYW5kIGl04oCZcyBwcmV0dHkgb2J2aW91cyB0aGF0IEkgbWF5IG5v
dCBsaXZlIGZvciB1cCB0byBzaXgKbW9udGhzIG93bmluZyB0byB0aGUgcmFwaWQgZ3Jvd3RoIGJ5
IHN0YWdlIGFuZCB0aGUgZXhjcnVjaWF0aW5nIHBhaW4KdGhhdCBhY2NydWVzIHRvIGl0LgoKSSBo
YXZlIGFuIGFtb3VudCBvZiAkIDYsMzAwLDAwMC4wMCAoU2l4IE1pbGxpb24sIFRocmVlIEh1bmRy
ZWQKVGhvdXNhbmQpIG9ubHkgbHlpbmcgZmFsbG93IHdpdGggdGhlIFJveWFsIEJhbmsgb2YgU2Nv
dGxhbmQgKFRoZSBOYXQKV2VzdCBCYW5rKSB3aGljaCBJIGluaGVyaXRlZCBmcm9tIG15IGxhdGUg
aHVzYmFuZCB0aGF0IEkgd2lsbCBsaWtlIHRvCndpbGwgdG8geW91IGZvciBIdW1hbml0YXJpYW4g
c2VydmljZSwgZm9yIHRoZSBjaHVyY2ggb2YgR29kLCB0aGUgcG9vcgphbmQgdGhlIHZpY3RpbSBv
ZiBjYW5jZXJzIGFuZCBvdGhlciB2dWxuZXJhYmxlIGRpc2Vhc2VzLgoKS2luZGx5IGdldCBiYWNr
IHRvIG1lIGZvciBtb3JlIGRldGFpbHMgb24gaG93IHRoZSBmdW5kIGNvdWxkIGJlCmNsYWltZWQg
YW5kIHRyYW5zZmVycmVkIHRvIHlvdXIgZGVzaXJlZCBiYW5rIGFjY291bnQuIE1heSB0aGUgZ3Jh
Y2UKYW5kIGJsZXNzaW5ncyBvZiBHb2QgYmUgYW5kIHJlbWFpbiB3aXRoIHlvdS4KCiBJIHNoYWxs
IGJlIGF3YWl0aW5nIHlvdXIgcmVzcG9uc2UuClJlZ2FyZHMsCk1zLiBCZWF0cml4IEJhaHJhaW5p
LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
