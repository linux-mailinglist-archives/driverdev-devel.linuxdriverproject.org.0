Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C00361885E
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Nov 2022 20:13:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB71661007;
	Thu,  3 Nov 2022 19:13:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB71661007
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ymal_q0tMcrp; Thu,  3 Nov 2022 19:13:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6779E60671;
	Thu,  3 Nov 2022 19:13:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6779E60671
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 84F931BF3C0
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 19:13:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60303404D8
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 19:13:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60303404D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9LnkcB-v-0Er for <devel@linuxdriverproject.org>;
 Thu,  3 Nov 2022 19:13:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A827C403B7
Received: from mail-yw1-x1141.google.com (mail-yw1-x1141.google.com
 [IPv6:2607:f8b0:4864:20::1141])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A827C403B7
 for <devel@driverdev.osuosl.org>; Thu,  3 Nov 2022 19:13:26 +0000 (UTC)
Received: by mail-yw1-x1141.google.com with SMTP id
 00721157ae682-3704852322fso24671817b3.8
 for <devel@driverdev.osuosl.org>; Thu, 03 Nov 2022 12:13:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XyD1mfWiSlDwEde6GPNfMmCbNFFyjnPNBOmoyULHgYM=;
 b=l/PPm8pj9s7n752HzvHqNSNDRO6ttkoRulADZLQeoATygE4lZqv6tfVa12q7LYTLzN
 2h3kfNhmQAjSs8O1rV1RSQhO+6Shz+e4T6V/hMUFlOCWYDjDcoyWf88jxQ/57UR3YKKo
 SWi+QoXRnGJNeF6TcTo8INHpIG/tlcZws2oP2UQvh0RxDIe9fqXQbAXPczMFweOreCwK
 LxXR6WJfep5YOSlYBvtrNr9vvW40G73ei7mrmQMfidsq9FOI2EJkSu/j9iXC5wGp9vfR
 ykn8uacMKGbuxjVEAFdi/mTwDQU61mqkva0zGsfLOc305abnOkysAm1ufTO2sydgO+ud
 iJYg==
X-Gm-Message-State: ACrzQf2H7Kt4988XMYZysytk6fFjb38E2IgAuvaSn6gRJf8iE5cYZ50M
 kasv7Psi6TEeoRe54x3lLYlhTVxEzNheGAH7LnI=
X-Google-Smtp-Source: AMsMyM7wKouP2gAG7FTmK4FTwahumKGhZ83lzqcDzQRJSfbFW74qLAJBQe9aXFPdprDGGrGONN7SuL4IRgcOgnanKsM=
X-Received: by 2002:a81:710:0:b0:370:b2b:7fca with SMTP id
 16-20020a810710000000b003700b2b7fcamr30485686ywh.417.1667502805651; 
 Thu, 03 Nov 2022 12:13:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:2307:b0:313:c00e:5dfa with HTTP; Thu, 3 Nov 2022
 12:13:25 -0700 (PDT)
From: Office <johnsonlonginus84@gmail.com>
Date: Thu, 3 Nov 2022 20:13:25 +0100
Message-ID: <CACLeSC4aeRSjkOF=4mGFC6qYvuJkVHdv508z5kUbkxeadL53fw@mail.gmail.com>
Subject: Dhl office delivery company lome Togo//ATM MASTER CARD
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=XyD1mfWiSlDwEde6GPNfMmCbNFFyjnPNBOmoyULHgYM=;
 b=JhfeRfXdQ6xSqfw7KdxPKnPCI7WFlS28D8SHsxYILczpnv5Z0TPhlZtZnhfKcs+xlX
 AcgLHk+YZLma0uaXQoJlYnw+0nP8tbapKy//Ed8qTw2p84bGbM2c1g3+a2eXSNyeNn9g
 kddTFaE47vguZo63s8nDIrtCql6AiP+lluVgFzdzN1gD+w4X5FDUBH0qfCCwfHg5P2GC
 Nk4pRIHQIRvIRTnatKH2lFArbs1YdFmsXd0lprdN0bLl1Vffg+CmngjgaUzjafUOpKS6
 EzcnNHj5bPsyPcGJFdHj5HYbvVTg0u0ciXKa+zwjCNCapktbWmNUDy+hYj3utk/VJtGQ
 aHWA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=JhfeRfXd
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
Reply-To: dhlofficedelivery1933@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gClRoaXMgaXMgREhMIGNvdXJpZXIgRGVsaXZlcnkgQ29tcGFueSBvZiBMb21lIFRvZ28sIHRo
ZSBtYW5hZ2VtZW50IG9mCnRoaXMgIGNvbXBhbnksIHdpc2hlcyB0byBpbmZvcm0geW91IHRoYXQs
IHdlIHJlY2VpdmVkIGEgcGFyY2VsCmNvbnRhaW5pbmcgYW4gQVRNICBNYXN0ZXIgQ2FyZCB2YWx1
ZWQgJDcuNSBNaWxsaW9uIFVTRCB3aXRoIHRoZSB2aXRhbApQSU4gb24gaXQsIGZyb20gaW50ZXJu
YXRpb25hbCBtb25pdG9yaW5nIGZ1bmRzIChJTUYpIEZvciBzYWZldHkKZGVsaXZlcnkgdG8geW91
ciByZXNpZGVudGlhbCBhZGRyZXNzIGluIHlvdXIKY291bnRyeS4KVGhpcyBwYXJjZWwgd2FzIGJy
b3VnaHQgdG8gdXMgdGhpcyBtb3JuaW5nIGJ5IHRoZSBBVE0gQ2FyZCBwYXltZW50Cm9mZmljZSAg
TG9tZSBUb2dvLCBwbGVhc2UgcmVjb25maXJtIHRoZSBiZWxvdyBpbmZvcm1hdGlvbiwgdG8gYXZv
aWQKZGVsaXZlcnkgb2YgIHlvdXIgQVRNIE1hc3RlciBDYXJkIHRvIHdyb25nIGhhbmQsClBsZWFz
ZSBzZW5kIGFsbCB0aGUgbmVjZXNzYXJ5IGluZm9ybWF0aW9uIHZpYSBvdXIgRS1tYWlsCmFkZHJl
c3MoZGhsb2ZmaWNlZGVsaXZlcnkxOTMzQGdtYWlsLmNvbSkKCjEpIFlvdXIgRnVsbCBOYW1lOgoy
KSBBZGRyZXNzLCBDaXR5LCBTdGF0ZSBBbmQgQ291bnRyeToKMykgUGVyc29uYWwgQ2VsbCBQaG9u
ZSwgRmF4IEFuZCBNb2JpbGU6CjQpIENvbXBhbnkgTmFtZSAoSWYgQW55KSBQb3NpdGlvbiBBbmQg
QWRkcmVzczoKNSkgT2NjdXBhdGlvbiwgQWdlIEFuZCBNYXJpdGFsIFN0YXR1czoKNikgQ29weSBP
ZiBZb3VyIEludCdsIFBhc3Nwb3J0L0RyaXZlcnMgTGljZW5jZToKCldlIHdpbGwgcmVnaXN0ZXIg
eW91ciBwYWNrYWdlIGFuZCBzZW5kIHlvdSB0aGUgdHJhY2tpbmcgbnVtYmVycyBiZWZvcmUKd2Ug
IHByb2NlZWQgZm9yIHNhZmV0eSBkZWxpdmVyeSBvZiB5b3VyIHBhY2thZ2UgYXMgc29vbiBhcyB5
b3UKcmVjb25maXJtIHRoZSByZXF1aXJlZCBpbmZvcm1hdGlvbiBmb3Igc2FmZXR5IGRlbGl2ZXJ5
LlNlbmQgeW91cgpyZXF1aXJlIGluZm9ybWF0aW9uIHZpYSAgb3VyIG9mZmljZSBlbWFpbAphZGRy
ZXNzKGRobG9mZmljZWRlbGl2ZXJ5MTkzM0BnbWFpbC5jb20pCkRITCBpcyBvbmUgb2YgdGhlIHdv
cmxkJ3MgZ3JlYXQgc3VjY2VzcyBzdG9yaWVzLCB0aGUgc3RhcnQtdXAgdGhhdApyZXZvbHV0aW9u
aXplZCB0aGUgZGVsaXZlcnkgb2YgcGFja2FnZXMgYW5kIGluZm9ybWF0aW9uLiBJbiB0aGUgcGFz
dAozM3llYXJzLCB3ZSd2ZSBncm93biB1cCBhbmQgZ3Jvd24gaW50byBhIGRpdmVyc2UgZmFtaWx5
IG9mIGNvbXBhbmllcwphcyBESEwgIHRoYXQncyBiaWdnZXIsIHN0cm9uZ2VyLCBiZXR0ZXIgdGhh
biBldmVyLgoKWW91cnMgYWZmZWN0aW9uYXRlbHkuClBhc3RvciBEYXZpZC4KQmQuIE9uIEphbnVh
cnkgMTMsIEltbS4gTiDCsCAxNTc4Ck55w6lrb25ha3Bvw6kgLSBCUCA0MjAyCkxvbcOpIC0gVG9n
bwpUZWw6ICgrIDIyOCkgOTc1OTQ4OTEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
