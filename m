Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDFB61882E
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Nov 2022 20:06:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6B24404C1;
	Thu,  3 Nov 2022 19:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6B24404C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NP_Ht5PLZbtN; Thu,  3 Nov 2022 19:06:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9566F403B7;
	Thu,  3 Nov 2022 19:06:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9566F403B7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0032A1BF3C0
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 19:06:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BDD7961014
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 19:06:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDD7961014
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8nTIX0nFobkt for <devel@linuxdriverproject.org>;
 Thu,  3 Nov 2022 19:06:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4C6E60671
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4C6E60671
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 19:06:05 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id r12so4445179lfp.1
 for <devel@linuxdriverproject.org>; Thu, 03 Nov 2022 12:06:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XyD1mfWiSlDwEde6GPNfMmCbNFFyjnPNBOmoyULHgYM=;
 b=JNXHnVyQQlPKOwiY51ZHJ2onQbO59lmo6xm91+yGrAJ7mNI1Hgy3Yx1FYRVzJjBnEn
 L0ml6as7SxOiRTz/vv8MGaiJJs43drJl7/kcg8wQes06b8G0hfno1ggRLvEeWbVrlpfd
 mbMNndNTenpyzE3occEHBkb8nAk61cvJvMNJVR431Dzeuy+AOLReBx3wOJkDsFYosgsN
 hjnk+gilj/rVZu47tDq3JTjifm4/GmqqW9tmIaXQk0RPSVovtMKJgIn04trhPrk43C9O
 qVJH/AJFqkkqrfR0XfvghybZtDizm6iPPy6+g4vDOfvcpn0Q0vT+Oeb4WbVyAzL4i5OY
 9MlQ==
X-Gm-Message-State: ACrzQf0R6cxj/dyGXcjX9AfOd/loG7yd+BgtS1mOhBDww8GeBZCK43H1
 ZjRWqRFwP6GMIWejZrmdWzkez1y3hhdpMAnp/a0=
X-Google-Smtp-Source: AMsMyM6R0WoOqhJD0e5dIiXh3BDfKtrCkTVQykg04c+nFxtZoorqXqXvuhnk0fu39f74bu7nl8tDZGvYBKMUrydg84Q=
X-Received: by 2002:ac2:5e70:0:b0:4a9:cd8b:980b with SMTP id
 a16-20020ac25e70000000b004a9cd8b980bmr13166975lfr.516.1667502363819; Thu, 03
 Nov 2022 12:06:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:a547:0:0:0:0:0 with HTTP;
 Thu, 3 Nov 2022 12:06:02 -0700 (PDT)
From: Office <fs98379@gmail.com>
Date: Thu, 3 Nov 2022 20:06:02 +0100
Message-ID: <CAJA6vqzn=VKpM410uJuE4Ce1d+Yofg=tLdOUUU05NJ9ChDb1cg@mail.gmail.com>
Subject: Dhl office delivery company lome Togo//ATM MASTER CARD
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=XyD1mfWiSlDwEde6GPNfMmCbNFFyjnPNBOmoyULHgYM=;
 b=R+HG8yHOjGa4PSSDgBKWVvtnmfNc/96otka92qHZk4u6SCyEo2Rhd4NSDdnIu74tor
 ecpar/lDjOrTsE3lI2a0RmeWqiJ2IBfwpSAYuw59ACdotCDIBf93/VnAiW1P2kZg2wWR
 pvMqEnkrOENPmD3wXhtCEnbH+DyJcXxSmR7zAdVle4PpHYaJwlmpFqH8+0Zw1bKPv+JQ
 NPlg+5XLakLzBkUDB3n57BRKv9beZNb8ht24DWWA0zSoHw25JNRc7jx4utr+VdgpkKxq
 h3RVMpC5VnT2f9U0R9w9vutLrmloFgQ/OOwAcvC4wJjjK8fDY3z8yutUaqRu8oe3LA9s
 ahNQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=R+HG8yHO
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
