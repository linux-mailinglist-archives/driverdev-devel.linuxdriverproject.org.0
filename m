Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BD1947691
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2024 10:02:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02344600B6;
	Mon,  5 Aug 2024 08:02:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WmQeW53KI66q; Mon,  5 Aug 2024 08:02:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 358526066F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 358526066F;
	Mon,  5 Aug 2024 08:02:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7BB241BF333
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2024 08:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7541D80ECA
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2024 08:02:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OpFVbgFNjvn6 for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2024 08:02:46 +0000 (UTC)
X-Greylist: delayed 454 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 05 Aug 2024 08:02:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E6BC780EB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6BC780EB8
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.95.17.171;
 helo=mail.platelier.com; envelope-from=denis.marek@platelier.com;
 receiver=<UNKNOWN> 
Received: from mail.platelier.com (mail.platelier.com [141.95.17.171])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6BC780EB8
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2024 08:02:45 +0000 (UTC)
Received: by mail.platelier.com (Postfix, from userid 1002)
 id 495AAA30CF; Mon,  5 Aug 2024 09:55:06 +0200 (CEST)
Received: by mail.platelier.com for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2024 07:55:04 GMT
Message-ID: <20240805084500-0.1.f2.tmzs.0.69qedqmdrh@platelier.com>
Date: Mon,  5 Aug 2024 07:55:04 GMT
From: "Denis Marek" <denis.marek@platelier.com>
To: <devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Podpora_pro_odv=C4=9Btv=C3=AD_cestovn=C3=ADho_ruchu?=
X-Mailer: mail.platelier.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=platelier.com; s=mail; t=1722844508;
 bh=n52SfiQB7f8f/ImPhd9Q3t5M9sbScejTU44V3S9avKc=;
 h=Date:From:To:Subject:From;
 b=F5nD4m5PWPjmQST5GJGuFlUNLjngkrvyK9ba52Nm/GgwMb7/6ToxHHzjhoB97cOXB
 UDwqVQ5/gYHg7sE6JRWYM6DVkjYkORxAaWta9EeA3NBqSCVELNcX19JtQ4PdHVDz4m
 CzayING+OeVA84AOU9VqrH4hbiqGsFfmdoqHRj+0tCOhatkLSh3U8DmZ8RDFx7+e00
 ZvgPm2ZHp+RhK75UVB1TyVCxb7LMxL4Am2HSAde91ZB8K4+ZztyXIJuPkUlEcgGvE6
 xjc4nt7VQtNpBWLazYcg2hghlFQZhqYV2KKoY067RNPW911c1c0RJVI0R9OScML5bT
 boeZ7nTPvky+A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=platelier.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=platelier.com header.i=@platelier.com
 header.a=rsa-sha256 header.s=mail header.b=F5nD4m5P
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

VsOhxb5lbsOtLCBqc21lIGV4cGVydGkgcyB2w61jZSBuZcW+IDEwbGV0b3Ugemt1xaFlbm9zdMOt
IHYgY2VzdG92bsOtbSBydWNodS4gCgpJbXBsZW1lbnRvdmFsaSBqc21lIG7DocWhIHZsYXN0bsOt
IHJlemVydmHEjW7DrSBzeXN0w6ltIG5hIHLFr3puw71jaCB0cnrDrWNoIHZlIHN0xZllZG7DrSBh
IHbDvWNob2Ruw60gRXZyb3DEmy4gU3lzdMOpbSBqZSBuZXVzdMOhbGUgdnl2w61qZW4gdiBzb3Vs
YWR1IHMgYWt0dcOhbG7DrW1pIHRyxb5uw61taSB0cmVuZHkuIAoKU3BvbHVwcsOhY2UgcyB0b3Vy
b3BlcsOhdG9yeSBuw6FtIHVtb8W+xYh1amUgcHLFr2LEm8W+bsSbIGlkZW50aWZpa292YXQgYSB0
ZXN0b3ZhdCBub3bDoSDFmWXFoWVuw60gdiByZcOhbG7DvWNoIHBvZG3DrW5rw6FjaCwgY2/FviB1
bW/FvsWIdWplIHJ5Y2hsw6kgcMWZaXpwxa9zb2JlbsOtIHByb2R1a3TFryB2w716dsOhbSBhIG/E
jWVrw6F2w6Fuw61tIHrDoWthem7DrWvFry4gCgpOw6HFoSBwxZnDrXN0dXAgdW1vxb7FiHVqZSBy
eWNobGUgcmVhZ292YXQgbmEgbcSbbsOtY8OtIHNlIHBvdMWZZWJ5IHRyaHUgYSBwb3NreXRvdmF0
IMWZZcWhZW7DrSwga3RlcsOhIHp2ecWhdWrDrSBlZmVrdGl2aXR1IGEga29ua3VyZW5jZXNjaG9w
bm9zdCBuYcWhaWNoIHrDoWthem7DrWvFry4gCgpNb2hsaSBieWNob20gc2kgZG9tbHV2aXQga3LD
oXRrw70gcm96aG92b3IsIGFieWNob20gcHJvZGlza3V0b3ZhbGksIGphayBuYcWhZSB6a3XFoWVu
b3N0aSBhIHN5c3TDqW0gbW9ob3UgcG9kcG/FmWl0IHbDocWhIGJ5em55cz8KCgpTIHDFmcOhdGVs
c2vDvW0gcG96ZHJhdmVtCkRlbmlzIE1hcmVrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
