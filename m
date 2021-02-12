Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB5131A364
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 18:17:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4BBC686E7F;
	Fri, 12 Feb 2021 17:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F51roSkOg1sn; Fri, 12 Feb 2021 17:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AC2886E00;
	Fri, 12 Feb 2021 17:17:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 262581BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 17:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13D598750F
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 17:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6MEQFia6kmfu for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 17:17:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o53.zoho.com (sender4-of-o53.zoho.com
 [136.143.188.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 03E41874F7
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 17:17:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1613150235; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=dhppv5YRKrOiIY9ShjAPv0FL6PtAawegCZUNQ+9w1ed81nzIeF4B+WNw6FHtApDV3V62TXq0PGmtQGI3rYSuxSilRMSzdULSh7K2m+iEM0Bdl8fcNPUt0V4xuom/Cw4a5T2Z/QO27xTIkerxoSfjX43cGy0pkBoOKLLwg9zUE8E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1613150235;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=U4ErNhDeAwMqPKmHkfMnsR+tSrT1hZl5AXxcsRpJu8I=; 
 b=dZBX19dAcfzOwJFwNksZYc9uayX8wjh9fMUiRMa9QsXcUD4Q+rhs/b8ol7/W5Pt/HvFpzBfCAySWH+Uun12xQwobyzjgID2xrYV1TZ5tiWBAEEi19EokwiUwGQabTDWMiguOt+BhEYTNmt+Lm2B0KsCS9MGdjFUr71ImkwDv/og=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=anirudhrb.com;
 spf=pass  smtp.mailfrom=mail@anirudhrb.com;
 dmarc=pass header.from=<mail@anirudhrb.com> header.from=<mail@anirudhrb.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1613150235; 
 s=zoho; d=anirudhrb.com; i=mail@anirudhrb.com;
 h=Date:From:To:Cc:Message-ID:Subject:References:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To;
 bh=U4ErNhDeAwMqPKmHkfMnsR+tSrT1hZl5AXxcsRpJu8I=;
 b=OnSHuoo0b4jcpl/TCTjidFq8VU+g2saU3BhaUDVRVsTOq2+cJd7YCg3k9VH1byAG
 MNbbHpbn3B2BKpm/uxkyAdYrOaKulNeGoz95XqrzoSOTZ5iAOGbP4SdzgHVorJwbxSi
 vYmNZLlx0oFI/FQ2PrGvEegHMluKy3uCJsAR3CiA=
Received: from anirudhrb.com (106.51.104.65 [106.51.104.65]) by mx.zohomail.com
 with SMTPS id 1613150230624196.03993421440634;
 Fri, 12 Feb 2021 09:17:10 -0800 (PST)
Date: Fri, 12 Feb 2021 22:47:04 +0530
From: Anirudh Rayabharam <mail@anirudhrb.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <YCa4EBQHw02BeQ4B@anirudhrb.com>
Subject: Re: [PATCH] staging: wimax/i2400m: fix some byte order issues found
 by sparse
References: <20210211202908.4604-1-mail@anirudhrb.com>
 <YCWVD34rU5Lu71/S@kroah.com> <YCaRAYjiz0TJH+4L@anirudhrb.com>
 <YCaT/qLci4ap1grf@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCaT/qLci4ap1grf@kroah.com>
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 kuba@kernel.org, colin.king@canonical.com, johannes@sipsolutions.net,
 lee.jones@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCBGZWIgMTIsIDIwMjEgYXQgMDM6NDM6MTBQTSArMDEwMCwgR3JlZyBLSCB3cm90ZToK
PiBPbiBGcmksIEZlYiAxMiwgMjAyMSBhdCAwODowMDoyNVBNICswNTMwLCBBbmlydWRoIFJheWFi
aGFyYW0gd3JvdGU6Cj4gPiBPbiBUaHUsIEZlYiAxMSwgMjAyMSBhdCAwOTozNToyN1BNICswMTAw
LCBHcmVnIEtIIHdyb3RlOgo+ID4gPiBPbiBGcmksIEZlYiAxMiwgMjAyMSBhdCAwMTo1OTowOEFN
ICswNTMwLCBBbmlydWRoIFJheWFiaGFyYW0gd3JvdGU6Cj4gPiA+ID4gRml4IHNwYXJzZSBieXRl
LW9yZGVyIHdhcm5pbmdzIGluIHRoZSBpMjQwMG1fYm1fY21kX3ByZXBhcmUoKQo+ID4gPiA+IGZ1
bmN0aW9uOgo+ID4gPiA+IAo+ID4gPiA+IHdpbWF4L2kyNDAwbS9mdy5jOjE5NDozNjogd2Fybmlu
ZzogcmVzdHJpY3RlZCBfX2xlMzIgZGVncmFkZXMgdG8gaW50ZWdlcgo+ID4gPiA+IHdpbWF4L2ky
NDAwbS9mdy5jOjE5NTozNDogd2FybmluZzogaW52YWxpZCBhc3NpZ25tZW50OiArPQo+ID4gPiA+
IHdpbWF4L2kyNDAwbS9mdy5jOjE5NTozNDogICAgbGVmdCBzaWRlIGhhcyB0eXBlIHVuc2lnbmVk
IGludAo+ID4gPiA+IHdpbWF4L2kyNDAwbS9mdy5jOjE5NTozNDogICAgcmlnaHQgc2lkZSBoYXMg
dHlwZSByZXN0cmljdGVkIF9fbGUzMgo+ID4gPiA+IHdpbWF4L2kyNDAwbS9mdy5jOjE5NjozMjog
d2FybmluZzogcmVzdHJpY3RlZCBfX2xlMzIgZGVncmFkZXMgdG8gaW50ZWdlcgo+ID4gPiA+IHdp
bWF4L2kyNDAwbS9mdy5jOjE5Njo0Nzogd2FybmluZzogcmVzdHJpY3RlZCBfX2xlMzIgZGVncmFk
ZXMgdG8gaW50ZWdlcgo+ID4gPiA+IHdpbWF4L2kyNDAwbS9mdy5jOjE5Njo2Njogd2FybmluZzog
cmVzdHJpY3RlZCBfX2xlMzIgZGVncmFkZXMgdG8gaW50ZWdlcgo+ID4gPiA+IAo+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IEFuaXJ1ZGggUmF5YWJoYXJhbSA8bWFpbEBhbmlydWRocmIuY29tPgo+ID4g
PiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvd2ltYXgvaTI0MDBtL2Z3LmMgfCAxNCAr
KysrKysrKystLS0tLQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvd2ltYXgvaTI0MDBtL2Z3LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2ltYXgvaTI0MDBtL2Z3LmMK
PiA+ID4gPiBpbmRleCBiMmZkNGJkMmM1ZjkuLmJjZTY1MWE2YjU0MyAxMDA2NDQKPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL3N0YWdpbmcvd2ltYXgvaTI0MDBtL2Z3LmMKPiA+ID4gPiArKysgYi9kcml2
ZXJzL3N0YWdpbmcvd2ltYXgvaTI0MDBtL2Z3LmMKPiA+ID4gPiBAQCAtMTg5LDEyICsxODksMTYg
QEAgdm9pZCBpMjQwMG1fYm1fY21kX3ByZXBhcmUoc3RydWN0IGkyNDAwbV9ib290cm9tX2hlYWRl
ciAqY21kKQo+ID4gPiA+ICB7Cj4gPiA+ID4gIAlpZiAoaTI0MDBtX2JyaF9nZXRfdXNlX2NoZWNr
c3VtKGNtZCkpIHsKPiA+ID4gPiAgCQlpbnQgaTsKPiA+ID4gPiAtCQl1MzIgY2hlY2tzdW0gPSAw
Owo+ID4gPiA+ICsJCV9fbGUzMiBjaGVja3N1bSA9IDA7Cj4gPiA+IAo+ID4gPiBfX2xlMzIgaXMg
b25seSBmb3Igd2hlbiB0aGUgZGF0YSBjcm9zc2VzIHRoZSBrZXJuZWwvdXNlciBib3VuZHJ5LCBq
dXN0Cj4gPiA+IHVzZSBsZTMyIGluIHRoZSBrZXJuZWwgZm9yIHN0dWZmIGxpa2UgdGhpcy4KPiA+
ID4gCj4gPiBCdXQgdGhhdCB0aHJvd3MgYSBjb21waWxlIGVycm9yLgo+IAo+IFdoYXQgZXJyb3I/
Cgpkcml2ZXJzL3N0YWdpbmcvd2ltYXgvaTI0MDBtL2Z3LmM6MTkyOjM6IGVycm9yOiB1bmtub3du
IHR5cGUgbmFtZQrigJhsZTMy4oCZOyBkaWQgeW91IG1lYW4g4oCYX19sZTMy4oCZPwoKCS0gQW5p
cnVkaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
