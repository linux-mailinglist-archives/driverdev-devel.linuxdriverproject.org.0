Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFF8139F33
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 02:53:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8611187874;
	Tue, 14 Jan 2020 01:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id spj8ZSpXPbmL; Tue, 14 Jan 2020 01:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7B928782A;
	Tue, 14 Jan 2020 01:53:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B511B1BF329
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 01:53:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A65B5838F6
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 01:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PrWRseqaTA+g for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 01:53:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6722A8377F
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 01:53:16 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 84756C953A2E322BA0AF;
 Tue, 14 Jan 2020 09:53:12 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.145) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 14 Jan 2020 09:53:11 +0800
Subject: Re: [PATCH] media: staging: rkisp1: Fix undefined reference to
 `phy_mipi_dphy_get_default_config' in rkisp1_mipi_csi2_start
To: Helen Koike <helen.koike@collabora.com>, <mchehab@kernel.org>,
 <gregkh@linuxfoundation.org>
References: <20200113034804.24732-1-zhangxiaoxu5@huawei.com>
 <af2cccbf-56e4-2963-cd38-36fa13f3c571@collabora.com>
From: "zhangxiaoxu (A)" <zhangxiaoxu5@huawei.com>
Message-ID: <9013da2d-f50f-112b-77a1-92123ae25fcd@huawei.com>
Date: Tue, 14 Jan 2020 09:53:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <af2cccbf-56e4-2963-cd38-36fa13f3c571@collabora.com>
X-Originating-IP: [10.173.220.145]
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgrlnKggMjAyMC8xLzE0IDE6MzQsIEhlbGVuIEtvaWtlIOWGmemBkzoKPiBIaSBaaGFuZywKPiAK
PiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPiAKPiBPbiAxLzEzLzIwIDE6NDggQU0sIFpoYW5n
IFhpYW94dSB3cm90ZToKPj4gSWYgJ0dFTkVSSUNfUEhZX01JUElfRFBIWScgbm90IGNvbmZpZ3Vy
ZWQsIHRoZXJlIGlzIGFuIGVycm9yOgo+Pgo+PiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3Ax
L3JraXNwMS1pc3AubzoKPj4gCUluIGZ1bmN0aW9uIGBya2lzcDFfbWlwaV9jc2kyX3N0YXJ0Lmlz
cmEuNSc6Cj4+IHJraXNwMS1pc3AuYzooLnRleHQrMHgxMjM4KToKPj4gCXVuZGVmaW5lZCByZWZl
cmVuY2UgdG8gYHBoeV9taXBpX2RwaHlfZ2V0X2RlZmF1bHRfY29uZmlnJwo+PiBtYWtlOiAqKiog
W3ZtbGludXhdIEVycm9yIDEKPj4KPj4gU2lnbmVkLW9mZi1ieTogWmhhbmcgWGlhb3h1IDx6aGFu
Z3hpYW94dTVAaHVhd2VpLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
aXNwMS9LY29uZmlnIHwgMSArCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL0tjb25maWcgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL0tjb25maWcKPj4gaW5kZXggYjg1OWE0OTNjYWJh
Li43ODhiY2I3MDMzNzYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lz
cDEvS2NvbmZpZwo+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL0tjb25maWcK
Pj4gQEAgLTgsNiArOCw3IEBAIGNvbmZpZyBWSURFT19ST0NLQ0hJUF9JU1AxCj4+ICAgCXNlbGVj
dCBWSURFT0JVRjJfVk1BTExPQwo+PiAgIAlzZWxlY3QgVjRMMl9GV05PREUKPj4gICAJc2VsZWN0
IFBIWV9ST0NLQ0hJUF9EUEhZX1JYMAo+PiArCXNlbGVjdCBHRU5FUklDX1BIWV9NSVBJX0RQSFkK
Pj4gICAJZGVmYXVsdCBuCj4+ICAgCWhlbHAKPj4gICAJICBFbmFibGUgdGhpcyB0byBzdXBwb3J0
IHRoZSBJbWFnZSBTaWduYWwgUHJvY2Vzc2luZyAoSVNQKSBtb2R1bGUKPj4KPiAKPiBIb3cgYXJl
IHlvdSByZXByb2R1Y2luZyB0aGlzPwo+IAo+IFZJREVPX1JPQ0tDSElQX0lTUDEgc2VsZWN0cyBQ
SFlfUk9DS0NISVBfRFBIWV9SWDAKPiAKPiBhbmQKPiAKPiBQSFlfUk9DS0NISVBfRFBIWV9SWDAg
YWxyZWFkeSBzZWxlY3RzIEdFTkVSSUNfUEhZX01JUElfRFBIWSwKPiAKPiBTbyBpdCBzaG91bGRu
J3QgYmUgYSBwcm9ibGVtICh1bmxlc3MgSSBtaXN1bmRlcnN0b29kIHNvbWV0aGluZywgd2hpY2gg
aXMgcHJvYmFibHkgdGhlIGNhc2UpLgpZZXMsIHlvdSBhcmUgcmlnaHQuCgpUaGlzIGNhbiBiZSBy
ZXByb2R1Y2Ugd2l0aCB0aGUgZm9sbG93aW5nIGNvbmZpZzoKIyBDT05GSUdfT0YgaXMgbm90IHNl
dAojCiMgc29jX2NhbWVyYSBzZW5zb3IgZHJpdmVycwojCkNPTkZJR19QSFlfUk9DS0NISVBfRFBI
WV9SWDA9eQpDT05GSUdfVklERU9fUk9DS0NISVBfSVNQMT15CgpJIHRoaW5rIHRoZSBjYXVzZSBv
ZiB0aGUgcHJvYmxlbSBpczoKJ0NPTkZJR19QSFlfUk9DS0NISVBfRFBIWV9SWDAnIHNob3VsZCBh
bHNvIGJlIGRlcGVuZGVkIG9uICdDT05GSUdfT0YnLgoKPiAKPiBUaGFua3MKPiBIZWxlbgo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
