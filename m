Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26818731A0
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 16:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C6AC85EEF;
	Wed, 24 Jul 2019 14:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QqDb7KjTw3uY; Wed, 24 Jul 2019 14:28:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C05A785EC1;
	Wed, 24 Jul 2019 14:28:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 903CF1BF348
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 14:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8BA9481402
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 14:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cqAGVj9G0S0F for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 14:28:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5001181148
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 14:28:53 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id x25so44771760ljh.2
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 07:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=a8adFHytHBTsJftWOAZexTFr5WjQ4+eUKt3ZlK8cE/Y=;
 b=klbseCMCkn55eIImdEW1DX/nC888w41MonWoWNZdmbsu+Xc8JOxrl5yE2W71Tv65o+
 2BPSm/oN9PHr0w+MjelFN+TBWC8jjH+1yFn18bfVnCZMnQsHvHMzuJfaCtigjYVCmd13
 X0i5zWVC9xhSjEmEFsW0aWcR5b4hs0pAvHsnWf6ElJoZMkTjS1xUDRpmjb5BkrCOCPYu
 6MwTSQultvbfWthAa7fZmSP7YOYx3EufLper+mcE0aGJponeyVlGJQH64jCniOqbe3hb
 ML5m6yVvC16Xs9VOXIWZwxkyJEVMSM7f+FGrS9O60h0pyYJ71fFWc24l3ZDa4+VIFbs7
 sUWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a8adFHytHBTsJftWOAZexTFr5WjQ4+eUKt3ZlK8cE/Y=;
 b=kKSh4c91VHUmmp8GMjVYTlURFA+V/zNfZ+T/a0s4sC7HCKcUugtnUHardXoViOl3BH
 whdWSRcviyYy9zVnuQKGqWet3QhSfRTefH4+Ns8hWX1ibCLYtSqZ6UAcELo1tI8RNpDi
 OpGsyhIL8ZgEjnZ2dYDo+MmbBQzlsl3foQyHDNyCEmi/ubvUaCXROE2XEH3ZSqmMcPga
 8mG6ADsPxiyHoxUE+UHZuuKA3gHKAl5CDTkuHyrVvi0luORrGL7qImCFv/mYWjpW1Fzb
 Z5P2ksVGG0dbvx/4X3hSezJNDMabXAZy3HD3kf5TXeTZu8J4GHrwVwiEPE0YQPPLrw1+
 J6xQ==
X-Gm-Message-State: APjAAAVZqq8kWELV/NroL0G+AlLXKjs/bp9NxB0HYqWXGetBzu1BlaCj
 x6czDBVaXxDptIid9TXpp0g=
X-Google-Smtp-Source: APXvYqzYVIyHbPQXFWnL98erzAUeU8oyIbBaN4a7OiAXSepJRjVkXKAD4PtiNbFuP/Z4sy6b4cdsjA==
X-Received: by 2002:a2e:b003:: with SMTP id y3mr43747276ljk.72.1563978531475; 
 Wed, 24 Jul 2019 07:28:51 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.googlemail.com with ESMTPSA id j11sm7098446lfm.29.2019.07.24.07.28.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 07:28:50 -0700 (PDT)
Subject: Re: [PATCH] media: staging: ipu3: Enable IOVA API only when IOMMU
 support is enabled
To: Robin Murphy <robin.murphy@arm.com>, Yuehaibing <yuehaibing@huawei.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20190722134749.21580-1-yuehaibing@huawei.com>
 <20190724103027.GD21370@paasikivi.fi.intel.com>
 <e48fc180-06cc-eac7-d8ca-9be1699c8677@arm.com>
 <0c08bdae-facc-0f28-0e58-17a65172587a@huawei.com>
 <491dbca1-8a58-b26e-cf56-a1a419da288f@gmail.com>
 <eaf521ff-7dc6-70ae-0473-9c994def602b@arm.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <dc354ede-5963-cd7f-ee53-f3df3061d39a@gmail.com>
Date: Wed, 24 Jul 2019 17:28:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <eaf521ff-7dc6-70ae-0473-9c994def602b@arm.com>
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

MjQuMDcuMjAxOSAxNzoyMywgUm9iaW4gTXVycGh5INC/0LjRiNC10YI6Cj4gT24gMjQvMDcvMjAx
OSAxNTowOSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiAyNC4wNy4yMDE5IDE3OjAzLCBZdWVo
YWliaW5nINC/0LjRiNC10YI6Cj4+PiBPbiAyMDE5LzcvMjQgMjE6NDksIFJvYmluIE11cnBoeSB3
cm90ZToKPj4+PiBPbiAyNC8wNy8yMDE5IDExOjMwLCBTYWthcmkgQWlsdXMgd3JvdGU6Cj4+Pj4+
IEhpIFl1ZSwKPj4+Pj4KPj4+Pj4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDk6NDc6NDlQTSAr
MDgwMCwgWXVlSGFpYmluZyB3cm90ZToKPj4+Pj4+IElmIElPTU1VX1NVUFBPUlQgaXMgbm90IHNl
dCwgaXB1MyBkcml2ZXIgbWF5IHNlbGVjdCBJT01NVV9JT1ZBIHRvIG0uCj4+Pj4+PiBCdXQgZm9y
IG1hbnkgZHJpdmVycywgdGhleSB1c2UgInNlbGVjdCBJT01NVV9JT1ZBIGlmIElPTU1VX1NVUFBP
UlQiCj4+Pj4+PiBpbiB0aGUgS2NvbmZpZywgZm9yIGV4YW1wbGUsIENPTkZJR19URUdSQV9WREUg
aXMgc2V0IHRvIHkgYnV0Cj4+Pj4+PiBJT01NVV9JT1ZBCj4+Pj4+PiBpcyBtLCB0aGVuIHRoZSBi
dWlsZGluZyBmYWlscyBsaWtlIHRoaXM6Cj4+Pj4+Pgo+Pj4+Pj4gZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3RlZ3JhLXZkZS9pb21tdS5vOiBJbiBmdW5jdGlvbgo+Pj4+Pj4gYHRlZ3JhX3ZkZV9pb21t
dV9tYXAnOgo+Pj4+Pj4gaW9tbXUuYzooLnRleHQrMHg0MSk6IHVuZGVmaW5lZCByZWZlcmVuY2Ug
dG8gYGFsbG9jX2lvdmEnCj4+Pj4+PiBpb21tdS5jOigudGV4dCsweDU2KTogdW5kZWZpbmVkIHJl
ZmVyZW5jZSB0byBgX19mcmVlX2lvdmEnCj4+Pj4+Pgo+Pj4+Pj4gUmVwb3J0ZWQtYnk6IEh1bGsg
Um9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgo+Pj4+Pj4gRml4ZXM6IDdmYzdhZjY0OWNhNyAoIm1l
ZGlhOiBzdGFnaW5nL2ludGVsLWlwdTM6IEFkZCBpbWd1IHRvcAo+Pj4+Pj4gbGV2ZWwgcGNpIGRl
dmljZSBkcml2ZXIiKQo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogWXVlSGFpYmluZyA8eXVlaGFpYmlu
Z0BodWF3ZWkuY29tPgo+Pj4+Pj4gLS0tCj4+Pj4+PiDCoMKgIGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9pcHUzL0tjb25maWcgfCAyICstCj4+Pj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaXB1My9LY29uZmlnCj4+Pj4+PiBiL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9pcHUzL0tjb25maWcKPj4+Pj4+IGluZGV4IDRiNTFjNjcuLmI3ZGYxOGYgMTAwNjQ0Cj4+Pj4+
PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9LY29uZmlnCj4+Pj4+PiArKysgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9LY29uZmlnCj4+Pj4+PiBAQCAtNCw3ICs0LDcgQEAg
Y29uZmlnIFZJREVPX0lQVTNfSU1HVQo+Pj4+Pj4gwqDCoMKgwqDCoMKgIGRlcGVuZHMgb24gUENJ
ICYmIFZJREVPX1Y0TDIKPj4+Pj4+IMKgwqDCoMKgwqDCoCBkZXBlbmRzIG9uIE1FRElBX0NPTlRS
T0xMRVIgJiYgVklERU9fVjRMMl9TVUJERVZfQVBJCj4+Pj4+PiDCoMKgwqDCoMKgwqAgZGVwZW5k
cyBvbiBYODYKPj4+Pj4+IC3CoMKgwqAgc2VsZWN0IElPTU1VX0lPVkEKPj4+Pj4+ICvCoMKgwqAg
c2VsZWN0IElPTU1VX0lPVkEgaWYgSU9NTVVfU1VQUE9SVAo+Pj4+Pgo+Pj4+PiBUaGlzIGRvZXNu
J3Qgc2VlbSByaWdodDogdGhlIGlwdTMtY2lvMiBkcml2ZXIgbmVlZHMgSU9NTVVfSU9WQQo+Pj4+
PiBpbmRlcGVuZGVudGx5IG9mIElPTU1VX1NVUFBPUlQuCj4+Pj4+Cj4+Pj4+IExvb2tpbmcgYXQg
dGVncmEtdmRlLCBpdCBzZWVtcyB0byBkZXBlbmQgb24gSU9NTVVfU1VQUE9SVCBidXQKPj4+Pj4g
dGhhdCdzIG5vdAo+Pj4+PiBkZWNsYXJlZCBpbiBpdHMgS2NvbmZpZyBlbnRyeS4gSSB3b25kZXIg
aWYgYWRkaW5nIHRoYXQgd291bGQgYmUgdGhlCj4+Pj4+IHJpZ2h0Cj4+Pj4+IHdheSB0byBmaXgg
dGhpcy4KPj4+Pj4KPj4+Pj4gQ2MnaW5nIHRoZSBJT01NVSBsaXN0Lgo+PiBJT01NVV9TVVBQT1JU
IGlzIG9wdGlvbmFsIGZvciB0aGUgVGVncmEtVkRFIGRyaXZlci4KPj4KPj4+PiBSaWdodCwgSSBh
bHNvIGhhZCB0aGUgaW1wcmVzc2lvbiB0aGF0IHdlJ2QgbWFkZSB0aGUgSU9WQSBsaWJyYXJ5Cj4+
Pj4gY29tcGxldGVseSBzdGFuZGFsb25lLiBBbmQgd2hhdCBkb2VzIHRoZSBJUFUzIGRyaXZlcidz
IEtjb25maWcgaGF2ZQo+Pj4+IHRvIGRvIHdpdGggc29tZSAqb3RoZXIqIGRyaXZlciBmYWlsaW5n
IHRvIGxpbmsgYW55d2F5Pwo+Pgo+PiBJIGNhbiBzZWUgaXQgZmFpbGluZyBpZiBJUFUzIGlzIGNv
bXBpbGVkIGFzIGEgbG9hZGFibGUgbW9kdWxlLCB3aGlsZQo+PiBUZWdyYS1WREUgaXMgYSBidWls
dC1pbiBkcml2ZXIuIEhlbmNlIElPVkEgbGliIHNob3VsZCBiZSBhbHNvIGEga2VybmVsCj4+IG1v
ZHVsZSBhbmQgdGh1cyB0aGUgSU9WQSBzeW1ib2xzIHdpbGwgYmUgbWlzc2luZyBkdXJpbmcgb2Yg
bGlua2FnZSBvZgo+PiB0aGUgVkRFIGRyaXZlci4KPj4KPj4+IE9oLCBJIG1pc3VuZGVyc3RhbmQg
dGhhdCBJT01NVV9JT1ZBIGlzIGRlcGVuZCBvbiBJT01NVV9TVVBQT1JULCB0aGFuawo+Pj4geW91
IGZvciBjbGFyaWZpY2F0aW9uLgo+Pj4KPj4+IEkgd2lsbCB0cnkgdG8gZml4IHRoaXMgaW4gdGVn
cmEtdmRlLgo+Pgo+PiBQcm9iYWJseSBJT1ZBIGNvdWxkIGJlIHNlbGVjdGVkIGluZGVwZW5kZW50
bHkgb2YgSU9NTVVfU1VQUE9SVCwgYnV0IElPVkEKPj4gbGlicmFyeSBpc24ndCBuZWVkZWQgZm9y
IHRoZSBWREUgZHJpdmVyIGlmIElPTU1VX1NVUFBPUlQgaXMgZGlzYWJsZWQuCj4gCj4gT2gsIEkg
dGhpbmsgSSBnZXQgdGhlIHByb2JsZW0gbm93IC0gdGVncmEtdmRlL2lvbW11LmMgaXMgYnVpbHQK
PiB1bmNvbmRpdGlvbmFsbHkgYW5kIHJlbGllcyBvbiB0aGUgc3RhdGljIGlubGluZSBzdHVicyBm
b3IgSU9NTVUgYW5kIElPVkEKPiBjYWxscyBpZiAhSU9NTVVfU1VQUE9SVCwgYnV0IGluIGEgY29t
cGlsZS10ZXN0IGNvbmZpZyB3aGVyZSBJT1ZBPW0gZm9yCj4gb3RoZXIgcmVhc29ucywgaXQgdGhl
biBwaWNrcyB1cCB0aGUgcmVhbCBkZWNsYXJhdGlvbnMgZnJvbSBsaW51eC9pb3ZhLmgKPiBpbnN0
ZWFkIG9mIHRoZSBzdHVicywgYW5kIHRoaW5ncyBnbyBkb3duaGlsbCBmcm9tIHRoZXJlLiBTbyB0
aGVyZSBpcyBhCj4gcmVhbCBpc3N1ZSwgYnV0IGluZGVlZCBpdCdzIFRlZ3JhLVZERSB3aGljaCBu
ZWVkcyB0byBiZSByZXN0cnVjdHVyZWQgdG8KPiBjb3BlIHdpdGggc3VjaCBjb25maWd1cmF0aW9u
cywgYW5kIG5vdCBJUFUzJ3MgKG9yIGFueW9uZSBlbHNlIHdobyBtYXkKPiBzZWxlY3QgSU9WQT1t
IGluIGZ1dHVyZSkgam9iIHRvIHdvcmsgYXJvdW5kIGl0LgoKSSBndWVzcyBpdCBjb3VsZCBiZToK
CglzZWxlY3QgSU9NTVVfSU9WQSBpZiAoSU9NTVVfU1VQUE9SVCB8fCBDT01QSUxFX1RFU1QpCgph
cyBhIHdvcmthcm91bmQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
