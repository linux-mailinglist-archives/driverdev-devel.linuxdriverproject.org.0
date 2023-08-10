Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8187771DB
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Aug 2023 09:47:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA1C783B38;
	Thu, 10 Aug 2023 07:47:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA1C783B38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rebEZdkZ-PnI; Thu, 10 Aug 2023 07:47:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C99D483B2A;
	Thu, 10 Aug 2023 07:47:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C99D483B2A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F9781BF377
 for <devel@linuxdriverproject.org>; Thu, 10 Aug 2023 07:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 03315402E0
 for <devel@linuxdriverproject.org>; Thu, 10 Aug 2023 07:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03315402E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mLhtY8ohhOSc for <devel@linuxdriverproject.org>;
 Thu, 10 Aug 2023 07:47:11 +0000 (UTC)
X-Greylist: delayed 356 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 10 Aug 2023 07:47:11 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 492C3400E7
Received: from mail.untappedopportunity.pl (mail.untappedopportunity.pl
 [51.89.164.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 492C3400E7
 for <devel@driverdev.osuosl.org>; Thu, 10 Aug 2023 07:47:11 +0000 (UTC)
Received: by mail.untappedopportunity.pl (Postfix, from userid 1002)
 id 7DC61A2BED; Thu, 10 Aug 2023 07:41:10 +0000 (UTC)
Received: by mail.untappedopportunity.pl for <devel@driverdev.osuosl.org>;
 Thu, 10 Aug 2023 07:41:00 GMT
Message-ID: <20230810064500-0.1.ag.1if2m.0.zgdvp6h3d3@untappedopportunity.pl>
Date: Thu, 10 Aug 2023 07:41:00 GMT
From: "Roman Duda" <roman.duda@untappedopportunity.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Obroty_na_terminalu_p=C5=82atniczym_?=
X-Mailer: mail.untappedopportunity.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=untappedopportunity.pl; s=mail; t=1691653271;
 bh=5wpyoptbyYUuT+vHxbSH1QDt05st4RxEdvSzMPzrBhg=;
 h=Date:From:To:Subject:From;
 b=oHkEgkyJwqhLv3T1Tu+hzp/gkCpYbBPYXl5Y+gAcOA6FPlM5pCb9LKA3ZXSYb8xFi
 VYcGdSSzyyUlm1zuBeNYrUXczEn0gG7TPT+cISYXG9rAJlaf0a5neGUyQKX+j7ghQc
 6CqFeGFuZmyWl+dnv+dPqc5k9Ty3fZgD6LWtrPW/VPXN+4TZR306bX1llJT7B6SIxU
 2BnOy6kWAlZ+0dNMDKbliRgmvi7FCTwa16sU5lf9Ze+aRxQuV5TXR+VlDx+JtXiaEG
 OP2/DvSodgEn9wdFskjgFq3MehLGDEd+kJa5f2rJ1D+1Wytmbk3l3cFZLqpR7qvJY+
 S1t2VLZj90B8Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=untappedopportunity.pl
 header.i=@untappedopportunity.pl header.a=rsa-sha256 header.s=mail
 header.b=oHkEgkyJ
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U3phbm93bmkgUGHFhHN0d28sCgp6d3JhY2FtIHNpxJkgZG8gUGHFhHN0d2EgdyB6d2nEhXprdSB6
IHdwcm93YWR6ZW5pZW0gbm93ZWdvIHNwb3NvYnUgZmluYW5zb3dhbmlhIHBvZCBvYnLDs3QgbmEg
dGVybWluYWx1IHDFgmF0bmljenltIC0gYmV6IHpixJlkbnljaCBmb3JtYWxub8WbY2kgaSBiZXog
b2RzZXRlay4KCk5hc3plIHdzcGFyY2llIGtpZXJ1amVteSBkbyBwcnplZHNpxJliaW9yY8Ozdywg
a3TDs3J6eSBkemlhxYJhasSFIG5hIHJ5bmt1IHByemV6IGNvIG5ham1uaWVqIHJvaywga29yenlz
dGFqxIUgeiB0ZXJtaW5hbGEgcMWCYXRuaWN6ZWdvIG9kIG1pbi4gNiBtaWVzacSZY3kgaSBnZW5l
cnVqxIUgbmllIG1uaWVqIG5pxbwgNzUwMCB6xYIgbWllc2nEmWN6bmVnbyBvYnJvdHUgbmEgdGVy
bWluYWx1IHDFgmF0bmljenltLgoKSmXFvGVsaSBzcGXFgm5pYWrEhSBQYcWEc3R3byB0ZSBrcnl0
ZXJpYSBpIGludGVyZXN1amUgUGHFhHN0d2Egc3p5YmtpZSBwb3p5c2thbmllIGRvZGF0a293eWNo
IMWbcm9ka8OzdyB6IGF1dG9tYXR5Y3puxIUgc3DFgmF0xIUgZWxhc3R5Y3pueWNoIHJhdCBkb3N0
b3Nvd2FueWNoIGRvIGR6aWVubnljaCBvYnJvdMOzdyAtIHByb3N6xJkgbyB3aWFkb21vxZvEhy4g
Q2jEmXRuaWUgcHJ6ZWRzdGF3acSZIHN6Y3plZ8OzxYJ5LgoKClBvemRyYXdpYW0KUm9tYW4gRHVk
YQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
