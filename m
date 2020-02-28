Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A904173F46
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Feb 2020 19:16:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA4BD876C9;
	Fri, 28 Feb 2020 18:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9+uIoxhDBdaT; Fri, 28 Feb 2020 18:16:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E7108761B;
	Fri, 28 Feb 2020 18:16:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08E261BF3A4
 for <devel@linuxdriverproject.org>; Fri, 28 Feb 2020 18:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 01ADD8827E
 for <devel@linuxdriverproject.org>; Fri, 28 Feb 2020 18:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27+cm5O6fdEP for <devel@linuxdriverproject.org>;
 Fri, 28 Feb 2020 18:16:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 736B388192
 for <devel@driverdev.osuosl.org>; Fri, 28 Feb 2020 18:16:10 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id fa20so1620259pjb.1
 for <devel@driverdev.osuosl.org>; Fri, 28 Feb 2020 10:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=BVlQGMV/dlLGU8gmf4FB65yDuYZrcSYwu3rmOUHQCKU=;
 b=tS9wg1JOmqNfXXI8nSE7wGqf4MWa4f0ygw9aMUvNcOlwmaudIrd1RdgRs5mDtGoulM
 QQnEOv23JAjX9lCxJH8QCkXYo1oUZAI3dR4RZ8ncR/03QZ7Zp0p3zhRvFI7cGX0I59dv
 b4b+j6B1u8Qbelz/2W31Aac7KVddqaR789yUSRTsWJZRzdO2J2a2VK3GX29MaeDUmbQr
 uM+08i0puvKfi6JO/Q9Dm6MQRgqf8zv+5TEb4CSrQhAUm/TgKfNeHEKfVF94pTtgc962
 mulOvvlQ2zW/PuchGstri/gdmsDIBB115xh2IITn/NR3nEEHkSKPxR5yXJdIEDOi9vUT
 DCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=BVlQGMV/dlLGU8gmf4FB65yDuYZrcSYwu3rmOUHQCKU=;
 b=Zuj2YosyvIYROmC5/ZbsiJ8Mm6Xpu40xfXCXnbDpYrycumaURCgdSeT8wL1BYbQBGT
 PdNWCk9b/TyUMWDFHsxPdXhgIMstVLHTZ/O6wnK8t/Y6iLQeWXPCoDwu8sMOzerJ3F0A
 sIzgqxYkz4PHS8unv/tuwlCP5nnpRZGeOALXnmOmBIDn9LGRdMHPqm4KF7VaZGbmsjMD
 x4AcHX1Se+OeixA1a6CNEZPcUlwyprw2sEYfhTxRAyd7xP6Se20gnIuhguLX/1jSMgJT
 c5BabkxwTtmYTmFrr0831EmdhseYCwMoGWIEJjwRMXWuyY09lKhvRVDrRnwV7rXZfXp5
 L+NA==
X-Gm-Message-State: APjAAAWx4jxbkCIaNZ55nw0kT45c17UGVRfSKLnty+KqezPKp1WAt4WT
 Qqxx9ghSi2N5CFEBFTI+HfM=
X-Google-Smtp-Source: APXvYqwJV6NXOWi/9kpfdOV26a82C6ZHklO6PCZixEzsPy5UNqDSWCPvB0B6NoGHXvzOSey5lcIDFg==
X-Received: by 2002:a17:902:7797:: with SMTP id
 o23mr4889179pll.298.1582913769852; 
 Fri, 28 Feb 2020 10:16:09 -0800 (PST)
Received: from [172.30.88.172] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id p17sm6148220pff.116.2020.02.28.10.16.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 10:16:08 -0800 (PST)
Subject: Re: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
 <20200215194136.10131-3-slongerbeam@gmail.com>
 <20200225150721.GO5379@paasikivi.fi.intel.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <c9b232d6-07c9-d13d-18aa-3e1e640aadc2@gmail.com>
Date: Fri, 28 Feb 2020 10:16:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200225150721.GO5379@paasikivi.fi.intel.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgU2FrYXJpLAoKT24gMi8yNS8yMCA3OjA3IEFNLCBTYWthcmkgQWlsdXMgd3JvdGU6Cj4gSGkg
U3RldmUsCj4KPiBPbiBTYXQsIEZlYiAxNSwgMjAyMCBhdCAxMTo0MToyMUFNIC0wODAwLCBTdGV2
ZSBMb25nZXJiZWFtIHdyb3RlOgo+PiBJbnN0ZWFkIG9mIGFsbG9jYXRpbmcgYSBub3RpZmllciBp
biB2NGwyX2FzeW5jX3JlZ2lzdGVyX2Z3bm9kZV9zdWJkZXYoKSwKPj4gaGF2ZSB0aGUgY2FsbGVy
IHByb3ZpZGUgb25lLiBUaGlzIGFsbG93cyB0aGUgY2FsbGVyIHRvIGltcGxlbWVudAo+PiBub3Rp
ZmllciBvcHMgKGJpbmQsIHVuYmluZCkuCj4+Cj4+IFRoZSBjYWxsZXIgaXMgbm93IHJlc3BvbnNp
YmxlIGZvciBmaXJzdCBpbml0aWFsaXppbmcgaXRzIG5vdGlmaWVyIHdpdGggYQo+PiBjYWxsIHRv
IHY0bDJfYXN5bmNfbm90aWZpZXJfaW5pdCgpLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTdGV2ZSBM
b25nZXJiZWFtIDxzbG9uZ2VyYmVhbUBnbWFpbC5jb20+Cj4gSW5zdGVhZCBvZiBpbXByb3Zpbmcg
djRsMl9hc3luY19yZWdpc3Rlcl9md25vZGVfc3ViZGV2KCksIGNvdWxkIHlvdSBjb252ZXJ0Cj4g
dGhlIHVzZXJzIChJTVggZHJpdmVyIGluIHRoaXMgY2FzZSkgdG8gY2FsbCB0aGUgcHJlZmVycmVk
IEFQSXMgaW5zdGVhZD8gQXMKPiB0aGUgbGluZXMgYmVsb3cgc2hvdywgdjRsMl9hc3luY19yZWdp
c3Rlcl9md25vZGVfc3ViZGV2KCkgaGFzIG9ubHkgdHdvCj4gdXNlcnMgbGVmdCAtLS0gdGhlIG90
aGVyIG9uZSBvZiB3aGljaCBpcyB0aGUgSU1YIGRyaXZlci4gQWZ0ZXIgY29udmVydGluZwo+IHRo
ZXNlIHR3bywgd2UgY291bGQganVzdCByZW1vdmUgdGhpcyBBUEkuCj4KPiBTZWUgZS5nLiBkcml2
ZXJzL21lZGlhL3BjaS9pbnRlbC9pcHUzL2lwdTMtY2lvMi5jIGFuZAo+IGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vb21hcDNpc3AvaXNwLmMgZm9yIGV4YW1wbGVzLgoKU2hvdWxkbid0IHY0bDJfYXN5
bmNfbm90aWZpZXJfYWRkX2Z3bm9kZV9yZW1vdGVfc3ViZGV2KCkgY2hlY2sgZm9yIHRoZSAKYXZh
aWxhYmlsaXR5IG9mIHRoZSByZW1vdGUgYmVmb3JlIGFkZGluZyBpdCB0byB0aGUgbm90aWZpZXIn
cyBhc2QgbGlzdCwgCmFzIGluOgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3Jl
L3Y0bDItYXN5bmMuYyAKYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWFzeW5jLmMKaW5k
ZXggOGJkZTMzYzIxY2U0Li5iNDhlZDY4YzZjNmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEv
djRsMi1jb3JlL3Y0bDItYXN5bmMuYworKysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwy
LWFzeW5jLmMKQEAgLTYxNSw3ICs2MTUsNyBAQCB2NGwyX2FzeW5jX25vdGlmaWVyX2FkZF9md25v
ZGVfcmVtb3RlX3N1YmRldihzdHJ1Y3QgCnY0bDJfYXN5bmNfbm90aWZpZXIgKm5vdGlmLAogwqDC
oMKgwqDCoMKgwqAgaW50IHJldDsKCiDCoMKgwqDCoMKgwqDCoCByZW1vdGUgPSBmd25vZGVfZ3Jh
cGhfZ2V0X3JlbW90ZV9wb3J0X3BhcmVudChlbmRwb2ludCk7Ci3CoMKgwqDCoMKgwqAgaWYgKCFy
ZW1vdGUpCivCoMKgwqDCoMKgwqAgaWYgKCFyZW1vdGUgfHwgIWZ3bm9kZV9kZXZpY2VfaXNfYXZh
aWxhYmxlKHJlbW90ZSkpCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1F
Tk9UQ09OTjsKCiDCoMKgwqDCoMKgwqDCoCBhc2QtPm1hdGNoX3R5cGUgPSBWNEwyX0FTWU5DX01B
VENIX0ZXTk9ERTsKCgpPdGhlcndpc2Ugd2UgYXJlIGJhY2sgdG8gdGhlIHByb2JsZW0gdGhhdCB0
aGUgbm90aWZpZXIgd2lsbCBuZXZlciAKY29tcGxldGUgYmVjYXVzZSB0aGUgcmVtb3RlJ3MgZHJp
dmVyIGlzIG5vdCBwcm9iZWQuCgpTdGV2ZQoKPgo+PiAtLS0KPj4gQ2hhbmdlcyBpbiB2MzoKPj4g
LSBhZGRlZCB0aGUgbWlzc2luZyBjYWxscyB0byB1bnJlZ2lzdGVyL2NsZWFudXAgdGhlIG5ldyBz
dWJkZXYgbm90aWZpZXJzLgo+PiAgICBSZXBvcnRlZCBieSBSdWkgU2lsdmEuCj4+IC0tLQo+PiAg
IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmlkZW8tbXV4LmMgICAgICAgICB8ICA4ICsrKysrKyst
Cj4+ICAgZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1md25vZGUuYyAgICAgIHwgMTEgKy0t
LS0tLS0tLS0KPj4gICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDYtbWlwaS1jc2kyLmMg
fCAgNyArKysrKystCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNz
aS5jIHwgIDcgKysrKysrLQo+PiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14Ny1taXBp
LWNzaXMuYyB8ICA5ICsrKysrKysrLQo+PiAgIGluY2x1ZGUvbWVkaWEvdjRsMi1md25vZGUuaCAg
ICAgICAgICAgICAgICB8IDEyICsrKysrKysrLS0tLQo+PiAgIDYgZmlsZXMgY2hhbmdlZCwgMzYg
aW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
