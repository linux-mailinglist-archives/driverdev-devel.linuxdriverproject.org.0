Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D56B555A592
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jun 2022 02:36:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE4D384AD1;
	Sat, 25 Jun 2022 00:36:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE4D384AD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nHg_TMJ96Ksf; Sat, 25 Jun 2022 00:36:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8317984ACB;
	Sat, 25 Jun 2022 00:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8317984ACB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA4361BF423
 for <devel@linuxdriverproject.org>; Sat, 25 Jun 2022 00:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B53DF84AD1
 for <devel@linuxdriverproject.org>; Sat, 25 Jun 2022 00:36:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B53DF84AD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zoOi4eRBMP6z for <devel@linuxdriverproject.org>;
 Sat, 25 Jun 2022 00:36:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0ED6984ACB
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0ED6984ACB
 for <devel@driverdev.osuosl.org>; Sat, 25 Jun 2022 00:36:27 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id
 h15-20020a9d600f000000b0060c02d737ecso3092011otj.1
 for <devel@driverdev.osuosl.org>; Fri, 24 Jun 2022 17:36:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=NaM7Rq6MW6dZyTp59VSAowOlki+9KXU511eUl2kmgqw=;
 b=rCgIVQDT7BozDXd4XAwCIef08/Tm3fySgB6aRHpxOcA2PoWDEkzrtwm5YkvUi6/qLY
 fkSmNAfETxgRx51Pk+n05ihfaAro7gU/nZEFxKbkzQfNy/Nw4pr1GiX/Tz/wKkkAFjMu
 tTQ764y8LTAMToVoZ+9FI/lxYBhckRWl6SZHgOpeoMQ5hWKDBfZZtModT1toduZG1rXc
 UlQKqkPqaE6SYPHiQFY8xi5PQSA6iUqTxsIOXMq5idw5qXEUJ56kLRkgBGzHEh1omyRa
 t8Dx1HCsBgzLKnB9a4VdtzP593TVEuazZULGhnW4kIcSLOSltwHWGf16W9rUk1rJfIrU
 Ckjw==
X-Gm-Message-State: AJIora/AaoJsBFV/aLzILyaRaLdkTTMeM7fpQd4UGxfr8F1WAx/HCsdH
 Slta3WOBPKzO16OKk4jPwQNxRiVbYMRcPnNL/QY=
X-Google-Smtp-Source: AGRyM1v8Vw7QPWZPbVjeNRI5BM9/vI28wHbf9GcrTpNwJ2kkc3enK0101K8PQsuzbydaRqL3iK1Lq8WRmo3Hx7Hrzj4=
X-Received: by 2002:a9d:27e2:0:b0:616:8c01:6fee with SMTP id
 c89-20020a9d27e2000000b006168c016feemr758950otb.240.1656117386955; Fri, 24
 Jun 2022 17:36:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:dc6:0:0:0:0:0 with HTTP;
 Fri, 24 Jun 2022 17:36:26 -0700 (PDT)
From: Koffi Aya <johnchristopher20177@gmail.com>
Date: Sat, 25 Jun 2022 01:36:26 +0100
Message-ID: <CAGZW8-N1GEQD-gH8++_CkMfuCAqwwuyyaTjctJVUJtqVRb0k+A@mail.gmail.com>
Subject: Von Koffi
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=NaM7Rq6MW6dZyTp59VSAowOlki+9KXU511eUl2kmgqw=;
 b=nFG56TDXf9iAHoAHzTtl2v2DeD4xWaUItChX4aZAfCeQVV3ldBVtEMVyQDBlNZFD59
 quCkurmacp8wOKrVGvsf9LVY8Lggue0jv7YphHMNxex8lkDwa+AsANanl4SoCRr3zvc3
 bB+Hk4qoz1y4Vu8KEw82XSY1oqjMq4Np2GNcl+gNNTbH7am6NYJL/x+d1LsZVsXh/2TF
 C5l9vVN0MN5ocWN/qTrI7LGFYBlty0NRc2COHrH5CjDa8Ci2Ie8oWPJbIeAVS/Q69KXU
 mg0PKIxhyFy/t33g2KDTKJdYTmNW5T4mPeaFgo46QQEJ+wi6ZVZa3+NhSmA5qKyCHtQ/
 ySRg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=nFG56TDX
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
Reply-To: koffiaya202100@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Vm9uIEtvZmZpIEF5YQpMaWVic3RlLApHdXRlbiBUYWcgdW5kIHZpZWxlbiBEYW5rIGbDvHIgSWhy
ZSBBdWZtZXJrc2Fta2VpdC4gQml0dGUgbGVzZW4gU2llCm1laW5lIEUtTWFpbCBzb3JnZsOkbHRp
ZyBkdXJjaCB1bmQgaGVsZmVuIFNpZSBtaXIgYmVpIGRlciBBYndpY2tsdW5nCmRpZXNlcyBQcm9q
ZWt0cy4gSWNoIGJpbiBNaXNzIEtvZmZpIEF5YSB1bmQgaWNoIHNjaHJlaWJlIElobmVuCmRlbcO8
dGlnLCB1bSBTaWUgdW0gSWhyZSBQYXJ0bmVyc2NoYWZ0IHVuZCBVbnRlcnN0w7x0enVuZyBiZWkg
ZGVyCsOcYmVydHJhZ3VuZyB1bmQgQW5sYWdlIG1laW5lciBFcmJzY2hhZnRzZ2VsZGVyIGluIEjD
tmhlIHZvbgo2LjUwMC4wMDAsMDAgVVMtRG9sbGFyIChTZWNocyBNaWxsaW9uZW4gZsO8bmZodW5k
ZXJ0dGF1c2VuZCBVUy1Eb2xsYXIpCnp1IGJpdHRlbiwgZGllIG1laW4gdmVyc3RvcmJlbmVyIGdl
bGllYnRlciBWYXRlciB2b3Igc2VpbmVtIFRvZCBhdWYKZWluZXIgQmFuayBoaW50ZXJsZWd0IGhh
dC4KCkljaCBtw7ZjaHRlIElobmVuIHZlcnNpY2hlcm4sIGRhc3MgZGllc2VyIEZvbmRzIGxlZ2Fs
IHZvbiBtZWluZW0KdmVyc3RvcmJlbmVuIFZhdGVyIGVyd29yYmVuIHd1cmRlIHVuZCBrZWluZW4g
a3JpbWluZWxsZW4gSGludGVyZ3J1bmQKaGF0LiBNZWluIFZhdGVyIGhhdCBkaWVzZW4gRm9uZHMg
bGVnYWwgZHVyY2ggZWluIGxlZ2l0aW1lcyBHZXNjaMOkZnQKZXJ3b3JiZW4sIGJldm9yIGVyIHfD
pGhyZW5kIHNlaW5lciBHZXNjaMOkZnRzcmVpc2UgenUgVG9kZSB2ZXJnaWZ0ZXQKd3VyZGUuIERl
ciBUb2QgbWVpbmVzIFZhdGVycyB3dXJkZSB2ZXJkw6RjaHRpZ3QsIHZvbiBzZWluZW4gVmVyd2Fu
ZHRlbgpnZXBsYW50IHdvcmRlbiB6dSBzZWluLCBkaWUgd8OkaHJlbmQgZGllc2VyIFplaXQgc2Vp
bmVyIEdlc2Now6RmdHNyZWlzZQptaXQgaWhtIGdlcmVpc3Qgd2FyZW4uIERlbm4gZHJlaSBNb25h
dGUgbmFjaCBkZW0gVG9kIG1laW5lcyBWYXRlcnMKZmluZ2VuIHNlaW5lIFZlcndhbmR0ZW4gYW4s
IGFsbGUgQmVzaXR6dMO8bWVyIG1laW5lcyB2ZXJzdG9yYmVuZW4KVmF0ZXJzIHp1IGJlYW5zcHJ1
Y2hlbiB1bmQgenUgdmVya2F1ZmVuLgoKRGllIFZlcndhbmR0ZW4gbWVpbmVzIHZlcnN0b3JiZW5l
biBWYXRlcnMgc2luZCBzaWNoIGRlciA2LjUwMC4wMDAsMDAKVVMtRG9sbGFyIChzZWNocyBNaWxs
aW9uZW4gZsO8bmZodW5kZXJ0dGF1c2VuZCBVUy1Eb2xsYXIpIG5pY2h0CmJld3Vzc3QsIGRpZSBt
ZWluIHZlcnN0b3JiZW5lciBWYXRlciBhdWYgZGVyIEJhbmsgZGVwb25pZXJ0IGhhdCwgdW5kCm1l
aW4gdmVyc3RvcmJlbmVyIFZhdGVyIHNhZ3RlIG1pciB2b3Igc2VpbmVtIFRvZCBoZWltbGljaCwg
ZGFzcyBpY2ggaW4KamVkZW0gTGFuZCBuYWNoIGVpbmVtIGF1c2zDpG5kaXNjaGVuIFBhcnRuZXIg
c3VjaGVuIHNvbGx0ZSBtZWluZXIgV2FobCwKd29oaW4gaWNoIGRpZXNlIEdlbGRlciBmw7xyIG1l
aW5lIGVpZ2VuZW4gWndlY2tlIMO8YmVyd2Vpc2VuIHdlcmRlLgoKQml0dGUgaGVsZmVuIFNpZSBt
aXIsIGRpZXNlcyBHZWxkIGbDvHIgZ2VzY2jDpGZ0bGljaGUgWndlY2tlIGluIElocmVtCkxhbmQg
YXVmIElociBLb250byB6dSDDvGJlcndlaXNlbi4gSWNoIGhhYmUgZGllc2UgRW50c2NoZWlkdW5n
CmdldHJvZmZlbiwgd2VpbCBpY2ggdmllbGUgRGVtw7x0aWd1bmdlbiBkdXJjaCBkaWUgVmVyd2Fu
ZHRlbiBtZWluZXMKdmVyc3RvcmJlbmVuIFZhdGVycyBlcmxpdHRlbiBoYWJlLiBHZWdlbnfDpHJ0
aWcgaGFiZSBpY2ggR2VzcHLDpGNoZSBtaXQKZGVtIERpcmVrdG9yIGRlciBCYW5rIGdlZsO8aHJ0
LCBiZWkgZGVyIG1laW4gdmVyc3RvcmJlbmVyIFZhdGVyIGRpZXNlcwpHZWxkIGhpbnRlcmxlZ3Qg
aGF0LiBJY2ggaGFiZSBkZW0gRGlyZWt0b3IgZGVyIEJhbmsgZGllIERyaW5nbGljaGtlaXQKZXJr
bMOkcnQsIGRpZSBlcmZvcmRlcmxpY2ggaXN0LCB1bSBzaWNoZXJ6dXN0ZWxsZW4sIGRhc3MgZGFz
IEdlbGQgaW5zCkF1c2xhbmQgw7xiZXJ3aWVzZW4gd2lyZCwgZGFtaXQgaWNoIGRpZXNlcyBMYW5k
IHp1IG1laW5lciBTaWNoZXJoZWl0CnZlcmxhc3NlbiBrYW5uLiBEZXIgRGlyZWt0b3IgZGVyIEJh
bmsgaGF0IG1pciB2ZXJzaWNoZXJ0LCBkYXNzIGRhcwpHZWxkIMO8YmVyd2llc2VuIHdpcmQsIHNv
YmFsZCBpY2ggamVtYW5kZW4gdm9yc3RlbGxlLCBkZXIgZWhybGljaCBpc3QsCmRhcyBHZWxkIGbD
vHIgZGllc2VuIFp3ZWNrIGluIG1laW5lbSBOYW1lbiBlbnRnZWdlbnp1bmVobWVuLgoKQml0dGUg
c2VpZW4gU2llIHZlcnNpY2hlcnQsIGRhc3MgZGllIEJhbmsgZGVuIEJldHJhZyBhdWYgSWhyIEtv
bnRvCsO8YmVyd2Vpc2VuIHdpcmQgdW5kIGVzIGtlaW4gUHJvYmxlbSBnZWJlbiB3aXJkLiBEaWVz
ZSBUcmFuc2FrdGlvbiBpc3QKMTAwICUgcmlzaWtvZnJlaSB1bmQgbGVnaXRpbS4gSWNoIGJpbiBi
ZXJlaXQsIElobmVuIG5hY2ggZXJmb2xncmVpY2hlcgrDnGJlcndlaXN1bmcgZGllc2VyIFN1bW1l
IGF1ZiBJaHIgS29udG8gMzAgJSBkZXIgR2VzYW10c3VtbWUgYWxzCkF1ZndhbmRzZW50c2Now6Rk
aWd1bmcgYW56dWJpZXRlbi4gU2llIHdlcmRlbiBtaXIgYXVjaCBkYWJlaSBoZWxmZW4sIDEwCiUg
YW4gV29obHTDpHRpZ2tlaXRzb3JnYW5pc2F0aW9uZW4gdW5kIEhlaW1lIGbDvHIgbXV0dGVybG9z
ZSBCYWJ5cyBpbgpJaHJlbSBMYW5kIHp1IHNwZW5kZW4uCgpCaXR0ZSwgaWNoIG3DtmNodGUsIGRh
c3MgU2llIG51ciBhbHMgbWVpbiBhdXNsw6RuZGlzY2hlciBQYXJ0bmVyCmF1ZnRyZXRlbiwgZGFt
aXQgZGllIEJhbmsgZGllc2VzIEdlbGQgYXVmIElociBLb250byDDvGJlcndlaXN0LCBkYW1pdApp
Y2ggaW4gZGllc2VtIExhbmQgbGViZW4ga2Fubi4gQml0dGUsIGljaCBicmF1Y2hlIHdlZ2VuIG1l
aW5lcwpqZXR6aWdlbiBadXN0YW5kcyBkcmluZ2VuZCBJaHJlIEhpbGZlLiBXZW5uIFNpZSB6dSBk
aWVzZW0gWndlY2sgbWl0Cm1pciB6dXNhbW1lbmFyYmVpdGVuLCBiZWt1bmRlbiBTaWUgYml0dGUg
SWhyIEludGVyZXNzZSwgaW5kZW0gU2llIG1pcgphbnR3b3J0ZW4sIGRhbWl0IGljaCBJaG5lbiBk
aWUgZXJmb3JkZXJsaWNoZW4gSW5mb3JtYXRpb25lbiB1bmQKRWluemVsaGVpdGVuIHp1bSB3ZWl0
ZXJlbiBWb3JnZWhlbiBnZWJlbiBrYW5uLiBJY2ggd2VyZGUgSWhuZW4gMzAlIGRlcwpHZWxkZXMg
ZsO8ciBJaHJlIEhpbGZlIGFuYmlldGVuIHVuZCBIaWxmZXN0ZWxsdW5nLCBkYW1pdCB1bXp1Z2Vo
ZW4uCgpJaHJlIGRyaW5nZW5kZSBBbnR3b3J0IHdpcmQgZ2VzY2jDpHR6dC4KTWl0IGZyZXVuZGxp
Y2hlbiBHcsO8w59lbgpLb2ZpIEF5YQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
