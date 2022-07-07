Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 859E456A9AF
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Jul 2022 19:32:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 909C56126D;
	Thu,  7 Jul 2022 17:32:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 909C56126D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3iMwnyCzUxfz; Thu,  7 Jul 2022 17:32:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A7A461257;
	Thu,  7 Jul 2022 17:32:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A7A461257
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B27C81BF33C
 for <devel@linuxdriverproject.org>; Thu,  7 Jul 2022 17:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89F6F6126D
 for <devel@linuxdriverproject.org>; Thu,  7 Jul 2022 17:32:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89F6F6126D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nj_WHDscLk5Y for <devel@linuxdriverproject.org>;
 Thu,  7 Jul 2022 17:32:47 +0000 (UTC)
X-Greylist: delayed 00:21:47 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81CB161257
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81CB161257
 for <devel@driverdev.osuosl.org>; Thu,  7 Jul 2022 17:32:47 +0000 (UTC)
Received: from relay11.mail.gandi.net (unknown [217.70.178.231])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id 95FC2C6A90
 for <devel@driverdev.osuosl.org>; Thu,  7 Jul 2022 17:04:09 +0000 (UTC)
Received: (Authenticated sender: ben@demerara.io)
 by mail.gandi.net (Postfix) with ESMTPSA id 5E422100005;
 Thu,  7 Jul 2022 17:04:01 +0000 (UTC)
Message-ID: <cb49da01-584a-bb71-eecb-c54e40bce062@demerara.io>
Date: Thu, 7 Jul 2022 18:04:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:103.0) Gecko/20100101
 Thunderbird/103.0a1
Subject: Re: [PATCH 2/3] wfx: add antenna configuration files
Content-Language: en-US
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>,
 linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 linux-firmware@kernel.org
References: <20220221163754.150011-1-Jerome.Pouiller@silabs.com>
 <20220221163754.150011-3-Jerome.Pouiller@silabs.com>
From: Ben Brown <ben@demerara.io>
In-Reply-To: <20220221163754.150011-3-Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 jerome.pouiller@gmail.com, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjEvMDIvMjAyMiAxNjozNywgSmVyb21lIFBvdWlsbGVyIHdyb3RlOgo+IEZyb206IErDqXLD
tG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KPHNuaXA+Cj4gZGlmZiAt
LWdpdCBhL1dIRU5DRSBiL1dIRU5DRQo+IGluZGV4IDBhNmNiMTUuLjk2ZjY3ZjcgMTAwNjQ0Cj4g
LS0tIGEvV0hFTkNFCj4gKysrIGIvV0hFTkNFCj4gQEAgLTU4NDUsOCArNTg0NSwxOCBAQCBEcml2
ZXI6IHdmeCAtIFNpbGljb24gTGFicyBXaS1GaSBUcmFuc2NlaXZlcgo+ICBGaWxlOiB3Zngvd2Zt
X3dmMjAwX0MwLnNlYwo+ICBWZXJzaW9uOiAzLjEyLjEKPiAgCj4gK0ZpbGU6IHdmeC9icmQ0MDAx
YS5wZHMgbm90IGxpc3RlZCBpbiBXSEVOQ0UKPiArRmlsZTogd2Z4L2JyZDgwMjJhLnBkcyBub3Qg
bGlzdGVkIGluIFdIRU5DRQo+ICtGaWxlOiB3ZngvYnJkODAyM2EucGRzIG5vdCBsaXN0ZWQgaW4g
V0hFTkNFCgpUaGlzIGZvcm1hdCBkb2VzIG5vdCBhcHBlYXIgdG8gYmUgY29ycmVjdC4gV2hpbGUg
dGhpcyB3aWxsIHNlZW1pbmdseQpwYXNzIHRoZSBgY2hlY2tfd2hlbmNlLnB5YCBjaGVjaywgaXQg
d2lsbCBiZSBjb21wbGV0ZWx5IGlnbm9yZWQgYnkKYGNvcHktZmlybXdhcmUuc2hgLCBhcyB0aGF0
IHRha2VzIHRoZSBmdWxsIGxpbmUgYWZ0ZXIgJ0ZpbGU6ICcgKGUuZy4KJ3dmeC9icmQ0MDAxYS5w
ZHMgbm90IGxpc3RlZCBpbiBXSEVOQ0UnLCB3aGljaCBvZiBjb3Vyc2UgZG9lcyBub3QgZXhpc3Qp
LgoKSSdtIGFzc3VtaW5nIHRoZSB0cmFpbGluZyAnIG5vdCBsaXN0ZWQgaW4gV0hFTkNFJyBuZWVk
cyB0byBiZSByZW1vdmVkCmZyb20gZWFjaCBvZiB0aGVzZSBsaW5lcy4gT3RoZXJ3aXNlIHRoZXNl
IGFyZSBsaWtlbHkgbm90IGJlaW5nIHBpY2tlZCB1cApieSBkaXN0cm9zICh0aGV5IGFyZSBtaXNz
aW5nIGZyb20gQXJjaCwgZm9yIGV4YW1wbGUpLiBUaGlzIG1heSBoYXZlIGJlZW4KdGhlIGludGVu
dGlvbiwgYnV0IHRoYXQgc2VlbXMgb2RkIChhbmQgdW5jbGVhciBpZiBzbykuCgoKUmVnYXJkcywK
QmVuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
