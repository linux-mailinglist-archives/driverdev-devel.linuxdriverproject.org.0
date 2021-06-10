Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EEA3A275E
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Jun 2021 10:45:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A02D6403A2;
	Thu, 10 Jun 2021 08:45:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XYP53-3fqYOv; Thu, 10 Jun 2021 08:45:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E4AB40398;
	Thu, 10 Jun 2021 08:45:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA4111BF322
 for <devel@linuxdriverproject.org>; Thu, 10 Jun 2021 08:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D8B0940633
 for <devel@linuxdriverproject.org>; Thu, 10 Jun 2021 08:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=chalver.com.ec
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4znMYKKjiRjl for <devel@linuxdriverproject.org>;
 Thu, 10 Jun 2021 08:45:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.chalver.com.ec (mail.chalver.com.ec [186.3.12.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1BAF40649
 for <devel@driverdev.osuosl.org>; Thu, 10 Jun 2021 08:45:19 +0000 (UTC)
Received: from mail.chalver.com.ec (localhost.localdomain [127.0.0.1])
 by mail.chalver.com.ec (Postfix) with ESMTPS id A31F91F25639;
 Thu, 10 Jun 2021 02:44:30 -0500 (ECT)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.chalver.com.ec (Postfix) with ESMTP id AAC1D1F23FDE;
 Thu, 10 Jun 2021 02:07:56 -0500 (ECT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.chalver.com.ec AAC1D1F23FDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chalver.com.ec;
 s=E2A417BC-DDA7-11E6-85F6-38495636B764; t=1623308876;
 bh=PxMh0SAMbBGlctefOH2OhvTlJNlHw25bONEEE7Ldp0I=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=f7CrhMSqFIE0WBIY6mjQWPh9+Q0pAOqIdb4yTlC3zGivURZtu6l/e9zA0jb7JiDnh
 Vahxb3q06SN1syxU2ZivXLvZ6Xll2JgQ+IkaXLb6J/E6fi//WNJQ0awqgrDLqJsRV+
 KgtQaVJUgwiAExzPn9Gq5ocsanFSILV73AXTdkpdRfOwUY8ON5rYi6pcIzxBEM/7i9
 oA0lifK8CQlP34zS8GRHXXkwfvHrMi4dpvvd0XfHG4kakH6tUR8AFVp6n71EriP1iA
 U+H/1kgLkq2+cPC+TyqULZT0N/rVlsZoTsMRBs74X4XurB+Jx64farp2b2X3/X+FyX
 fOp14hetwAm8Q==
X-Virus-Scanned: amavisd-new at chalver.com.ec
Received: from mail.chalver.com.ec ([127.0.0.1])
 by localhost (mail.chalver.com.ec [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AObyvUn2psjs; Thu, 10 Jun 2021 02:07:56 -0500 (ECT)
Received: from cris-PC.wifi (unknown [105.9.120.116])
 by mail.chalver.com.ec (Postfix) with ESMTPSA id A65631F249FB;
 Thu, 10 Jun 2021 02:07:41 -0500 (ECT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?q?Covid_19_Wohlt=C3=A4tigkeitsfonds?=
To: Recipients <mpaucar@chalver.com.ec>
From: ''Tayeb souami'' <mpaucar@chalver.com.ec>
Date: Thu, 10 Jun 2021 09:14:46 +0200
Message-Id: <20210610070741.A65631F249FB@mail.chalver.com.ec>
X-Laboratorios-Chalver-MailScanner-Information: Please contact the ISP for
 more information
X-Laboratorios-Chalver-MailScanner-ID: A65631F249FB.A2069
X-Laboratorios-Chalver-MailScanner: Not scanned: please contact your Internet
 E-Mail Service Provider for details
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
Reply-To: Tayebsouam.spende@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxpZWJlciBGcmV1bmQsCgpJY2ggYmluIEhlcnIgVGF5ZWIgU291YW1pLCBOZXcgSmVyc2V5LCBW
ZXJlaW5pZ3RlIFN0YWF0ZW4gdm9uIEFtZXJpa2EsIGRlciBNZWdhLUdld2lubmVyIHZvbiAkIDMx
NW1pbGxpb24gSW4gTWVnYSBNaWxsaW9ucyBKYWNrcG90LCBzcGVuZGUgaWNoIGFuIDUgenVmw6Rs
bGlnZSBQZXJzb25lbiwgd2VubiBTaWUgZGllc2UgRS1NYWlsIGVyaGFsdGVuLCBkYW5uIHd1cmRl
IElocmUgRS1NYWlsIG5hY2ggZWluZW0gU3BpbmJhbGwgYXVzZ2V3w6RobHQuSWNoIGhhYmUgZGVu
IGdyw7bDn3RlbiBUZWlsIG1laW5lcyBWZXJtw7ZnZW5zIGF1ZiBlaW5lIFJlaWhlIHZvbiBXb2hs
dMOkdGlna2VpdHNvcmdhbmlzYXRpb25lbiB1bmQgT3JnYW5pc2F0aW9uZW4gdmVydGVpbHQuSWNo
IGhhYmUgbWljaCBmcmVpd2lsbGlnIGRhenUgZW50c2NoaWVkZW4sIGRpZSBTdW1tZSB2b24g4oKs
IDIuMDAwLjAwMCwwMCBhbiBTaWUgYWxzIGVpbmUgZGVyIGF1c2dld8OkaGx0ZW4gNSB6dSBzcGVu
ZGVuLCB1bSBtZWluZSBHZXdpbm5lIHp1IMO8YmVycHLDvGZlbiwgc2VoZW4gU2llIGJpdHRlIG1l
aW5lIFlvdSBUdWJlIFNlaXRlIHVudGVuLgoKVUhSIE1JQ0ggSElFUjogaHR0cHM6Ly93d3cueW91
dHViZS5jb20vd2F0Y2g/dj1aNnVpOFpEUTZLcwoKCgpEYXMgaXN0IGRlaW4gU3BlbmRlbmNvZGU6
IFtUUzUzMDM0MjAxOF0KCgoKQW50d29ydGVuIFNpZSBtaXQgZGVtIFNQRU5ERS1DT0RFIGFuIGRp
ZXNlCgpFLU1haWw6VGF5ZWJzb3VhbS5zcGVuZGVAZ21haWwuY29tCgoKSWNoIGhvZmZlLCBTaWUg
dW5kIElocmUgRmFtaWxpZSBnbMO8Y2tsaWNoIHp1IG1hY2hlbi4KCkdyw7zDn2UKSGVyciBUYXll
YiBTb3VhbWkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
