Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94BC3D884E
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Jul 2021 08:55:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 287AA40502;
	Wed, 28 Jul 2021 06:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jkLEhG8gWl8C; Wed, 28 Jul 2021 06:55:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2513400FB;
	Wed, 28 Jul 2021 06:55:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 29D651BF94D
 for <devel@linuxdriverproject.org>; Wed, 28 Jul 2021 06:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 188A583A42
 for <devel@linuxdriverproject.org>; Wed, 28 Jul 2021 06:55:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y-X1_KohU7ta for <devel@linuxdriverproject.org>;
 Wed, 28 Jul 2021 06:55:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp1.osuosl.org (Postfix) with ESMTP id 85FFD83A41
 for <devel@linuxdriverproject.org>; Wed, 28 Jul 2021 06:55:03 +0000 (UTC)
Received: by ajax-webmail-mail.loongson.cn (Coremail) ; Wed, 28 Jul 2021
 14:54:56 +0800 (GMT+08:00)
X-Originating-IP: [10.20.41.133]
Date: Wed, 28 Jul 2021 14:54:56 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: =?UTF-8?B?5p2O5pmo6Ziz?= <lichenyang@loongson.cn>
To: "Daniel Vetter" <daniel@ffwll.ch>
Subject: Reply: Re: [PATCH v3 1/3] drm/loongson: Add DRM Driver for Loongson
 7A1000 bridge chip
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10a build 20191018(4c4f6d15)
 Copyright (c) 2002-2021 www.mailtech.cn .loongson.cn
In-Reply-To: <YPqElHRxMSvrzzqs@phenom.ffwll.local>
References: <20210723031251.200686-1-lichenyang@loongson.cn>
 <YPqElHRxMSvrzzqs@phenom.ffwll.local>
MIME-Version: 1.0
Message-ID: <b706287.1073f.17aebe51486.Coremail.lichenyang@loongson.cn>
X-Coremail-Locale: en_US
X-CM-TRANSID: AQAAf9DxD+NA_wBh7QwlAA--.17898W
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQAQA13QvNu7AQABsD
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
 CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
 daVFxhVjvjDU=
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
Cc: David Airlie <airlied@linux.ie>, Huacai Chen <chenhuacai@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgRGFuaWVsLApJJ20gaG9ub3JlZCB0byBoYXZlIHlvdXIgYXR0ZW50aW9u77yMYW5kIHRoYW5r
cyBmb3IgeW91ciBhZHZpY2UuCkkgd2lsbCBmaW5pc2ggdGhlIG5leHQgdmVyc2lvbiBhbmQgc3Vi
bWl0IGl0IGFzIHNvb24gYXMgcG9zc2libGUuCgomZ3Q7ICZndDsgKwomZ3Q7ICZndDsgKwlsY3J0
Yy0mZ3Q7bGRldiA9IGxkZXY7CiZndDsgJmd0OyArCWxjcnRjLSZndDtyZWdfb2Zmc2V0ID0gaW5k
ZXggKiBSRUdfT0ZGU0VUOwomZ3Q7ICZndDsgKwlsY3J0Yy0mZ3Q7Y2ZnX3JlZyA9IENGR19SRVNF
VDsKJmd0OyAmZ3Q7ICsJbGNydGMtJmd0O2NydGNfaWQgPSBpbmRleDsKJmd0OyAmZ3Q7ICsKJmd0
OyAmZ3Q7ICsJcmV0ID0gbG9vbmdzb25fcGxhbmVfaW5pdChsY3J0Yyk7CiZndDsgJmd0OyArCWlm
IChyZXQpCiZndDsgJmd0OyArCQlnb3RvIGZyZWVfbGNydGM7CiZndDsgJmd0OyArCiZndDsgJmd0
OyArCXJldCA9IGRybV9jcnRjX2luaXRfd2l0aF9wbGFuZXMobGRldi0mZ3Q7ZGV2LCAmYW1wO2xj
cnRjLSZndDtiYXNlLCAmYW1wO2xjcnRjLSZndDtwbGFuZSwKJmd0OyAmZ3Q7ICsJCQkJCU5VTEws
ICZhbXA7bG9vbmdzb25fY3J0Y19mdW5jcywgTlVMTCk7CiZndDsgCiZndDsgUGxlYXNlIHVzZSB0
aGUgZHJtbV9jcnRjIHZlcnNpb24gaGVyZSBhbmQgZG9uJ3Qga3phbGxvYyB5b3Vyc2VsZi4gVGhh
dAomZ3Q7IHNpbXBsaWZpZXMgdGhlIGNsZWFudXAgKHNpbmNlIGF0bSB5b3UncmUganVzdCBsZWFr
aW5nIHRoaXMgbWVtb3J5KS4KJmd0OyAKJmd0OyBBbHNvIGxvb25nc29uIGh3IGxvb2tzIGEgbGlr
ZSBsaWtlIHNvbWV0aGluZyB3aGljaCBzaG91bGQgdXNlIHRoZSBzaW1wbGUKJmd0OyBrbXMgaGVs
cGVycyBzaW5jZSB5b3UncmUgZW1iZWRkaW5nIHRoZSBzaW5nbGUgcGxhbmUgaW50byB5b3VyIGNy
dGMgc3RydWN0OgomZ3Q7IAomZ3Q7IGh0dHBzOi8vZHJpLmZyZWVkZXNrdG9wLm9yZy9kb2NzL2Ry
bS9ncHUvZHJtLWttcy1oZWxwZXJzLmh0bWwjc2ltcGxlLWttcy1oZWxwZXItcmVmZXJlbmNlCiZn
dDsgCiZndDsgQWxzbyBhdCB0aGF0IHBvaW50IHlvdXIgZHJpdmVyIGlzIHByb2JhYnlsIHNtYWxs
IGVub3VnaCB0aGF0IHNpbmdsZSBzb3VyY2UKJmd0OyBmaWxlIGlzIHRoZSByaWdodCB0aGluZywg
YW5kIHlvdSBzaG91bGQgbW92ZSBpdCBpbnRvIGRyaXZlcnMvZ3B1L2RybS90aW55LgomZ3Q7IEl0
IHdvdWxkIGJlIHRoZSBmaXJzdCBzaW1wbGUvdGlueSBkcm0gZHJpdmVyIHdpdGggMiBvdXRwdXRz
LgomZ3Q7IAomZ3Q7IFJ1bGUgb2YgdGh1bWIgd2UgaGF2ZSBpcyB0aGF0IGlmIGl0J3MgYmVsb3cg
MWtsb2MsIGEgc2luZ2xlIGZpbGUgYW5kCiZndDsgcHV0dGluZyBpdCBpbnRvIGRybS90aW55IGlz
IGJlc3QuCiZndDsgCiZndDsgQ2hlZXJzLCBEYW5pZWwKCkkgd2lsbCB0cnkgdXNlIHRoZSBkcm1t
X2NydGMmYW1wO2RybW1fZW5jb2RlciB2ZXJzaW9uLCBhbmQgY29uc2lkZXIgdXNlIHNpbXBsZSBr
bXMgaGVscGVycy4KQnV0IEknbSBub3QgZ29pbmcgdG8gcHV0IGl0IGluIGRyaXZlcnMvZ3B1L2Ry
bS90aW55LCB3ZSBzdGlsbCBoYXZlIHNvbWUgZmVhdHVyZXMKdG8gd29yayBvbiBhbmQgd2lsbCBz
dXBwb3J0IG5ldyBncmFwaGljcyBjYXJkcyBpbiB0aGUgZnV0dXJlLgoKJmd0OyAKJmd0OyAmZ3Q7
ICsJcmV0dXJuIDA7CiZndDsgJmd0OyArfQomZ3Q7ICZndDsgKwomZ3Q7ICZndDsgK3N0YXRpYyBp
bnQgbG9vbmdzb25fZHJtX2xvYWQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKJmd0OyAmZ3Q7ICt7
CiZndDsgJmd0OyArCXN0cnVjdCBsb29uZ3Nvbl9kZXZpY2UgKmxkZXY7CiZndDsgJmd0OyArCWlu
dCByZXQ7CiZndDsgJmd0OyArCiZndDsgJmd0OyArCWxkZXYgPSBkZXZtX2t6YWxsb2MoZGV2LSZn
dDtkZXYsIHNpemVvZigqbGRldiksIEdGUF9LRVJORUwpOwomZ3Q7IAomZ3Q7IFBsZWFzZSBkb24n
dCB1c2UgZGV2bV9remFsbG9jIGhlcmUsIGJ1dCBpbnN0ZWFkIGVtYmVkZGUgdGhlIHN0cnVjdAom
Z3Q7IGRybV9kZXZpY2UgaW50byB5b3VyIHN0cnVjdCBsb29vbmdzb25fZGV2aWNlLgomZ3Q7IC1E
YW5pZWwKClRoaXMgaGFzIGJlZW4gY2hhbmdlZCBhbmQgd2lsbCBiZSBzdWJtaXR0ZWQgaW4gdGhl
IG5leHQgdmVyc2lvbi4KCiZndDsgCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpMaUNo
ZW55YW5nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
