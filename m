Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBD72EFF75
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Jan 2021 13:35:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FE0F86DFC;
	Sat,  9 Jan 2021 12:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OxG8Twtf7AUO; Sat,  9 Jan 2021 12:35:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 54927868E2;
	Sat,  9 Jan 2021 12:35:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DE461BF2F5
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 12:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5A9AF8728C
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 12:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ly7KZlr+k3a5 for <devel@linuxdriverproject.org>;
 Sat,  9 Jan 2021 12:35:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 536878724E
 for <devel@driverdev.osuosl.org>; Sat,  9 Jan 2021 12:35:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 673821F447AC
Message-ID: <7647e289689d186d048afd0d18f91c919e38d8fc.camel@collabora.com>
Subject: Re: [PATCH v2 -next] media: rkvdec: convert comma to semicolon
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Zheng Yongjun <zhengyongjun3@huawei.com>, mchehab@kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Sat, 09 Jan 2021 09:35:16 -0300
In-Reply-To: <20210108092244.18845-1-zhengyongjun3@huawei.com>
References: <20210108092244.18845-1-zhengyongjun3@huawei.com>
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
Cc: gregkh@linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCAyMDIxLTAxLTA4IGF0IDE3OjIyICswODAwLCBaaGVuZyBZb25nanVuIHdyb3RlOgo+
IFJlcGxhY2UgYSBjb21tYSBiZXR3ZWVuIGV4cHJlc3Npb24gc3RhdGVtZW50cyBieSBhIHNlbWlj
b2xvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBZb25nanVuIDx6aGVuZ3lvbmdqdW4zQGh1
YXdlaS5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5j
IHwgMiArLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMg
Yi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gaW5kZXggZDI1YzRhMzdl
MmFmLi42NjU3MjA2NmU3YTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
dmRlYy9ya3ZkZWMuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVj
LmMKPiBAQCAtMTMwLDcgKzEzMCw3IEBAIHN0YXRpYyB2b2lkIHJrdmRlY19yZXNldF9mbXQoc3Ry
dWN0IHJrdmRlY19jdHggKmN0eCwgc3RydWN0IHY0bDJfZm9ybWF0ICpmLAo+IMKgwqDCoMKgwqDC
oMKgwqBtZW1zZXQoZiwgMCwgc2l6ZW9mKCpmKSk7Cj4gwqDCoMKgwqDCoMKgwqDCoGYtPmZtdC5w
aXhfbXAucGl4ZWxmb3JtYXQgPSBmb3VyY2M7Cj4gwqDCoMKgwqDCoMKgwqDCoGYtPmZtdC5waXhf
bXAuZmllbGQgPSBWNEwyX0ZJRUxEX05PTkU7Cj4gLcKgwqDCoMKgwqDCoMKgZi0+Zm10LnBpeF9t
cC5jb2xvcnNwYWNlID0gVjRMMl9DT0xPUlNQQUNFX1JFQzcwOSwKPiArwqDCoMKgwqDCoMKgwqBm
LT5mbXQucGl4X21wLmNvbG9yc3BhY2UgPSBWNEwyX0NPTE9SU1BBQ0VfUkVDNzA5Owo+IMKgwqDC
oMKgwqDCoMKgwqBmLT5mbXQucGl4X21wLnljYmNyX2VuYyA9IFY0TDJfWUNCQ1JfRU5DX0RFRkFV
TFQ7Cj4gwqDCoMKgwqDCoMKgwqDCoGYtPmZtdC5waXhfbXAucXVhbnRpemF0aW9uID0gVjRMMl9R
VUFOVElaQVRJT05fREVGQVVMVDsKPiDCoMKgwqDCoMKgwqDCoMKgZi0+Zm10LnBpeF9tcC54ZmVy
X2Z1bmMgPSBWNEwyX1hGRVJfRlVOQ19ERUZBVUxUOwoKU2VlbXMgYSBmaXggd2FzIHNlbnQgYWxy
ZWFkeSBmb3IgdGhpczoKCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51
eC1yb2NrY2hpcC9wYXRjaC8yMDIwMTIwNDIzMzc0My5HQTg1MzBAbGludXhtaW50LW1pZHRvd2Vy
LXBjLwoKVGhhbmtzLApFemVxdWllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
