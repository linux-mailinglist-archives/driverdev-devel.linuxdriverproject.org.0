Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0142ABADB
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Sep 2019 16:29:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A618185CD0;
	Fri,  6 Sep 2019 14:29:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id htGAKV5Js5RV; Fri,  6 Sep 2019 14:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E85BB85B9D;
	Fri,  6 Sep 2019 14:29:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 761861BF2A3
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 14:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7024B85A46
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 14:29:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mswk6u-qmicW for <devel@linuxdriverproject.org>;
 Fri,  6 Sep 2019 14:29:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F271D855D2
 for <devel@driverdev.osuosl.org>; Fri,  6 Sep 2019 14:29:06 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 69C8BE935B408234D2E0;
 Fri,  6 Sep 2019 22:29:01 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 6 Sep 2019 22:28:59 +0800
Subject: Re: [PATCH] media: staging: tegra-vde: Disable building with
 COMPILE_TEST
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
References: <20190826133140.13456-1-yuehaibing@huawei.com>
 <7f73bcac-f52d-f1b3-324c-e9b551c5378b@xs4all.nl>
 <20190829124034.GA19842@ulmo>
 <b048b460-9d58-8e38-e335-f9a3fface559@gmail.com>
 <20190829154902.GC19842@ulmo>
 <c4014675-8fc6-e947-7ac5-68795fd80bc0@gmail.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <3ce3b6ed-86d3-55ac-462d-4bc91b7d04ed@huawei.com>
Date: Fri, 6 Sep 2019 22:28:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <c4014675-8fc6-e947-7ac5-68795fd80bc0@gmail.com>
X-Originating-IP: [10.133.213.239]
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 iommu@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 mchehab@kernel.org, robin.murphy@arm.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE5LzkvNiAyMTozOCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IDI5LjA4LjIwMTkg
MTg6NDksIFRoaWVycnkgUmVkaW5nINC/0LjRiNC10YI6Cj4+IE9uIFRodSwgQXVnIDI5LCAyMDE5
IGF0IDA0OjU4OjIyUE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4+IDI5LjA4LjIw
MTkgMTU6NDAsIFRoaWVycnkgUmVkaW5nINC/0LjRiNC10YI6Cj4+Pj4gT24gVGh1LCBBdWcgMjks
IDIwMTkgYXQgMDE6Mzk6MzJQTSArMDIwMCwgSGFucyBWZXJrdWlsIHdyb3RlOgo+Pj4+PiBPbiA4
LzI2LzE5IDM6MzEgUE0sIFl1ZUhhaWJpbmcgd3JvdGU6Cj4+Pj4+PiBJZiBDT01QSUxFX1RFU1Qg
aXMgeSBhbmQgSU9NTVVfU1VQUE9SVCBpcyBuLCBzZWxlY3RpbmcgVEVHUkFfVkRFCj4+Pj4+PiB0
byBtIHdpbGwgc2V0IElPTU1VX0lPVkEgdG8gbSwgdGhpcyBmYWlscyB0aGUgYnVpbGRpbmcgb2YK
Pj4+Pj4+IFRFR1JBX0hPU1QxWCBhbmQgRFJNX1RFR1JBIHdoaWNoIGlzIHkgbGlrZSB0aGlzOgo+
Pj4+Pj4KPj4+Pj4+IGRyaXZlcnMvZ3B1L2hvc3QxeC9jZG1hLm86IEluIGZ1bmN0aW9uIGBob3N0
MXhfY2RtYV9pbml0JzoKPj4+Pj4+IGNkbWEuYzooLnRleHQrMHg2NmMpOiB1bmRlZmluZWQgcmVm
ZXJlbmNlIHRvIGBhbGxvY19pb3ZhJwo+Pj4+Pj4gY2RtYS5jOigudGV4dCsweDY5OCk6IHVuZGVm
aW5lZCByZWZlcmVuY2UgdG8gYF9fZnJlZV9pb3ZhJwo+Pj4+Pj4KPj4+Pj4+IGRyaXZlcnMvZ3B1
L2RybS90ZWdyYS9kcm0ubzogSW4gZnVuY3Rpb24gYHRlZ3JhX2RybV91bmxvYWQnOgo+Pj4+Pj4g
ZHJtLmM6KC50ZXh0KzB4ZWIwKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgcHV0X2lvdmFfZG9t
YWluJwo+Pj4+Pj4gZHJtLmM6KC50ZXh0KzB4ZWI0KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBg
aW92YV9jYWNoZV9wdXQnCj4+Pj4+Pgo+Pj4+Pj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1
bGtjaUBodWF3ZWkuY29tPgo+Pj4+Pj4gRml4ZXM6IDZiMjI2NTk3NTIzOSAoIm1lZGlhOiBzdGFn
aW5nOiB0ZWdyYS12ZGU6IEZpeCBidWlsZCBlcnJvciIpCj4+Pj4+PiBGaXhlczogYjMwMWY4ZGUx
OTI1ICgibWVkaWE6IHN0YWdpbmc6IG1lZGlhOiB0ZWdyYS12ZGU6IEFkZCBJT01NVSBzdXBwb3J0
IikKPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNv
bT4KPj4+Pj4+IC0tLQo+Pj4+Pj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvS2Nv
bmZpZyB8IDQgKystLQo+Pj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4+Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS90ZWdyYS12ZGUvS2NvbmZpZyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUv
S2NvbmZpZwo+Pj4+Pj4gaW5kZXggYmE0OWVhNS4uYTQxZDMwYyAxMDA2NDQKPj4+Pj4+IC0tLSBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvS2NvbmZpZwo+Pj4+Pj4gKysrIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9LY29uZmlnCj4+Pj4+PiBAQCAtMSw5ICsxLDkg
QEAKPj4+Pj4+ICAjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4+Pj4+PiAgY29u
ZmlnIFRFR1JBX1ZERQo+Pj4+Pj4gIAl0cmlzdGF0ZSAiTlZJRElBIFRlZ3JhIFZpZGVvIERlY29k
ZXIgRW5naW5lIGRyaXZlciIKPj4+Pj4+IC0JZGVwZW5kcyBvbiBBUkNIX1RFR1JBIHx8IENPTVBJ
TEVfVEVTVAo+Pj4+Pj4gKwlkZXBlbmRzIG9uIEFSQ0hfVEVHUkEKPj4+Pj4KPj4+Pj4gV2hhdCBo
YXBwZW5zIGlmIHlvdSBkcm9wIHRoaXMgY2hhbmdlLAo+Pj4+Pgo+Pj4+Pj4gIAlzZWxlY3QgRE1B
X1NIQVJFRF9CVUZGRVIKPj4+Pj4+IC0Jc2VsZWN0IElPTU1VX0lPVkEgaWYgKElPTU1VX1NVUFBP
UlQgfHwgQ09NUElMRV9URVNUKQo+Pj4+Pj4gKwlzZWxlY3QgSU9NTVVfSU9WQSBpZiBJT01NVV9T
VVBQT1JUCj4+Pj4+Cj4+Pj4+IGJ1dCBrZWVwIHRoaXMgY2hhbmdlPwo+Pj4+Pgo+Pj4+PiBpb3Zh
LmggaGFzIHN0dWJzIHRoYXQgYXJlIHVzZWQgaWYgSU9NTVVfSU9WQSBpcyBub3Qgc2V0LCBzbyBp
dCBzaG91bGQKPj4+Pj4gd29yayB3aGVuIGNvbXBpbGUgdGVzdGluZyB0aGlzIHRlZ3JhLXZkZSBk
cml2ZXIuCj4+Pj4+Cj4+Pj4+IEhhdmVuJ3QgdHJpZWQgaXQsIGJ1dCBtYWtpbmcgc3VyZSB0aGF0
IGNvbXBpbGUgdGVzdGluZyBrZWVwIHdvcmtpbmcgaXMKPj4+Pj4gcmVhbGx5IGltcG9ydGFudC4K
Pj4+Cj4+PiBUaGUgZHJpdmVyJ3MgY29kZSBjb21waWxhdGlvbiB3b3JrcyBva2F5LCBpdCdzIHRo
ZSBsaW5rYWdlIHN0YWdlIHdoaWNoCj4+PiBmYWlscyBkdXJpbmcgY29tcGlsZS10ZXN0aW5nLgo+
Pj4KPj4+PiBZZWFoLCB0aGF0IHZhcmlhbnQgc2VlbXMgdG8gd29yayBmb3IgbWUuIEkgdGhpbmsg
aXQncyBhbHNvIG1vcmUgY29ycmVjdAo+Pj4+IGJlY2F1c2UgdGhlIElPTU1VX0lPVkEgaWYgSU9N
TVVfU1VQUE9SVCBkZXBlbmRlbmN5IHJlYWxseSBzYXlzIHRoYXQgdGhlCj4+Pj4gSU9WQSB1c2Fn
ZSBpcyBib3VuZCB0byBJT01NVSBzdXBwb3J0LiBJZiBJT01NVSBzdXBwb3J0IGlzIG5vdCBlbmFi
bGVkLAo+Pj4+IHRoZW4gSU9WQSBpcyBub3QgbmVlZGVkIGVpdGhlciwgc28gdGhlIGR1bW1pZXMg
d2lsbCBkbyBqdXN0IGZpbmUuCj4+Pgo+Pj4gQW0gSSB1bmRlcnN0YW5kaW5nIGNvcnJlY3RseSB0
aGF0IHlvdSdyZSBzdWdnZXN0aW5nIHRvIHJldmVydCBbMV1bMl0gYW5kCj4+PiBnZXQgYmFjayB0
byB0aGUgb3RoZXIgcHJvYmxlbT8KPj4+Cj4+PiBbMV0KPj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LW1lZGlhL2RkNTQ3YjQ0LTdhYmItMzcxZi1hZWVlLWE4MmI5NmY4MjRlMkBnbWFp
bC5jb20vVC8KPj4+IFsyXSBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzExMzY2
MTkvCj4+Pgo+Pj4gSWYgd2Ugd2FudCB0byBrZWVwIGNvbXBpbGUgdGVzdGluZywgSSBndWVzcyB0
aGUgb25seSByZWFzb25hYmxlIHZhcmlhbnQKPj4+IHJpZ2h0IG5vdyBpcyB0byBzZWxlY3QgSU9N
TVVfSU9WQSB1bmNvbmRpdGlvbmFsbHkgaW4gYWxsIG9mIHRoZSBkcml2ZXJzCj4+PiAodmRlLCBo
b3N0MXgsIGRybSBhbmQgZXRjKSBhbmQgdGhlbiBqdXN0IGlnbm9yZSB0aGF0IElPVkEgd2lsbCBi
ZQo+Pj4gY29tcGlsZWQtYW5kLXVudXNlZCBpZiBJT01NVV9TVVBQT1JUPW4gKG5vdGUgdGhhdCBJ
T01NVV9TVVBQT1JUPXkgaW4gYWxsCj4+PiBvZiBkZWZhdWx0IGtlcm5lbCBjb25maWd1cmF0aW9u
cykuCj4+Cj4+IEFncmVlZC4gSSB0aGluayB3ZSBzaG91bGQganVzdCBzZWxlY3QgSU9NTVVfSU9W
QSB1bmNvbmRpdGlvbmFsbHkuIFdlCj4+IHJlYWxseSBkbyB3YW50IElPTU1VX1NVUFBPUlQgYWx3
YXlzIGFzIHdlbGwsIGJ1dCBpdCBtaWdodCBiZSBuaWNlIHRvIGJlCj4+IGFibGUgdG8gc3dpdGNo
IGl0IG9mZiBmb3IgdGVzdGluZyBvciBzby4gSW4gdGhlIGNhc2VzIHRoYXQgcmVhbGx5IG1hdHRl
cgo+PiB3ZSB3aWxsIGJlIGVuYWJsaW5nIGJvdGggSU9NTVVfU1VQUE9SVCBhbmQgSU9NTVVfSU9W
QSBhbnl3YXksIHNvIG1pZ2h0Cj4+IGFzIHdlbGwgc2VsZWN0IElPTU1VX0lPVkEgYWx3YXlzLiBJ
dCdzIG5vdCB0ZXJyaWJseSBiaWcgYW5kIEkgY2FuJ3QKPj4gaW1hZ2luZSBhbnlvbmUgd2FudGlu
ZyB0byBydW4gYSBrZXJuZWwgd2l0aG91dCBJT01NVV9TVVBQT1JUIGZvcgo+PiBhbnl0aGluZyBv
dGhlciB0aGFuIHRlc3RpbmcuCj4gCj4gSGVsbG8gWXVlLAo+IAo+IENvdWxkIHlvdSBwbGVhc2Ug
bWFrZSBhbiB1cGRhdGVkIHZlcnNpb24gb2YgdGhlIGZpeCBpbiBhY2NvcmRhbmNlIHRvIHRoZSBh
Ym92ZSBjb21tZW50cz8KPiAKPiBBbHRlcm5hdGl2ZWx5LCB3ZSBjYW4gZ28gd2l0aCB0aGUgY3Vy
cmVudCBwYXRjaCBhbmQgdGVtcG9yYXJpbHkgcmVtb3ZlIHRoZSBjb21waWxlLXRlc3RpbmcuIEkn
bGwgbWFrZQo+IHBhdGNoZXMgdG8gcHJvcGVybHkgcmUtYWRkIGNvbXBpbGUtdGVzdGluZyBzb21l
dGltZSBsYXRlciB0aGVuLgoKSSBwcmVmZXIgdG8gZG8gdGhpcyBjaG9pY2UsIHRoYW5rcy4KCj4g
Cj4gLgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
