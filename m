Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1315F8AD4CA
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Apr 2024 21:22:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8D5B608B2;
	Mon, 22 Apr 2024 19:22:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CwNaQujXKbDM; Mon, 22 Apr 2024 19:22:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E24D0608D5
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E24D0608D5;
	Mon, 22 Apr 2024 19:22:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5834A1BF31D
 for <devel@linuxdriverproject.org>; Mon, 22 Apr 2024 19:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 45F0581ECA
 for <devel@linuxdriverproject.org>; Mon, 22 Apr 2024 19:22:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mHTauhsITq2r for <devel@linuxdriverproject.org>;
 Mon, 22 Apr 2024 19:22:00 +0000 (UTC)
X-Greylist: delayed 2270 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 22 Apr 2024 19:22:00 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3B8A881EB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B8A881EB0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=218.248.45.14;
 helo=mail1.ksp.gov.in; envelope-from=spdcredvg@ksp.gov.in; receiver=<UNKNOWN> 
Received: from mail1.ksp.gov.in (mail1.ksp.gov.in [218.248.45.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B8A881EB0
 for <devel@linuxdriverproject.org>; Mon, 22 Apr 2024 19:21:59 +0000 (UTC)
Received: from mail.ksp.gov.in ([10.7.90.25])
 by mail1.ksp.gov.in  with ESMTP id 43MIhwtY001051-43MIhwta001051
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 23 Apr 2024 00:13:58 +0530
Received: from mail.ksp.gov.in (localhost [127.0.0.1])
 by mail.ksp.gov.in (Postfix) with ESMTPS id 5EB534E00065;
 Tue, 23 Apr 2024 00:13:58 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
 by mail.ksp.gov.in (Postfix) with ESMTP id EEA664E00055;
 Tue, 23 Apr 2024 00:13:57 +0530 (IST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.ksp.gov.in EEA664E00055
Received: from mail.ksp.gov.in ([127.0.0.1])
 by localhost (mail.ksp.gov.in [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id PY5XsdNMNMK8; Tue, 23 Apr 2024 00:13:57 +0530 (IST)
Received: from mail.ksp.gov.in (mail.ksp.gov.in [10.7.90.25])
 by mail.ksp.gov.in (Postfix) with ESMTP id 815674E00054;
 Tue, 23 Apr 2024 00:13:55 +0530 (IST)
Date: Tue, 23 Apr 2024 00:13:55 +0530 (IST)
From: Facebook Inc <spdcredvg@ksp.gov.in>
Message-ID: <741687335.10953147.1713811435445.JavaMail.zimbra@ksp.gov.in>
Subject: Gratulujem
MIME-Version: 1.0
X-Originating-IP: [178.239.198.84]
Thread-Index: IhwU0a7ALMYqlm6yv4t15HAIww/rGg==
Thread-Topic: Gratulujem
X-FE-Policy-ID: 3:4:2:SYSTEM
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ksp.gov.in; 
 s=4A20A800-B667-11EB-97F4-F0CABA733872; t=1713811438;
 bh=UgaMH4aWQ2PwEihXQroKD9p1GTUsI2kHXeR+6HiHji4=;
 h=Date:From:Message-ID:MIME-Version;
 b=xVQr92FtX84U1z0Hh1moI6hIpHa/qFT1KUNriWNCopggUwZBEpXZlvB65jOfB92vp
 uEkf8shaTX6+gxkA5ksUXQQJjliwej1vS16hKodyzbtKAopMyzhqcOYBUFYi4R3sJc
 QbXiy+TVeZBFsL9G4lk/fLqeGIU/gPzwAFffADRaq8kNBlDIR1svViokLCo6gPYRw6
 qQxCDWyyT2mdEKw9Ne5infQVGssqWKUOd1ggzIdsWrGxGIqsOYie3yDqwoZV6o3bCQ
 uv6uJBpgB1u7cR7IoX8vs/DvxGPvZ6sBvAGjE4xkku28BQmr2dZVc9W9/GUQlIN8nE
 fcJNJ2catDFYg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=ksp.gov.in
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=ksp.gov.in header.i=@ksp.gov.in
 header.a=rsa-sha256 header.s=4A20A800-B667-11EB-97F4-F0CABA733872
 header.b=xVQr92Ft
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
Reply-To: Facebook Inc <claimunit.facebook@hotmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UE9aTsOBTUtBOiBBayBzdGUgdMO6dG8gc3Byw6F2dSBkb3N0YWxpIGRvIHByaWXEjWlua2Egc3Bh
bS9ocm9tYWRuw6EgcG/FoXRhLCBqZSB0byBrdsO0bGkgb2JtZWR6ZW5pYW0sIGt0b3LDqSB6YXZp
ZWRvbCB2w6HFoSBwb3NreXRvdmF0ZcS+IGludGVybmV0b3bDvWNoIHNsdcW+aWViLCAoRmFjZWJv
b2sgTG90dGVyeSBUZWFtKSB2w6FzIHZ5esO9dmFtZSwgYWJ5IHN0ZSBzIMWIb3UgemFvYmNow6Fk
emFsaSBza3V0b8SNbmUuIAoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKiogCkdyYXR1bHVqZW06IApWw6HFoSBFLU1BSUxPVsOdIMOaxIxFVCB2eWhyYWwgc3Vt
dSBKZWRlbiBtaWxpw7NuIGxpYmllciDFoXRlcmxpbmdvdiAoMSAwMDAgMDAwLDAwIEdCUCkgdiBy
w6FtY2kgcHJlYmllaGFqw7pjZWogb25saW5lIHByb3BhZ8OhY2llIG9jZW5lbsOtIG5hIEZhY2Vi
b29rdSBQb21vY27DqSBmb25keSBvZCBNZXRhIFBsYXRmb3JtcywgSW5jLiwgcHJlZHTDvW0gbmF6
w712YW5laiBGYWNlYm9vaywgZ2VuZXLDoWxueSByaWFkaXRlxL4gcMOhbiBNYXJrIFp1Y2tlcmJl
cmcuIMSMw61zbG8gdsOhxaFobyB0aWtldHUgamUgMDA1NDUgMTg4IDU2NDc1Ni4gVsWhZXRjaSDD
usSNYXN0bsOtY2kgYm9saSB2eWJyYW7DrSBwb21vY291IHBvxI3DrXRhxI1vdsOpaG8gbsOhaG9k
bsOpaG8gc3lzdMOpbXUgdnlsb3NvdmFuw6lobyB6IDI3IG1pbGnDs25vdiBlLW1haWxvdsO9Y2gg
YWRyaWVzIGNleiBpbnRlcm5ldCBhIMWhxaVhc3Ruw71jaCB2w71oZXJjb3YuIFRPIEpFRE5PRFVD
SE8gWk5BTUVOw4EsIMW9RSBOSUVMRU4gUE9Vxb3DjVZBVEVMSUEgRkFDRUJPT0tVIE3DlMW9VSBN
QcWkIFBST1NQRUNIIExFTiBaIFRFSlRPIFBST1BBR8OBQ0lFIExPVMOJUklFLiBBTEUgVMOBVE8g
TE9Uw4lSSUEgSkUgVVLEjEVOw4EgUFJFIEtBxb1Ew4lITyBBIEFLIERPU1RBTkVURSBFLU1BSUws
IEpFRE5PRFVDSE8gVE8gWk5BTUVOw4EsIMW9RSBTVEUgSkVETsOdTSBaIMWgxaRBU1ROw51DSCBW
w43FpEFaT1YuIAoKUG/FoWxpdGUgc3ZvamUgw7pwbG7DqSBwb2Ryb2Jub3N0aSwgYWtvIG5hcHLD
rWtsYWQ6IAoxLiBDZWzDqSBtZW5vOiAKMi4gS3JhamluYTogCjMuIEtvbnRha3Ruw6EgYWRyZXNh
OiAKNC4gVGVsZWbDs25uZSDEjcOtc2xvOiAKNS4gUm9kaW5uw70gc3RhdjogCjYuIFBvdm9sYW5p
ZTogCjcuIFNwb2xvxI1ub3PFpTogCjguIFZlazogCgpQb2Ryb2Jub3N0aSBwcm9zw61tIHBvxaFs
aXRlIG5hOiAKS29udGFrdG7DoSBvc29iYTogcMOhbiBEYXZpZCBNLiBXZWhuZXIsIGZpbmFuxI1u
w70gcmlhZGl0ZcS+IHByZSBldXLDs3Bza3kgcmVnacOzbiBTcG9qZW7DqWhvIGtyw6HEvm92c3R2
YSAKKkUtbWFpbG9tOiBjbGFpbXVuaXQuZmFjZWJvb2tAaG90bWFpbC5jb20gCgpWw6HFoSBlLW1h
aWwgdnlocmFsIG7DocWhIGphY2twb3QsIGXFoXRlIHJheiBibGFob8W+ZWzDoW1lLiAKClbDocWh
IHYgc2x1xb5iZSwgClDDoW4gTWFyYyBBbmRyZWVzc2VuIApGYWNpbGl0w6F0b3IgbG90w6lyaWUg
bmEgRmFjZWJvb2t1LiAKCioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKiogKioqKioqKiogCk5lcG9jaHlidWp0ZSBvIHRvbXRvIGxpc3RlIGFuaSBo
byBpZ25vcnVqdGUsIHByZXRvxb5lIHNtZSBwcmlwcmF2ZW7DrSB2w6FtIGRhxaUgdmHFoXUgbmV1
dmVyaXRlxL5uw7ogY2VudSBvZCBGYWNlYm9va3UuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
