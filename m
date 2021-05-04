Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6C03729C2
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 May 2021 13:57:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C64E40FA9;
	Tue,  4 May 2021 11:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCyL1VJYPL7l; Tue,  4 May 2021 11:57:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E4B740F67;
	Tue,  4 May 2021 11:57:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 722691BF865
 for <devel@linuxdriverproject.org>; Tue,  4 May 2021 11:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EB9540F67
 for <devel@linuxdriverproject.org>; Tue,  4 May 2021 11:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SFyry5cq0_XL for <devel@linuxdriverproject.org>;
 Tue,  4 May 2021 11:57:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C2E440F59
 for <devel@driverdev.osuosl.org>; Tue,  4 May 2021 11:57:08 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1563B1F424AA
Message-ID: <2db7709801107dbacd464a919451bbafbd335748.camel@collabora.com>
Subject: Re: [PATCH] media: rkvdec: Fix .buf_prepare
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 linux-media@vger.kernel.org
Date: Tue, 04 May 2021 08:56:57 -0300
In-Reply-To: <20210504113714.30612-1-andrzej.p@collabora.com>
References: <20210504113714.30612-1-andrzej.p@collabora.com>
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
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Adrian Ratiu <adrian.ratiu@collabora.com>, linux-rockchip@lists.infradead.org,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgQW5kcnplaiwKClRoYW5rcyBhIGxvdCBmb3IgcGlja2luZyB0aGlzIHVwLgoKT24gVHVlLCAy
MDIxLTA1LTA0IGF0IDEzOjM3ICswMjAwLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4g
RnJvbTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+IAo+IFRoZSBk
cml2ZXIgc2hvdWxkIG9ubHkgc2V0IHRoZSBwYXlsb2FkIG9uIC5idWZfcHJlcGFyZSBpZiB0aGUK
PiBidWZmZXIgaXMgQ0FQVFVSRSB0eXBlLiBJZiBhbiBPVVRQVVQgYnVmZmVyIGhhcyBhIHplcm8g
Ynl0ZXN1c2VkCj4gc2V0IGJ5IHVzZXJzcGFjZSB0aGVuIHY0bDItY29yZSB3aWxsIHNldCBpdCB0
byBidWZmZXIgbGVuZ3RoLgo+IAo+IEZpeGVzOiBjZDMzYzgzMDQ0OGJhICgibWVkaWE6IHJrdmRl
YzogQWRkIHRoZSBya3ZkZWMgZHJpdmVyIikKPiBTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJj
aWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFJhdGl1
IDxhZHJpYW4ucmF0aXVAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyemVqIFBp
ZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+IAo+IC0tLQo+IEBIYW5zOiBJ
IGhhdmVuJ3QgaGFkIGFueW9uZSBjb21wbGFpbiBhYm91dCB0aGUgaXNzdWUuIFRoZSBmaXggaXMg
bmVlZGVkIGZvcgo+IHRoZSBya3ZkZWMgdnA5IHdvcmssIHNvIEkgdGhpbmsgNS4xNCBpcyBmaW5l
Lgo+IAo+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyB8IDEwICsrKysr
KysrKy0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiBpbmRleCBkODIxNjYxZDMw
ZjMuLmVmMjE2NjA0MzEyNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2
ZGVjL3JrdmRlYy5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMu
Ywo+IEBAIC00ODEsNyArNDgxLDE1IEBAIHN0YXRpYyBpbnQgcmt2ZGVjX2J1Zl9wcmVwYXJlKHN0
cnVjdCB2YjJfYnVmZmVyICp2YikKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
ICh2YjJfcGxhbmVfc2l6ZSh2YiwgaSkgPCBzaXplaW1hZ2UpCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7Cj4gwqDCoMKgwqDC
oMKgwqDCoH0KPiAtwqDCoMKgwqDCoMKgwqB2YjJfc2V0X3BsYW5lX3BheWxvYWQodmIsIDAsIGYt
PmZtdC5waXhfbXAucGxhbmVfZm10WzBdLnNpemVpbWFnZSk7Cj4gKwo+ICvCoMKgwqDCoMKgwqDC
oC8qCj4gK8KgwqDCoMKgwqDCoMKgICogQnVmZmVyIGJ5dGVzdXNlZCBpcyB3cml0dGVuIGJ5IGRy
aXZlciBmb3IgQ0FQVFVSRSBidWZmZXJzLgo+ICvCoMKgwqDCoMKgwqDCoCAqIChpZiB1c2Vyc3Bh
Y2UgcGFzc2VzIDAgYnl0ZXN1c2VkIGZvciBPVVRQVVQgYnVmZmVycywgdjRsMi1jb3JlIHNldHMK
PiArwqDCoMKgwqDCoMKgwqAgKiBpdCB0byBidWZmZXIgbGVuZ3RoKS4KPiArwqDCoMKgwqDCoMKg
wqAgKi8KPiArwqDCoMKgwqDCoMKgwqBpZiAoIVY0TDJfVFlQRV9JU19PVVRQVVQodnEtPnR5cGUp
KQoKUGxlYXNlIHVzZSBWNEwyX1RZUEVfSVNfQ0FQVFVSRSBoZXJlLgoKQWxzbywgd2h5IGlzIHRo
aXMgY2hhbmdlIG5lZWRlZCBpbiBya3ZkZWMsIGJ1dCBub3QgaW4gY2VkcnVzCm9yIGhhbnRybz8K
ClRoYW5rcyEKRXplcXVpZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
