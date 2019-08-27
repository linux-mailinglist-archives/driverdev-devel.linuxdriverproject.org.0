Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 635869E3DC
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 11:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 34698226E5;
	Tue, 27 Aug 2019 09:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z93kfGWbw0Tq; Tue, 27 Aug 2019 09:21:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0A96022219;
	Tue, 27 Aug 2019 09:21:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C59D61BF2B9
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 09:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C0CA721FF8
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 09:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8UbAozn4brP7 for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 09:21:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by silver.osuosl.org (Postfix) with ESMTPS id 7C7D120500
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 09:21:27 +0000 (UTC)
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id B83BB7482842402892CA;
 Tue, 27 Aug 2019 17:21:23 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 27 Aug 2019 17:21:21 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Tue, 27 Aug 2019 17:21:20 +0800
Date: Tue, 27 Aug 2019 17:20:36 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/9] staging: greybus: fix up SPDX comment in .h files
Message-ID: <20190827092036.GA138083@architecture4>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-2-gregkh@linuxfoundation.org>
 <20190826055119.4pbmf5ape224giwz@vireshk-i7>
 <20190827075802.GA29204@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827075802.GA29204@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme715-chm.china.huawei.com (10.1.199.111) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, yuchao0@huawei.com, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Viresh Kumar <vireshk@kernel.org>
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgR3JlZywKCk9uIFR1ZSwgQXVnIDI3LCAyMDE5IGF0IDA5OjU4OjAyQU0gKzAyMDAsIEdyZWcg
S3JvYWgtSGFydG1hbiB3cm90ZToKPiBPbiBNb24sIEF1ZyAyNiwgMjAxOSBhdCAxMToyMToxOUFN
ICswNTMwLCBWaXJlc2ggS3VtYXIgd3JvdGU6Cj4gPiBPbiAyNS0wOC0xOSwgMDc6NTQsIEdyZWcg
S3JvYWgtSGFydG1hbiB3cm90ZToKPiA+ID4gV2hlbiB0aGVzZSBmaWxlcyBvcmlnaW5hbGx5IGdv
dCBhbiBTUERYIHRhZywgSSB1c2VkIC8vIGluc3RlYWQgb2YgLyogKi8KPiA+ID4gZm9yIHRoZSAu
aCBmaWxlcy4gIEZpeCB0aGlzIHVwIHRvIHVzZSAvLyBwcm9wZXJseS4KPiA+ID4gCj4gPiA+IENj
OiBWaXJlc2ggS3VtYXIgPHZpcmVzaGtAa2VybmVsLm9yZz4KPiA+ID4gQ2M6IEpvaGFuIEhvdm9s
ZCA8am9oYW5Aa2VybmVsLm9yZz4KPiA+ID4gQ2M6IEFsZXggRWxkZXIgPGVsZGVyQGtlcm5lbC5v
cmc+Cj4gPiA+IENjOiBncmV5YnVzLWRldkBsaXN0cy5saW5hcm8ub3JnCj4gPiA+IENjOiBkZXZl
bEBkcml2ZXJkZXYub3N1b3NsLm9yZwo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhh
cnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZl
cnMvc3RhZ2luZy9ncmV5YnVzL2Zpcm13YXJlLmggICAgICAgICAgICAgICB8IDIgKy0KPiA+ID4g
IGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2diLWNhbWVyYS5oICAgICAgICAgICAgICB8IDIgKy0K
PiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2dicGh5LmggICAgICAgICAgICAgICAgICB8
IDIgKy0KPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2dyZXlidXMuaCAgICAgICAgICAg
ICAgICB8IDIgKy0KPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2dyZXlidXNfYXV0aGVu
dGljYXRpb24uaCB8IDIgKy0KPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2dyZXlidXNf
ZmlybXdhcmUuaCAgICAgICB8IDIgKy0KPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2dy
ZXlidXNfbWFuaWZlc3QuaCAgICAgICB8IDIgKy0KPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5
YnVzL2dyZXlidXNfcHJvdG9jb2xzLmggICAgICB8IDIgKy0KPiA+ID4gIGRyaXZlcnMvc3RhZ2lu
Zy9ncmV5YnVzL2dyZXlidXNfdHJhY2UuaCAgICAgICAgICB8IDIgKy0KPiA+ID4gIGRyaXZlcnMv
c3RhZ2luZy9ncmV5YnVzL2hkLmggICAgICAgICAgICAgICAgICAgICB8IDIgKy0KPiA+ID4gIGRy
aXZlcnMvc3RhZ2luZy9ncmV5YnVzL2ludGVyZmFjZS5oICAgICAgICAgICAgICB8IDIgKy0KPiA+
ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL21hbmlmZXN0LmggICAgICAgICAgICAgICB8IDIg
Ky0KPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL21vZHVsZS5oICAgICAgICAgICAgICAg
ICB8IDIgKy0KPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL29wZXJhdGlvbi5oICAgICAg
ICAgICAgICB8IDIgKy0KPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL3NwaWxpYi5oICAg
ICAgICAgICAgICAgICB8IDIgKy0KPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL3N2Yy5o
ICAgICAgICAgICAgICAgICAgICB8IDIgKy0KPiA+ID4gIDE2IGZpbGVzIGNoYW5nZWQsIDE2IGlu
c2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBBY2tlZC1ieTogVmlyZXNoIEt1
bWFyIDx2aXJlc2gua3VtYXJAbGluYXJvLm9yZz4KPiAKPiBUaGFua3MgZm9yIGFsbCBvZiB0aGUg
YWNrcyEKPiAKPiBncmVnIGstaAoKSSBmb3VuZCBzaW1pbGFyIGlzc3VlcyBvZiBncmF5YnVzIHdo
ZW4gSSB0ZXN0ZWQgdGhlIGxhdGVzdCBzdGFnaW5nLXRlc3RpbmcKCkluIGZpbGUgaW5jbHVkZWQg
ZnJvbSA8Y29tbWFuZC1saW5lPjowOjA6Ci4vaW5jbHVkZS9saW51eC9ncmV5YnVzL2dyZXlidXNf
cHJvdG9jb2xzLmg6NDU6MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIKGuX19sZTE2oa8KICBf
X2xlMTYgc2l6ZTsgIC8qIFNpemUgaW4gYnl0ZXMgb2YgaGVhZGVyICsgcGF5bG9hZCAqLwogIF5+
fn5+fgouL2luY2x1ZGUvbGludXgvZ3JleWJ1cy9ncmV5YnVzX3Byb3RvY29scy5oOjQ2OjI6IGVy
cm9yOiB1bmtub3duIHR5cGUgbmFtZSChrl9fbGUxNqGvCiAgX19sZTE2IG9wZXJhdGlvbl9pZDsg
LyogT3BlcmF0aW9uIHVuaXF1ZSBpZCAqLwogIF5+fn5+fgouL2luY2x1ZGUvbGludXgvZ3JleWJ1
cy9ncmV5YnVzX3Byb3RvY29scy5oOjQ3OjI6IGVycm9yOiB1bmtub3duIHR5cGUgbmFtZSChrl9f
dTihrwogIF9fdTggdHlwZTsgIC8qIEUuZyBHQl9JMkNfVFlQRV8qIG9yIEdCX0dQSU9fVFlQRV8q
ICovCiAgXn5+fgouL2luY2x1ZGUvbGludXgvZ3JleWJ1cy9ncmV5YnVzX3Byb3RvY29scy5oOjQ4
OjI6IGVycm9yOiB1bmtub3duIHR5cGUgbmFtZSChrl9fdTihrwogIF9fdTggcmVzdWx0OyAgLyog
UmVzdWx0IG9mIHJlcXVlc3QgKGluIHJlc3BvbnNlcyBvbmx5KSAqLwogIF5+fn4KLi9pbmNsdWRl
L2xpbnV4L2dyZXlidXMvZ3JleWJ1c19wcm90b2NvbHMuaDo0OToyOiBlcnJvcjogdW5rbm93biB0
eXBlIG5hbWUgoa5fX3U4oa8KICBfX3U4IHBhZFsyXTsgIC8qIG11c3QgYmUgemVybyAoaWdub3Jl
IHdoZW4gcmVhZCkgKi8KICBefn5+Ci4vaW5jbHVkZS9saW51eC9ncmV5YnVzL2dyZXlidXNfcHJv
dG9jb2xzLmg6NTg6MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIKGuX191OKGvCiAgX191OCBw
aGFzZTsKICBefn5+Ci4vaW5jbHVkZS9saW51eC9ncmV5YnVzL2dyZXlidXNfcHJvdG9jb2xzLmg6
ODg6MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIKGuX191OKGvCiAgX191OCBtYWpvcjsKICBe
fn5+Ci4vaW5jbHVkZS9saW51eC9ncmV5YnVzL2dyZXlidXNfcHJvdG9jb2xzLmg6ODk6MjogZXJy
b3I6IHVua25vd24gdHlwZSBuYW1lIKGuX191OKGvCiAgX191OCBtaW5vcjsKICBefn5+Ci4vaW5j
bHVkZS9saW51eC9ncmV5YnVzL2dyZXlidXNfcHJvdG9jb2xzLmg6OTM6MjogZXJyb3I6IHVua25v
d24gdHlwZSBuYW1lIKGuX191OKGvCiAgX191OCBtYWpvcjsKICBefn5+Ci4vaW5jbHVkZS9saW51
eC9ncmV5YnVzL2dyZXlidXNfcHJvdG9jb2xzLmg6OTQ6MjogZXJyb3I6IHVua25vd24gdHlwZSBu
YW1lIKGuX191OKGvCiAgX191OCBtaW5vcjsKICBefn5+Ci4vaW5jbHVkZS9saW51eC9ncmV5YnVz
L2dyZXlidXNfcHJvdG9jb2xzLmg6OTg6MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIKGuX191
OKGvCiAgX191OCBidW5kbGVfaWQ7CiAgXn5+fgouL2luY2x1ZGUvbGludXgvZ3JleWJ1cy9ncmV5
YnVzX3Byb3RvY29scy5oOjEwMjoyOiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUgoa5fX3U4oa8K
ICBfX3U4IG1ham9yOwogIF5+fn4KLi9pbmNsdWRlL2xpbnV4L2dyZXlidXMvZ3JleWJ1c19wcm90
b2NvbHMuaDoxMDM6MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIKGuX191OKGvCiAgX191OCBt
aW5vcjsKICBefn5+Ci4vaW5jbHVkZS9saW51eC9ncmV5YnVzL2dyZXlidXNfcHJvdG9jb2xzLmg6
MTA4OjI6IGVycm9yOiB1bmtub3duIHR5cGUgbmFtZSChrl9fbGUxNqGvCiAgX19sZTE2ICAgc2l6
ZTsKICBefn5+fn4KLi9pbmNsdWRlL2xpbnV4L2dyZXlidXMvZ3JleWJ1c19wcm90b2NvbHMuaDox
MTM6MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIKGuX191OKGvCiAgX191OCAgIGRhdGFbMF07
CiAgXn5+fgouL2luY2x1ZGUvbGludXgvZ3JleWJ1cy9ncmV5YnVzX3Byb3RvY29scy5oOjExODoy
OiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUgoa5fX2xlMTahrwogIF9fbGUxNiAgIGNwb3J0X2lk
OwogIF5+fn5+fgouL2luY2x1ZGUvbGludXgvZ3JleWJ1cy9ncmV5YnVzX3Byb3RvY29scy5oOjEy
MjoyOiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUgoa5fX2xlMTahrwogIF9fbGUxNiAgIGNwb3J0
X2lkOwoKLi4gYW5kIG90aGVyIGZpbGVzLi4uCgpOb3QgdmVyeSBzdXJlLi4uIGJ1dCBpdCBzZWVt
cyBpdCBjYW4gYmUgb2JzZXJ2ZWQgd2l0aCBhbGxtb2Rjb25maWcgb3IKQ09ORklHX0tFUk5FTF9I
RUFERVJfVEVTVD15IGFuZCBmYWlsIG15IGNvbXBpbGF0aW9uLi4uCkhvcGUgdGhhdCBvZiBzb21l
IGhlbHAgKGtpbmQgcmVtaW5kZXIuLi4pCgpUaGFua3MsCkdhbyBYaWFuZwoKCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkZXZlbCBtYWlsaW5nIGxp
c3QKPiBkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCj4gaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
