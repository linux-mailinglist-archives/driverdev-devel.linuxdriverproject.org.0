Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C12FA1B951C
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 04:26:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C82785815;
	Mon, 27 Apr 2020 02:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 50JS3G7-dNGR; Mon, 27 Apr 2020 02:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D9DA858D3;
	Mon, 27 Apr 2020 02:18:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D1C6A1BF389
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 02:17:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE9FA85BCE
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 02:17:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hlgqO37LTE9y for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 02:17:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8A510848F0
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 02:17:46 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7F4CD604439C8E50E61F;
 Mon, 27 Apr 2020 10:17:40 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.7) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Mon, 27 Apr 2020
 10:17:29 +0800
Subject: Re: [PATCH] staging: rtl8723bs: remove set but not used
 'pregistrypriv'
To: <gregkh@linuxfoundation.org>, <hariprasad.kelam@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
References: <20200426094334.24346-1-yanaijie@huawei.com>
From: Jason Yan <yanaijie@huawei.com>
Message-ID: <d141d9e7-5310-672a-9ffd-6be1b448261a@huawei.com>
Date: Mon, 27 Apr 2020 10:17:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200426094334.24346-1-yanaijie@huawei.com>
X-Originating-IP: [10.166.213.7]
X-CFilter-Loop: Reflected
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
Cc: Hulk Robot <hulkci@huawei.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U29ycnksIGl0IGhhcyBhbHJlYWR5IGJlZW4gZml4ZWQgYnkgWXVlSGFpYmluZy4gUGxlYXNlIGln
bm9yZSB0aGlzLgoK5ZyoIDIwMjAvNC8yNiAxNzo0MywgSmFzb24gWWFuIOWGmemBkzoKPiBGaXgg
dGhlIGZvbGxvd2luZyBnY2Mgd2FybmluZzoKPiAKPiBkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2Jz
L2hhbC9zZGlvX2hhbGluaXQuYzo1NDc6MjQ6IHdhcm5pbmc6IHZhcmlhYmxlCj4g4oCYcHJlZ2lz
dHJ5cHJpduKAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+
ICAgIHN0cnVjdCByZWdpc3RyeV9wcml2ICpwcmVnaXN0cnlwcml2Owo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICBefn5+fn5+fn5+fn5+Cj4gCj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1
bGtjaUBodWF3ZWkuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphc29uIFlhbiA8eWFuYWlqaWVAaHVh
d2VpLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvaGFsL3NkaW9faGFs
aW5pdC5jIHwgNCAtLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9oYWwvc2Rpb19oYWxpbml0LmMg
Yi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2hhbC9zZGlvX2hhbGluaXQuYwo+IGluZGV4IDc4
NTNhZjUzMDUxZC4uZTQyZDhjMThlMWFlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9y
dGw4NzIzYnMvaGFsL3NkaW9faGFsaW5pdC5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3
MjNicy9oYWwvc2Rpb19oYWxpbml0LmMKPiBAQCAtNTQ0LDEzICs1NDQsOSBAQCBzdGF0aWMgdm9p
ZCBfSW5pdFJldHJ5RnVuY3Rpb24oc3RydWN0IGFkYXB0ZXIgKnBhZGFwdGVyKQo+ICAgCj4gICBz
dGF0aWMgdm9pZCBIYWxSeEFnZ3I4NzIzQlNkaW8oc3RydWN0IGFkYXB0ZXIgKnBhZGFwdGVyKQo+
ICAgewo+IC0Jc3RydWN0IHJlZ2lzdHJ5X3ByaXYgKnByZWdpc3RyeXByaXY7Cj4gICAJdTggdmFs
dWVETUFUaW1lb3V0Owo+ICAgCXU4IHZhbHVlRE1BUGFnZUNvdW50Owo+ICAgCj4gLQo+IC0JcHJl
Z2lzdHJ5cHJpdiA9ICZwYWRhcHRlci0+cmVnaXN0cnlwcml2Owo+IC0KPiAgIAl2YWx1ZURNQVRp
bWVvdXQgPSAweDA2Owo+ICAgCXZhbHVlRE1BUGFnZUNvdW50ID0gMHgwNjsKPiAgIAo+IAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
