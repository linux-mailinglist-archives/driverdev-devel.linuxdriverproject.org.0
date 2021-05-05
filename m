Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC545373AEF
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 May 2021 14:17:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE68540F79;
	Wed,  5 May 2021 12:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UfZUX3oa5uEh; Wed,  5 May 2021 12:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79C5A40F6D;
	Wed,  5 May 2021 12:17:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED4F71BF852
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 12:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9A6960805
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 12:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iv-en8Tg1sn6 for <devel@linuxdriverproject.org>;
 Wed,  5 May 2021 12:17:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D68F46058F
 for <devel@driverdev.osuosl.org>; Wed,  5 May 2021 12:17:19 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 4058E1F42DF4
Subject: Re: [PATCH] media: rkvdec: Fix .buf_prepare
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
References: <20210504113714.30612-1-andrzej.p@collabora.com>
 <2db7709801107dbacd464a919451bbafbd335748.camel@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <58791717-b7a9-d057-a998-a4440fcbe783@collabora.com>
Date: Wed, 5 May 2021 14:17:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2db7709801107dbacd464a919451bbafbd335748.camel@collabora.com>
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
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Adrian Ratiu <adrian.ratiu@collabora.com>, linux-rockchip@lists.infradead.org,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgRXplcXVpZWwsCgpXIGRuaXUgMDQuMDUuMjAyMSBvwqAxMzo1NiwgRXplcXVpZWwgR2FyY2lh
IHBpc3plOgo+IEhpIEFuZHJ6ZWosCj4gCj4gVGhhbmtzIGEgbG90IGZvciBwaWNraW5nIHRoaXMg
dXAuCj4gCj4gT24gVHVlLCAyMDIxLTA1LTA0IGF0IDEzOjM3ICswMjAwLCBBbmRyemVqIFBpZXRy
YXNpZXdpY3ogd3JvdGU6Cj4+IEZyb206IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFi
b3JhLmNvbT4KPj4KPj4gVGhlIGRyaXZlciBzaG91bGQgb25seSBzZXQgdGhlIHBheWxvYWQgb24g
LmJ1Zl9wcmVwYXJlIGlmIHRoZQo+PiBidWZmZXIgaXMgQ0FQVFVSRSB0eXBlLiBJZiBhbiBPVVRQ
VVQgYnVmZmVyIGhhcyBhIHplcm8gYnl0ZXN1c2VkCj4+IHNldCBieSB1c2Vyc3BhY2UgdGhlbiB2
NGwyLWNvcmUgd2lsbCBzZXQgaXQgdG8gYnVmZmVyIGxlbmd0aC4KPj4KPj4gRml4ZXM6IGNkMzNj
ODMwNDQ4YmEgKCJtZWRpYTogcmt2ZGVjOiBBZGQgdGhlIHJrdmRlYyBkcml2ZXIiKQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4+IFNp
Z25lZC1vZmYtYnk6IEFkcmlhbiBSYXRpdSA8YWRyaWFuLnJhdGl1QGNvbGxhYm9yYS5jb20+Cj4+
IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9y
YS5jb20+Cj4+Cj4+IC0tLQo+PiBASGFuczogSSBoYXZlbid0IGhhZCBhbnlvbmUgY29tcGxhaW4g
YWJvdXQgdGhlIGlzc3VlLiBUaGUgZml4IGlzIG5lZWRlZCBmb3IKPj4gdGhlIHJrdmRlYyB2cDkg
d29yaywgc28gSSB0aGluayA1LjE0IGlzIGZpbmUuCj4+Cj4+ICDCoGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgfCAxMCArKysrKysrKystCj4+ICDCoDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
cmt2ZGVjL3JrdmRlYy5jCj4+IGluZGV4IGQ4MjE2NjFkMzBmMy4uZWYyMTY2MDQzMTI3IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4+ICsrKyBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPj4gQEAgLTQ4MSw3ICs0ODEs
MTUgQEAgc3RhdGljIGludCBya3ZkZWNfYnVmX3ByZXBhcmUoc3RydWN0IHZiMl9idWZmZXIgKnZi
KQo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAodmIyX3BsYW5lX3NpemUo
dmIsIGkpIDwgc2l6ZWltYWdlKQo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgfQo+PiAt
wqDCoMKgwqDCoMKgwqB2YjJfc2V0X3BsYW5lX3BheWxvYWQodmIsIDAsIGYtPmZtdC5waXhfbXAu
cGxhbmVfZm10WzBdLnNpemVpbWFnZSk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgLyoKPj4gK8Kg
wqDCoMKgwqDCoMKgICogQnVmZmVyIGJ5dGVzdXNlZCBpcyB3cml0dGVuIGJ5IGRyaXZlciBmb3Ig
Q0FQVFVSRSBidWZmZXJzLgo+PiArwqDCoMKgwqDCoMKgwqAgKiAoaWYgdXNlcnNwYWNlIHBhc3Nl
cyAwIGJ5dGVzdXNlZCBmb3IgT1VUUFVUIGJ1ZmZlcnMsIHY0bDItY29yZSBzZXRzCj4+ICvCoMKg
wqDCoMKgwqDCoCAqIGl0IHRvIGJ1ZmZlciBsZW5ndGgpLgo+PiArwqDCoMKgwqDCoMKgwqAgKi8K
Pj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFWNEwyX1RZUEVfSVNfT1VUUFVUKHZxLT50eXBlKSkKPiAK
PiBQbGVhc2UgdXNlIFY0TDJfVFlQRV9JU19DQVBUVVJFIGhlcmUuCj4gCj4gQWxzbywgd2h5IGlz
IHRoaXMgY2hhbmdlIG5lZWRlZCBpbiBya3ZkZWMsIGJ1dCBub3QgaW4gY2VkcnVzCj4gb3IgaGFu
dHJvPwo+IAoKQXMgYSBtYXR0ZXIgb2YgZmFjdCBJIHRoaW5rIGl0IGlzIG5lZWRlZCBpbiBhbGwg
dGhyZWUsIGJlY2F1c2UgbGF0ZXIgb24sCndoZW5ldmVyIGEgZHJpdmVyIHVzZXMgdmIyX2dldF9w
bGFuZV9wYXlsb2FkKCksIHdpdGhvdXQgc3VjaCBhIHBhdGNoIGl0CndpbGwgZ2V0IGFuIGludmFs
aWQgbnVtYmVyIGFuZCB3cml0ZSB0aGF0IHRvIGEgaGFyZHdhcmUgcmVnaXN0ZXIsIGNhdXNpbmcK
aW5jb3JyZWN0IGJlaGF2aW9yLgoKSSB3aWxsIHJlc3BvbmQgd2l0aCBhIHYyIHNlcmllcy4KClJl
Z2FyZHMsCgpBbmRyemVqCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
