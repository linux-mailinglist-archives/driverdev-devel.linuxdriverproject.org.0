Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 812507436B4
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Jun 2023 10:12:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7732835E4;
	Fri, 30 Jun 2023 08:12:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7732835E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id quGeU1thk7JU; Fri, 30 Jun 2023 08:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82AFE835A6;
	Fri, 30 Jun 2023 08:12:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82AFE835A6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC5EA1BF2BD
 for <devel@linuxdriverproject.org>; Fri, 30 Jun 2023 08:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3392612D4
 for <devel@linuxdriverproject.org>; Fri, 30 Jun 2023 08:12:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3392612D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lwzCi3Cz4kSN for <devel@linuxdriverproject.org>;
 Fri, 30 Jun 2023 08:12:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D051461297
Received: from mtk0.wrenchgroup.com (unknown [74.201.28.73])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D051461297
 for <devel@linuxdriverproject.org>; Fri, 30 Jun 2023 08:12:23 +0000 (UTC)
From: fosgateperez@yahoo.com
To: devel@linuxdriverproject.org
Date: 30 Jun 2023 04:12:21 -0400
Message-ID: <20230630041221.3A507A231CC1D03F@yahoo.com>
MIME-Version: 1.0
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
Reply-To: fosgateperez@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TXkgRGVhciBCZWxvdmVkIGluIENocmlzdAoKR3JlZXRpbmdzIHRvIHlvdSBhbmQgeW91ciBmYW1p
bHkuIEkgYW0gTXJzLlBlcmV6IEZvc2dhdGUsIHdpZmUgdG8gCk1yLlJhb3VsIEZvc2dhdGUgZnJv
bSBQaGlsaXBwaW5lcywgSSBhbSA2OCB5ZWFycyBvbGQsIG15IGxhdGUgCkh1c2JhbmQgd2FzIGEg
RGlyZWN0b3Igd2l0aCBDb25zdHJ1Y3Rpb24gQ29tcGFueSBoZXJlIGJlZm9yZSBoaXMgClN1ZGRl
biBEZWF0aCBhZnRlciBhIGJyaWVmIG9mIGlsbG5lc3MgdGhhdCBsYXN0ZWQgZm9yIG9ubHkgZm91
ciAKZGF5cywgYnV0IGJlZm9yZSBoaXMgZGVhdGgsIGhlIERlcG9zaXRlZCB0aGUgU3VtIG9mIMKj
NSwyMDAsMDAwLjAwIApHQlAgd2l0aCBvbmUgb2YgdGhlIEJhbmsgaGVyZSBpbiBQaGlsaXBwaW5l
cyB3aXRoIG15IG5hbWUgYW5kIGkgCmFtIHN1ZmZlcmluZyBmcm9tIHBhbmNyZWF0aWMgY2FuY2Vy
LCBNeSBjb25kaXRpb24gaXMgcmVhbGx5IGJhZCAKYW5kIGl0IGlzIHF1aXRlIG9idmlvdXMgdGhh
dCBJIHdvbuKAmXQgbGl2ZSBtb3JlIHRoYW4gdHdvIG1vbnRocyAKYWNjb3JkaW5nIHRvIG15IGRv
Y3RvciwgCmFuZCBpIGhhdmUgbm8gQ2hpbGQgd2hvIGlzIGdvaW5nIHRvIHRha2UgY2FyZSBvZiB0
aGlzIEh1Z2UgYW1vdW50IApvZiBNb25leSwgSSBhbSB3aWxsaW5nIHRvIGRvbmF0ZSB0aGUgc3Vt
IG9mICDCozUsMjAwLDAwMC4wMCBHQlAgCmZvciB5b3UgdG8gaGVscCB3aWRvd3MgYW5kIHRoZSBs
ZXNzIHByaXZpbGVnZWQgb25lcyBpbiB0aGUgcnVyYWwgCmFuZCB1cmJhbiBhcmVhcyBhbmQgdG8g
Y2Fycnkgb3V0IGNoYXJpdHkgd29ya3MgaW4geW91ciBDb3VudHJ5IAphbmQgYXJvdW5kIHRoZSBX
b3JsZCBvbiBteSBCZWhhbGYuCgpXYWl0aW5nIGZvciB5b3VyIFVyZ2VudCBSZXNwb25zZS4KClJl
bWFpbiBibGVzc2VkIGluIHRoZSBuYW1lIG9mIHRoZSBMb3JkLgoKWW91cnMgaW4gQ2hyaXN0IAoK
TXJzLkZvc2dhdGUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
