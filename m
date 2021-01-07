Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5842ECFBE
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Jan 2021 13:32:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 380CF868E8;
	Thu,  7 Jan 2021 12:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SZJDbBXC8uUv; Thu,  7 Jan 2021 12:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 432B286739;
	Thu,  7 Jan 2021 12:32:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D4701BF3D7
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 12:32:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 257D1233A6
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 12:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WNCzgzOwZdNd for <devel@linuxdriverproject.org>;
 Thu,  7 Jan 2021 12:32:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id DD449232D2
 for <devel@driverdev.osuosl.org>; Thu,  7 Jan 2021 12:32:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 931831F4628C
Message-ID: <f499532ca147a0d2907a5020fb69def89d4c69a6.camel@collabora.com>
Subject: Re: [PATCH] media: rkvdec: silence ktest bot build warning
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>, Hans Verkuil
 <hverkuil@xs4all.nl>
Date: Thu, 07 Jan 2021 09:32:28 -0300
In-Reply-To: <20210107124132.3648e789@collabora.com>
References: <20201208155540.340583-1-adrian.ratiu@collabora.com>
 <76b5569c-bc19-3d11-4da7-cf0dbb244433@xs4all.nl>
 <20210107124132.3648e789@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Adrian Ratiu <adrian.ratiu@collabora.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCAyMDIxLTAxLTA3IGF0IDEyOjQxICswMTAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6
Cj4gT24gVGh1LCA3IEphbiAyMDIxIDEwOjEzOjQzICswMTAwCj4gSGFucyBWZXJrdWlsIDxodmVy
a3VpbEB4czRhbGwubmw+IHdyb3RlOgo+IAo+ID4gT24gMDgvMTIvMjAyMCAxNjo1NSwgQWRyaWFu
IFJhdGl1IHdyb3RlOgo+ID4gPiBTb21lIGNvbmZpZ3VyYXRpb25zIGJ1aWx0IGJ5IHRoZSBrdGVz
dCBib3QgcHJvZHVjZSB0aGUgZm9sbG93aW5nCj4gPiA+IHdhcm4sIHNvIG1hcmsgdGhlIHN0cnVj
dCBhcyBfX21heWJlX3VudXNlZCB0byBhdm9pZCB1bm5lY2Vzc2FyeQo+ID4gPiBNTCBzcGFtLgo+
ID4gPiDCoCAKPiA+ID4gPiA+IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmM6
OTY3OjM0OiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUgJ29mX3JrdmRlY19tYXRjaCcgWy1XdW51
c2VkLWNvbnN0LXZhcmlhYmxlXcKgIAo+ID4gPiDCoMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIG9mX3JrdmRlY19tYXRjaFtdID0gewo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF4KPiA+
ID4gwqDCoCAxIHdhcm5pbmcgZ2VuZXJhdGVkLsKgIAo+ID4gCj4gPiBJIHN1c3BlY3QgdGhhdCB0
aGlzIGlzIGJlY2F1c2UgdGhlcmUgaXMgbm8gJ2RlcGVuZHMgb24gT0YnIGluIHRoZSBLY29uZmln
Lgo+ID4gCj4gPiAnX19tYXliZV91bnVzZWQnIGlzbid0IHVzZWQgZm9yIHRoaXMgYW55d2hlcmUg
ZWxzZSwgc28gdGhpcyBkb2VzIG5vdCBzZWVtIGxpa2UgdGhlCj4gPiByaWdodCBhcHByb2FjaC4K
PiAKPiBJdCdzIG5vdCB1bmNvbW1vbiB0byBkbyB0aGF0LCBlc3BlY2lhbGx5IHdoZW4geW91IHdh
bnQgdGhlIGRyaXZlciB0byBiZQo+IGNvbXBpbGUtdGVzdGVkIChgZ2l0IGdyZXAgLUMyIF9fbWF5
YmVfdW51c2VkfGdyZXAgb2ZfZGV2aWNlX2lkYCBldmVuCj4gcmVwb3J0cyAyIGRyaXZlcnMgaW4g
dGhlIG1lZGlhIHRyZWUgOlApLiBBIGBkZXBlbmRzIG9uIE9GYCBvciBhbgo+IGAjaWZkZWYgQ09O
RklHX09GYCBzZWN0aW9uIHN1cnJvdW5kaW5nIHRoZSBvZl9ya3ZkZWNfbWF0Y2ggZGVjbGFyYXRp
b24KPiB3b3VsZCBhbHNvIGRvIHRoZSB0cmljay4KPiAKCkknbSBmaW5lIGVpdGhlciB3YXksIF9f
bWF5YmVfdW51c2VkIG9yIGRlcGVuZHMgb24gT0YuCgpUaGFua3MsCkV6ZXF1aWVsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
