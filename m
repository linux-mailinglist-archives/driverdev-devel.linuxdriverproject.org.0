Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBB873A48C
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Jun 2023 17:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 814D1403A9;
	Thu, 22 Jun 2023 15:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 814D1403A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GVrTxey63_5G; Thu, 22 Jun 2023 15:15:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 75E704058E;
	Thu, 22 Jun 2023 15:15:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75E704058E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 63C0F1BF3D1
 for <devel@linuxdriverproject.org>; Thu, 22 Jun 2023 15:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3D1DD837B6
 for <devel@linuxdriverproject.org>; Thu, 22 Jun 2023 15:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D1DD837B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RtYXkcQJ7kPR for <devel@linuxdriverproject.org>;
 Thu, 22 Jun 2023 15:15:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A367482F39
Received: from mtk0.covanta.com (unknown [74.201.28.6])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A367482F39
 for <devel@linuxdriverproject.org>; Thu, 22 Jun 2023 15:15:35 +0000 (UTC)
From: legal.dpthsbc@gmail.com
To: devel@linuxdriverproject.org
Date: 22 Jun 2023 11:15:33 -0400
Message-ID: <20230622111533.68E9906E62FA8A4C@gmail.com>
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
Reply-To: legal.dpthsbc@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBTaXIswqAKCkRpZCB5b3UgaW5zdHJ1Y3QgdGhlIHBheW1lbnQgb2YgeW91ciBkZXBvc2l0
ZWQgZnVuZCB3aXRoIHVzIHRvIApNci5XaWxsaWFtIFdhbHRlciBXZXN0IG9mIEF1c3RyYWxpYSzC
oGZvcsKgaGUgcHJlc2VudGVkIHRoZSBiYW5rIApkZXRhaWxzIGJlbGxvdyAsIGluZm9ybWluZyB1
cyB0aGF0IHlvdSBhdXRob3JpemUgdGhlIHBheW1lbnQ6wqAKCkJhbms6IFN0IEdlb3JnZSBCYW5r
IExpbWl0ZWQKQWRkcmVzczogMzQgTmVyYW5nIFN0cmVldCBTb3V0aHBvcnQgUXVlZW5zbGFuZCBB
VVNUUkFMSUEgNDIxNQpTV0lGVCBDT0RFIOKAkyBTR0JMIEFVMlMKQlNCIE51bWJlciDigJMgMTE0
IOKAkyA4NzkKQWNjb3VudCBOdW1iZXIg4oCTIDQzMCA1ODEgNzMxCk5hbWUgb2YgQWNjb3VudCDi
gJMgV0lMTElBTSBXQUxURVIgV0VTVMKgCgpLaW5kbHkgY29uZmlybSBpZiB5b3UgZGlkIGF1dGhv
cml6ZSB0aGlzIHBheW1lbnQsIHdlIHRyeSB0byBnZXQgCnlvdSBvbiB0aGUgcGhvbmUgYnV0IG5v
dCBhY2Nlc3NpYmxlLgrCoMKgCldlIGhvbGQgdG8geW91ciByZXBseSBiZWZvcmUgd2UgY2FuIGVm
ZmVjdCB0aGUgcGF5bWVudC7CoMKgCgpCZXN0IFJlZ2FyZHMswqDCoAoKTXJzLiBKYXN3aW5kZXIg
V2VzdGJyb29rCkNoaWVmIEZpbmFuY2lhbCBPZmZpY2VyCkhlYWQgb2ZmaWNlIEhTQkMgQmFuayAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
