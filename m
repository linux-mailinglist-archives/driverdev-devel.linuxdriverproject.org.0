Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3349D40F
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 18:34:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B710863E1;
	Mon, 26 Aug 2019 16:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zweyTD_rmy0k; Mon, 26 Aug 2019 16:34:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A48C862C7;
	Mon, 26 Aug 2019 16:34:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A22E1BF2FD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 16:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 345DA8471C
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 16:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PeBe4dHMI9Hb
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 16:34:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4A2BD84368
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 16:34:01 +0000 (UTC)
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B6EFC81F0E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 16:34:00 +0000 (UTC)
Received: by mail-qt1-f199.google.com with SMTP id f19so7196050qtq.1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 09:34:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZGHeAZxiQmPSpy5q5l4G6xtSUzeJMjG1nkj266r0jgY=;
 b=n8BZscEkJzsdxCDi4nLUTsVzCt47gnE4otBHrMdfArTvA7Q2VLpsC/i0coloMmpMQT
 D0caSto/V6mflWLvvhJP1Z23EVGQPH5NXYZMHWkiaU+lm/DziGMg3QU7/hUm2c4ZQ6Yl
 cf/pndZa+DCp4t9MehjxSU7p0642VznUKPuEbGLV1qzM3SXCLJYaPARbYsk4F8eMzN6V
 YAf70bE8shmURcBv3/uLbaAZj/NaAr0NSnbzPpT9vCQSDb2NPmJXrxh1yt88YpbEAeMV
 gm2pNwBB0MLqSEEJ8FFSKQUVq+jOjreUpBmYg93uXWfXmqEPbEzUCbMV5chYExFcQH7V
 Eezg==
X-Gm-Message-State: APjAAAVi8gUxqvpqMq4r0+HKx/DHH/Fe0fjMcod3YNu8QMk4S67F99yG
 ofYU0X/d9zTEdqp5N3bs3F8dfZJha9wBQdllvtbiSEUOVbgKTGXMG7sjYjc9N3Rwdejc/yys87K
 HULrzNhJ0ryHNnG0G8YqN2bXYM9X2+zbVgN1hEg==
X-Received: by 2002:a37:a9d0:: with SMTP id s199mr17260524qke.32.1566837240028; 
 Mon, 26 Aug 2019 09:34:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxYhCWFPGwo0ESrs1dqbd+DMWZEOFx1izpvtxN1G6C1cXyw2BDVpHAPkR4HgyoumJ/UF6cLTA==
X-Received: by 2002:a37:a9d0:: with SMTP id s199mr17260490qke.32.1566837239692; 
 Mon, 26 Aug 2019 09:33:59 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id s36sm8479044qtb.66.2019.08.26.09.33.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Aug 2019 09:33:59 -0700 (PDT)
Subject: Re: [PATCH] staging: android: ion: cma heap: Limit size of allocated
 buffer
To: Alexey Skidanov <alexey.skidanov@intel.com>,
 driverdev-devel@linuxdriverproject.org
References: <1566613683-1872-1-git-send-email-alexey.skidanov@intel.com>
 <af46d441-9648-8508-3989-f19a70f73a26@redhat.com>
 <5f902bea-f3cd-0d64-0534-582c29dda365@intel.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <c2cf5284-ab13-8505-de66-59177d1cd9d6@redhat.com>
Date: Mon, 26 Aug 2019 12:33:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5f902bea-f3cd-0d64-0534-582c29dda365@intel.com>
Content-Language: en-US
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
Cc: John Stultz <john.stultz@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gOC8yNi8xOSAzOjU1IEFNLCBBbGV4ZXkgU2tpZGFub3Ygd3JvdGU6Cj4gCj4gT24gOC8yNi8x
OSAxMTozNiBBTSwgTGF1cmEgQWJib3R0IHdyb3RlOgo+PiBPbiA4LzIzLzE5IDEwOjI4IFBNLCBB
bGV4ZXkgU2tpZGFub3Ygd3JvdGU6Cj4+PiBJbiBpb25fY21hX2hlYXAsIHRoZSBhbGxvY2F0ZWQg
YnVmZmVyIGlzIHJlcHJlc2VudGVkIGJ5IGEgc2luZ2xlCj4+PiBzdHJ1Y3Qgc2NhdHRlcmxpc3Qg
aW5zdGFuY2UuIFRoZSBsZW5ndGggZmllbGQgb2YgdGhpcyBzdHJ1Y3QgaXMKPj4+IDMyIGJpdCwg
aGVuY2UgdGhlIG1heGltYWwgc2l6ZSBvZiByZXF1ZXN0ZWQgYnVmZmVyIHNob3VsZCBiZQo+Pj4g
bGVzcyB0aGFuIDRHQi4KPj4+Cj4+PiBUaGUgbGVuIHBhcmFtZXIgb2YgdGhlIGFsbG9jYXRpb24g
ZnVuY3Rpb24gaXMgNjQgYml0IChvbiA2NCBiaXQgc3lzdGVtcykuCj4+PiBIZW5jZSB0aGUgcmVx
dWVzdGVkIHNpemUgbWlnaHQgYmUgZ3JlYXRlciB0aGFuIDRHQiBhbmQgaW4gdGhpcyBjYXNlCj4+
PiB0aGUgZmllbGQgbGVuZ3RoIG9mIHRoZSBzdHJ1Y3Qgc2NhdHRlcmxpc3QgaXMgaW5pdGlhbGl6
ZWQgaW5jb3JyZWN0bHkuCj4+Pgo+Pj4gVG8gZml4IHRoaXMsIHdlIGNoZWNrIHRoYXQgcmVxdWVz
dGVkIHNpemUgbWF5IGZpdCBpbnRvCj4+PiB0aGUgZmllbGQgbGVuZ3RoIG9mIHRoZSBzdHJ1Y3Qg
c2NhdHRlcmxpc3QKPj4+Cj4+Cj4+IElzIHRoaXMgYSByZWFsIGlzc3VlIHRoYXQncyBhY3R1YWxs
eSBwb3NzaWJsZSB0byBoaXQ/IEFsbG9jYXRpbmcKPj4gbW9yZSB0aGFuIGEgNEdCIHJlZ2lvbiBv
ZiBDTUEgc2VlbXMgaWxsIGFkdmlzZWQgYW5kIGxpa2VseSB0bwo+PiB0aHJvdyBvZmYgYWxsIHRo
ZSBhY2NvdW50aW5nLgo+Pgo+IFllcy4gTm90IHN1cmUgd2h5IGl0IHNlZW1zIGlsbCBhZHZpc2Vk
IC0gbW9zdCBvZiB0aGUgYnVmZmVycyBhcmUgc21hbGwgb3IgbWlkZGxlIHNpemUgb25lcywgYnV0
IHNvbWV0aW1lcyByZWFsbHkgaHVnZSBvbmUgaXMgcmVxdWVzdGVkLgo+IAoKTW9zdGx5IEknbSBz
dXJwcmlzZWQgYWxsb2NhdGluZyA0R0Igb2YgQ01BIGFjdHVhbGx5IHN1Y2NlZWRzLiBXaGVuCkkg
d2FzIGxhc3QgZG9pbmcgd29yayBvbiBDTUEsIHRoZSByZWxpYWJpbGl0eSBqdXN0IHdhc24ndCB0
aGVyZQpmb3IgbGFyZ2VyIHJlZ2lvbnMuIEl0J3MgYmVlbiBzZXZlcmFsIHllYXJzIHNpbmNlIHRo
ZW4gc28gbWF5YmUKdGhpbmdzIGhhdmUgY2hhbmdlZC4gTXkgY29uY2VybiBhYm91dCB0aGUgYWNj
b3VudGluZyBpcyB0aGF0Cm1vc3Qgb2YgdGhlIG1hdGggaXMgZG9uZSBzdWNoIHRoYXQgdGhlcmUg
YXJlIGEgZmV3IENNQSBwYWdlcwp2cyBtb3JlIHBhZ2VzIGFjcm9zcyB0aGUgcmVzdCBvZiB0aGUg
c3lzdGVtIHdoaWNoIHNlZW1zIGxpa2VseSB0bwpoaXQgcGVyZm9ybWFuY2UgaXNzdWVzLiBDTUEg
d2FzIGRlc2lnbmVkIHdpdGggdGFyZ2V0cyB3aXRoIHNtYWxsZXIKbWVtb3J5IGZvb3RwcmludHMg
c28gYW55dGhpbmcgdGhhdCBoYXMgNEdCIG9mIG1lbW9yeSB0byBnbyBhcm91bmQgaXMKbXVjaCBs
YXJnZXIgdGhhbiB3aGF0IENNQSB3YXMgb3JpZ2luYWxseSBkZXNpZ25lZCBmb3IuCgpUaGUgY2hl
Y2sgYWRkZWQgc2hvdWxkIG9ubHkgYmUgYXBwbGljYWJsZSBpZiB3ZSBjYW4gcmVsaWFibHkKYWxs
b2NhdGUgbW9yZSB0aGFuIDRHQiBvZiBDTUEuIElmIHlvdSBjYW4gY29uZmlybSB5b3UgaGF2ZSBh
IHNldHVwCndoZXJlIHlvdSBhcmUgYWN0dWFsbHkgYWJsZSB0byBhbGxvY2F0ZSA0R0Igb2YgQ01B
LCBJJ2QgcmF0aGVyCmp1c3QgaGF2ZSB0aGUgY2hlY2sgYmUgZm9yIDRHQiBleHBsaWNpdGx5IGlu
c3RlYWQgb2YgdHlpbmcKaXQgdG8ganVzdCB0aGUgc2NhdHRlcmxpc3QgbGVuZ3RoLiBJdCdzIGEg
cmVhc29uYWJsZSByZXN0cmljdGlvbgp0byBtYWtlIGFuZCBpdCdzIGVhc2llciB0byByZXZpZXcu
Cgo+Pj4gU2lnbmVkLW9mZi1ieTogQWxleGV5IFNraWRhbm92IDxhbGV4ZXkuc2tpZGFub3ZAaW50
ZWwuY29tPgo+Pj4gLS0tCj4+PiAgwqAgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5o
wqDCoMKgwqDCoMKgwqDCoMKgIHwgNSArKysrKwo+Pj4gIMKgIGRyaXZlcnMvc3RhZ2luZy9hbmRy
b2lkL2lvbi9pb25fY21hX2hlYXAuYyB8IDMgKysrCj4+PiAgwqAgMiBmaWxlcyBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2FuZHJv
aWQvaW9uL2lvbi5oIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5oCj4+PiBpbmRl
eCBlMjkxMjk5Li45ZGQ3ZTIwIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJv
aWQvaW9uL2lvbi5oCj4+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmgK
Pj4+IEBAIC0yMSw2ICsyMSwxMSBAQAo+Pj4gIMKgIMKgICNpbmNsdWRlICIuLi91YXBpL2lvbi5o
Igo+Pj4gIMKgICsjZGVmaW5lIE1BWF9TQ0FUVEVSTElTVF9MRU4gKHtcCj4+PiArwqDCoMKgwqDC
oMKgwqAgdHlwZW9mKCgoc3RydWN0IHNjYXR0ZXJsaXN0ICopMCktPmxlbmd0aCkgdjtcCj4+PiAr
wqDCoMKgwqDCoMKgwqAgdiA9IC0xO1wKPj4+ICvCoMKgwqAgfSkKPj4+ICsKPj4+ICDCoCAvKioK
Pj4+ICDCoMKgICogc3RydWN0IGlvbl9idWZmZXIgLSBtZXRhZGF0YSBmb3IgYSBwYXJ0aWN1bGFy
IGJ1ZmZlcgo+Pj4gIMKgwqAgKiBAbm9kZTrCoMKgwqDCoMKgwqDCoCBub2RlIGluIHRoZSBpb25f
ZGV2aWNlIGJ1ZmZlcnMgdHJlZQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRy
b2lkL2lvbi9pb25fY21hX2hlYXAuYyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25f
Y21hX2hlYXAuYwo+Pj4gaW5kZXggYmY2NWU2Ny4uZDA2OTcxOSAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25fY21hX2hlYXAuYwo+Pj4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9jbWFfaGVhcC5jCj4+PiBAQCAtMzYsNiArMzYsOSBA
QCBzdGF0aWMgaW50IGlvbl9jbWFfYWxsb2NhdGUoc3RydWN0IGlvbl9oZWFwICpoZWFwLCBzdHJ1
Y3QgaW9uX2J1ZmZlciAqYnVmZmVyLAo+Pj4gIMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBhbGln
biA9IGdldF9vcmRlcihzaXplKTsKPj4+ICDCoMKgwqDCoMKgIGludCByZXQ7Cj4+PiAgwqAgK8Kg
wqDCoCBpZiAoc2l6ZSA+IE1BWF9TQ0FUVEVSTElTVF9MRU4pCj4+PiArwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIC1FSU5WQUw7Cj4+PiArCj4+PiAgwqDCoMKgwqDCoCBpZiAoYWxpZ24gPiBDT05GSUdf
Q01BX0FMSUdOTUVOVCkKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgYWxpZ24gPSBDT05GSUdfQ01B
X0FMSUdOTUVOVDsKPj4+ICAgCj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
