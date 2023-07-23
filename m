Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A04575E57B
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jul 2023 00:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9510540280;
	Sun, 23 Jul 2023 22:14:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9510540280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OqPZ_hDkXbYh; Sun, 23 Jul 2023 22:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F31840004;
	Sun, 23 Jul 2023 22:14:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F31840004
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C458E1BF2AB
 for <devel@linuxdriverproject.org>; Sun, 23 Jul 2023 22:14:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A644F60888
 for <devel@linuxdriverproject.org>; Sun, 23 Jul 2023 22:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A644F60888
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MFsowkEjicN8 for <devel@linuxdriverproject.org>;
 Sun, 23 Jul 2023 22:14:46 +0000 (UTC)
X-Greylist: delayed 602 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 23 Jul 2023 22:14:45 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2978607E3
Received: from l-eisv.live (unknown [106.75.249.78])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2978607E3
 for <devel@driverdev.osuosl.org>; Sun, 23 Jul 2023 22:14:45 +0000 (UTC)
From: Abu Dhabi LLC <sales@l-eisv.live>
To: devel@driverdev.osuosl.org
Subject: We Offer Business Loans @ 2%
Date: 23 Jul 2023 23:03:50 +0100
Message-ID: <20230723230350.9633D62113F01248@l-eisv.live>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=l-eisv.live; 
 b=RUQddyOlHosKJUufFHR5Kg+PzYnf1DRfoplRVq7vvjBWrcseuRfTlKpbV1JcEfgNbluJ1ZiajyoO
 blNAwqZqRX0OSkkidXF0TxM8uoeolsM2lNmq7kE7EoY15lPpJJeBQ7OQfjjkfiQslgtGfWo1OCj+
 lSN9vI28HeSEA9pjAjk=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=default; d=l-eisv.live; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=sales@l-eisv.live; 
 bh=J3Rv0bbs96YuM+E3LcuwKQloQfE=;
 b=lgsqQ3HLv3Pdfb5btCqePEG+8KWyqB2Er8UFSPvHv2fJSZ9qXGUAtB8j/8NHfHLyyXkZnQLZ1bCE
 7WfCHvEBbCSAFshsZ7WByF3DCqGLdLUuN8ZTfeJs2qS78paz2c62LB1+ZD1hA/irYHH3H4T1/t/o
 M9OuWA7OoGLq3/UO/+E=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=l-eisv.live header.i=sales@l-eisv.live
 header.a=rsa-sha1 header.s=default header.b=lgsqQ3HL
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
Reply-To: ibrahimald@abudhabigroup-ae.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gU2lyL01hZGFtLAogCkknbSBhIENvbnN1bHRhbnQgYW5kIEZpbmFuY2UgU3BlY2lhbGlz
dCBmb3IgdGhlIEFidSBEaGFiaSBHcm91cCAKYW5kIHRoZSBBbCBLaGFpIEludmVzdG1lbnQgTExD
LiBXZSBvZmZlciBQZXJzb25hbCBMb2FucywgQnVzaW5lc3MgCmFuZCBQcm9qZWN0IExvYW5zIHRv
IGZpbmFuY2UgbGFyZ2Ugc2NhbGUgcHJvamVjdHMgaW4gdGhlIApmb2xsb3dpbmcgc2VjdG9yczog
QnVzaW5lc3MsIENvbnN0cnVjdGlvbixJbmR1c3RyaWFsLCBTaG9wcGluZyAmIApSZXRhaWwsIElU
LCBPaWwgJiBHYXMsIFJlYWwgRXN0YXRlLEhlYWx0aGNhcmUsIEVkdWNhdGlvbiBhbmQgClNwb3J0
cyAmIExlaXN1cmUuCiAKQXJlIHlvdSBhbiBlbnRyZXByZW5ldXI/IERvIHlvdSBoYXZlIGEgdmlh
YmxlIHByb2plY3Qg4oCTIHdoZXRoZXIgCm9uZ29pbmcgb3IgYWJhbmRvbmVkPyBJcyB0aGUgcHJv
amVjdCBhYmxlIHRvIGdlbmVyYXRlIGVub3VnaCAKUmV0dXJuIG9uIEludmVzdG1lbnQgKFJPSSk/
LCB3ZSBjYW4gcHJvdmlkZSBmdW5kaW5nIHRvIGZpbmFuY2UgCnRoZSBwcm9qZWN0LgogCkFidSBE
aGFiaSBMTEMgYWxzbyBwYXlzIDElIGNvbW1pc3Npb24gdG8gQnJva2Vycy9SZWZlcnJhbHMvIApB
Z2VudHMuCgpLaW5kbHkgcmVzcG9uZDsgSWYgeW91IHJlcXVpcmUgYW55IG9mIHRoZSBhYm92ZSBz
ZXJ2aWNlcy4KIApSZWdhcmRzLApNci4gSWJyYWhpbSBBbGRhYXMKQ29uc3VsdGFudC9GaW5hbmNl
IFNwZWNpYWxpc3QKQWJ1IERoYWJpIExMQwpNb2JpbGUvV2hhdHNhYXAgOis5NzEgNTggMjcwIDQy
NjgKCiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
