Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC13073135
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 16:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EF8A868A8;
	Wed, 24 Jul 2019 14:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hwTq8xmC7h4l; Wed, 24 Jul 2019 14:10:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 73514848F5;
	Wed, 24 Jul 2019 14:10:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46BCA1BF348
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 14:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3403187E16
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 14:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id He8JlsVP2-ei for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 14:10:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D655878A0
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 14:09:58 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id b29so24824269lfq.1
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 07:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5TDhFld/eHS7IYB60yUBetfgICBgTmFxknVZGppAKVY=;
 b=cxpmsx6uLdsw/bi3AUvQq74Ww0ft0zqDkE3E2M0XpOcl4d8LkUCY8osX8eCgUmAuJo
 97osGTWiQotVc/jqUlLU0HkmnJ5tieJdvz396iTeiMa58ryVZVqapLIe0Hav+EgFyMmU
 +9eGt90wvLTF5BvibV1Q21U7szJSArumW31ZMaX/R3yOQhnAAINOGAuXC2OAt6vJOopV
 d38MxAXLa0p/5Jz8uUSvB3RRWjK9PQbhHVqec5YHlbcGcSb98m6CrYlIkhdC0gEIG+mv
 vCbBpGLuo3S2lEI4ud7o0gzMjt9rWzuQG5fT3ZAHKzdluYnmIgvwSdawdsIsE/28pABs
 hmxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5TDhFld/eHS7IYB60yUBetfgICBgTmFxknVZGppAKVY=;
 b=lmJo7Q57cFCVGlag9Ip7riNeJxgBQz6ZZDqmdmMIGWtWGittvikQJ9gyIzhhV2BaKL
 Yg804uDjRiAiZwF8lQoaQH+cwKQwPXHD7EDSOV/TD4GvUZoDCuzoweGMPY3sHNaZey6B
 VOiFq+zCR8N/6loR85wtjhEjoIcqTCrsXeuEgM85P+nz+hvJhpytP6eluE/VlJawgv4A
 HZzDviPV+FBdbTadK5zZWCVUcMwovGK5cmqFvfXf68xP4+TLflmUjzC2OXx2bT9SNoVA
 eJMQZX/iyr5BwNIC+yTDPbsp6isTr5E/gxA0RhZ3zLTmFcqY++IuK6elOmnqg0Vd3C6b
 L1nQ==
X-Gm-Message-State: APjAAAX4ULK/pwRxH3HeswMNa/Z+MBJr0p2us8cmj0Qanbrd7n+Z3B4P
 8hVtvNkm8Z43ERumugw3BFo=
X-Google-Smtp-Source: APXvYqxK1fG+r2FGv25yZ1DPzjciv2L5EMqpAScm54D7ySJTLFckDaUho8RmvveLM6wOUsw87x2pvw==
X-Received: by 2002:ac2:44b1:: with SMTP id c17mr27772968lfm.87.1563977396265; 
 Wed, 24 Jul 2019 07:09:56 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.googlemail.com with ESMTPSA id c12sm6989583lfj.58.2019.07.24.07.09.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 07:09:55 -0700 (PDT)
Subject: Re: [PATCH] media: staging: ipu3: Enable IOVA API only when IOMMU
 support is enabled
To: Yuehaibing <yuehaibing@huawei.com>, Robin Murphy <robin.murphy@arm.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20190722134749.21580-1-yuehaibing@huawei.com>
 <20190724103027.GD21370@paasikivi.fi.intel.com>
 <e48fc180-06cc-eac7-d8ca-9be1699c8677@arm.com>
 <0c08bdae-facc-0f28-0e58-17a65172587a@huawei.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <491dbca1-8a58-b26e-cf56-a1a419da288f@gmail.com>
Date: Wed, 24 Jul 2019 17:09:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <0c08bdae-facc-0f28-0e58-17a65172587a@huawei.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 yong.zhi@intel.com, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjQuMDcuMjAxOSAxNzowMywgWXVlaGFpYmluZyDQv9C40YjQtdGCOgo+IE9uIDIwMTkvNy8yNCAy
MTo0OSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAyNC8wNy8yMDE5IDExOjMwLCBTYWthcmkg
QWlsdXMgd3JvdGU6Cj4+PiBIaSBZdWUsCj4+Pgo+Pj4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQg
MDk6NDc6NDlQTSArMDgwMCwgWXVlSGFpYmluZyB3cm90ZToKPj4+PiBJZiBJT01NVV9TVVBQT1JU
IGlzIG5vdCBzZXQsIGlwdTMgZHJpdmVyIG1heSBzZWxlY3QgSU9NTVVfSU9WQSB0byBtLgo+Pj4+
IEJ1dCBmb3IgbWFueSBkcml2ZXJzLCB0aGV5IHVzZSAic2VsZWN0IElPTU1VX0lPVkEgaWYgSU9N
TVVfU1VQUE9SVCIKPj4+PiBpbiB0aGUgS2NvbmZpZywgZm9yIGV4YW1wbGUsIENPTkZJR19URUdS
QV9WREUgaXMgc2V0IHRvIHkgYnV0IElPTU1VX0lPVkEKPj4+PiBpcyBtLCB0aGVuIHRoZSBidWls
ZGluZyBmYWlscyBsaWtlIHRoaXM6Cj4+Pj4KPj4+PiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVn
cmEtdmRlL2lvbW11Lm86IEluIGZ1bmN0aW9uIGB0ZWdyYV92ZGVfaW9tbXVfbWFwJzoKPj4+PiBp
b21tdS5jOigudGV4dCsweDQxKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgYWxsb2NfaW92YScK
Pj4+PiBpb21tdS5jOigudGV4dCsweDU2KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgX19mcmVl
X2lvdmEnCj4+Pj4KPj4+PiBSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2NpQGh1YXdlaS5j
b20+Cj4+Pj4gRml4ZXM6IDdmYzdhZjY0OWNhNyAoIm1lZGlhOiBzdGFnaW5nL2ludGVsLWlwdTM6
IEFkZCBpbWd1IHRvcCBsZXZlbCBwY2kgZGV2aWNlIGRyaXZlciIpCj4+Pj4gU2lnbmVkLW9mZi1i
eTogWXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29tPgo+Pj4+IC0tLQo+Pj4+ICAgZHJp
dmVycy9zdGFnaW5nL21lZGlhL2lwdTMvS2NvbmZpZyB8IDIgKy0KPj4+PiAgIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pcHUzL0tjb25maWcgYi9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaXB1My9LY29uZmlnCj4+Pj4gaW5kZXggNGI1MWM2Ny4uYjdkZjE4ZiAxMDA2NDQKPj4+PiAt
LS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9LY29uZmlnCj4+Pj4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2lwdTMvS2NvbmZpZwo+Pj4+IEBAIC00LDcgKzQsNyBAQCBjb25maWcg
VklERU9fSVBVM19JTUdVCj4+Pj4gICAgICAgZGVwZW5kcyBvbiBQQ0kgJiYgVklERU9fVjRMMgo+
Pj4+ICAgICAgIGRlcGVuZHMgb24gTUVESUFfQ09OVFJPTExFUiAmJiBWSURFT19WNEwyX1NVQkRF
Vl9BUEkKPj4+PiAgICAgICBkZXBlbmRzIG9uIFg4Ngo+Pj4+IC0gICAgc2VsZWN0IElPTU1VX0lP
VkEKPj4+PiArICAgIHNlbGVjdCBJT01NVV9JT1ZBIGlmIElPTU1VX1NVUFBPUlQKPj4+Cj4+PiBU
aGlzIGRvZXNuJ3Qgc2VlbSByaWdodDogdGhlIGlwdTMtY2lvMiBkcml2ZXIgbmVlZHMgSU9NTVVf
SU9WQQo+Pj4gaW5kZXBlbmRlbnRseSBvZiBJT01NVV9TVVBQT1JULgo+Pj4KPj4+IExvb2tpbmcg
YXQgdGVncmEtdmRlLCBpdCBzZWVtcyB0byBkZXBlbmQgb24gSU9NTVVfU1VQUE9SVCBidXQgdGhh
dCdzIG5vdAo+Pj4gZGVjbGFyZWQgaW4gaXRzIEtjb25maWcgZW50cnkuIEkgd29uZGVyIGlmIGFk
ZGluZyB0aGF0IHdvdWxkIGJlIHRoZSByaWdodAo+Pj4gd2F5IHRvIGZpeCB0aGlzLgo+Pj4KPj4+
IENjJ2luZyB0aGUgSU9NTVUgbGlzdC4KSU9NTVVfU1VQUE9SVCBpcyBvcHRpb25hbCBmb3IgdGhl
IFRlZ3JhLVZERSBkcml2ZXIuCgo+PiBSaWdodCwgSSBhbHNvIGhhZCB0aGUgaW1wcmVzc2lvbiB0
aGF0IHdlJ2QgbWFkZSB0aGUgSU9WQSBsaWJyYXJ5IGNvbXBsZXRlbHkgc3RhbmRhbG9uZS4gQW5k
IHdoYXQgZG9lcyB0aGUgSVBVMyBkcml2ZXIncyBLY29uZmlnIGhhdmUgdG8gZG8gd2l0aCBzb21l
ICpvdGhlciogZHJpdmVyIGZhaWxpbmcgdG8gbGluayBhbnl3YXk/CgpJIGNhbiBzZWUgaXQgZmFp
bGluZyBpZiBJUFUzIGlzIGNvbXBpbGVkIGFzIGEgbG9hZGFibGUgbW9kdWxlLCB3aGlsZQpUZWdy
YS1WREUgaXMgYSBidWlsdC1pbiBkcml2ZXIuIEhlbmNlIElPVkEgbGliIHNob3VsZCBiZSBhbHNv
IGEga2VybmVsCm1vZHVsZSBhbmQgdGh1cyB0aGUgSU9WQSBzeW1ib2xzIHdpbGwgYmUgbWlzc2lu
ZyBkdXJpbmcgb2YgbGlua2FnZSBvZgp0aGUgVkRFIGRyaXZlci4KCj4gT2gsIEkgbWlzdW5kZXJz
dGFuZCB0aGF0IElPTU1VX0lPVkEgaXMgZGVwZW5kIG9uIElPTU1VX1NVUFBPUlQsIHRoYW5rIHlv
dSBmb3IgY2xhcmlmaWNhdGlvbi4KPiAKPiBJIHdpbGwgdHJ5IHRvIGZpeCB0aGlzIGluIHRlZ3Jh
LXZkZS4KClByb2JhYmx5IElPVkEgY291bGQgYmUgc2VsZWN0ZWQgaW5kZXBlbmRlbnRseSBvZiBJ
T01NVV9TVVBQT1JULCBidXQgSU9WQQpsaWJyYXJ5IGlzbid0IG5lZWRlZCBmb3IgdGhlIFZERSBk
cml2ZXIgaWYgSU9NTVVfU1VQUE9SVCBpcyBkaXNhYmxlZC4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
