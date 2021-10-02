Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D791841FB84
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Oct 2021 14:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC75640865;
	Sat,  2 Oct 2021 12:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GYqcljQa_1Wk; Sat,  2 Oct 2021 12:04:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2890404A1;
	Sat,  2 Oct 2021 12:04:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE8E01BF23C
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  2 Oct 2021 12:04:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA8854086A
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  2 Oct 2021 12:04:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kGed4Toq24dh
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  2 Oct 2021 12:04:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com
 [IPv6:2607:f8b0:4864:20::d29])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26C4A4085E
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  2 Oct 2021 12:04:12 +0000 (UTC)
Received: by mail-io1-xd29.google.com with SMTP id d18so14677660iof.13
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 02 Oct 2021 05:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=nsZbpm1YBoHMpWTnzHLuE/zYZ0yg4jBiKD5Q7oCTPBE=;
 b=LepwbRJcqbW2e5l0WGGM4PEj/FtCwnWLJTdy6DKWRiVWVQPBEvILwfwRnTFUPFt2WD
 gQWF4IcusHSB60szF/Za9kqAIXOYf54xwo71UEKgqkv5GlB8VWA6jTkfKTH4M/hUqFYs
 L0Vyhrigf/tiBII3Ta+hYV7vKDNuVzU7rwrraKMkqn0CBEaFbjVGZGhfuoaj9rH5GOc0
 iHGQ7t8BnvrBJ/49kw+lwqdOfZJmijaEeHDWIBQO3jwzogttVVWJ0FyrKFi60+P3E7F6
 uRiXXiE3/FgsshuOXCYZM2QliNg9KDHM/CdCjCDx4H/xsCIQj554z7W0hi3jRHkBtyyf
 kbKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=nsZbpm1YBoHMpWTnzHLuE/zYZ0yg4jBiKD5Q7oCTPBE=;
 b=ix8t0Zpo3qpO39cIbUVIOkLwtshoFAAst2IFEi4b+gXjZjMuT9ci1zBvFEY3odI56z
 6Yq4Pa3vvFKXRc5OfVd+ZzzcgoQGm8jr+zIHI6+q+AMxqgHW9+ylMblUlnlscFcFNI3u
 zMhlTd+dOV/fOEFryIBn0f6AZ1QkkL/asruqK4omcdHfdpTChN2ivgFqW5CWG9GGfiHU
 PGUefScyQYvrmAswcRdM0pVmWXkMRKUWi+WV+GTIKRdsyudBr5k9blD4ClKbMpESJ1XK
 tKlmYh8wdzhdT1us5b396dCRKUnTdSNUgC1ngUrcmO3wR2SGB13fpR/9wen+0LxJMfnc
 S70g==
X-Gm-Message-State: AOAM530r0OVcRk2sXJtNlwUnXN+TxQI4u/TEQ93D/0yh7I/EMD0HuFKJ
 TiqNxrM0oY0LleEOkmflde3D7jUjIKTUcmnLFVs=
X-Google-Smtp-Source: ABdhPJwpjd1vVslj31SWuiBXzwEmqndfAK9alwKWil0kAKniMD0dwQlXpI4aJYKNVnWxgLyaCMsyKDPED/de85feaKg=
X-Received: by 2002:a02:23c3:: with SMTP id u186mr2567562jau.34.1633176251322; 
 Sat, 02 Oct 2021 05:04:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4f:f90d:0:0:0:0:0 with HTTP;
 Sat, 2 Oct 2021 05:04:11 -0700 (PDT)
From: "U.n" <wadebaye33@gmail.com>
Date: Sat, 2 Oct 2021 00:04:11 -1200
Message-ID: <CACE0T5U1u5jLa=hqYqzU3PjP13ar=3b4qh+t5J9qeg-Vu_8w4Q@mail.gmail.com>
Subject: Attention
To: unitednnation0@gmail.com
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
Reply-To: unitednnation0@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCgoKQXR0ZW50aW9uIFNpci9NYWRhbQpUaGlzIGlzIHRoZSBVbml0ZWQgTmF0aW9uIChVTiku
IFdlIHRoZSBVbml0ZWQgTmF0aW9ucyAoVU4pIEdsb2JhbGx5CmhhcyBhcHByb3ZlZCAoVVMkMi41
MDAsMDAwKSggdHdvIE1pbGxpb24gRml2ZSBodW5kcmVkIHRob3VzYW5kCmRvbGxhcnMpIGNvbXBl
bnNhdGlvbiBhcyBwYXJ0IG9mIG91ciByZXNwb25zaWJpbGl0aWVzIGZvciBodW1hbml0YXJpYW4K
QWlkIGZvciBmaWdodGluZyBhZ2FpbnN0IENvcm9uYVZpcnVzIGFuZCB5b3UgYXJlIGFtb25nIHRo
ZSBsdWNreSBvbmVzLgoKClRoaXMgY29tcGVuc2F0aW9uIGlzIGZvciB0aGUgbW9zdCBhZmZlY3Rl
ZCBjb3VudHJpZXMsIGNvbW11bml0aWVzIGFuZApmYW1pbGllcyBhY3Jvc3MgdGhlIGdsb2JhbC4g
WW91ciBmdW5kcyB3ZXJlIGRlcG9zaXRlZCB3aXRoIEJhbmsgaW4gVVNBCnRvIHRyYW5zZmVyIHlv
dXIgZnVuZHMgdG8geW91IHZpYSBJbnRlcm5ldCBCYW5raW5nLiBZb3UgaGF2ZSB0byBzZW5kCnlv
dXIgZnVsbCBkZXRhaWxzIGFzIHN0YXRlIGJlbG93OndpdGggdGhpcyBlbWFpbCBBZGRyZXNzCiAg
KCB1bml0ZWRubmF0aW9uMEBnbWFpbC5jb20gKQpZb3VyIGZ1bGwgbmFtZXM6CkFkZHJlc3M6ClRl
bGVwaG9uZToKT2NjdXBhdGlvbjoKCgoKWW91cnMgU2luY2VyZWx5Ck1yLiBBbnTDs25pbyBHdXRl
cnJlcwpVbml0ZWQgTmF0aW9ucyAoVU4pLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
