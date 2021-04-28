Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F4D36D2FC
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 09:21:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F01C40552;
	Wed, 28 Apr 2021 07:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c0QQyWy34xUA; Wed, 28 Apr 2021 07:21:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBD804027A;
	Wed, 28 Apr 2021 07:21:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CE911BF31B
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 07:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5941A4027A
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 07:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CpfkZ2YuRaBd for <devel@linuxdriverproject.org>;
 Wed, 28 Apr 2021 07:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA48C4020F
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 07:20:50 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0E426600D4;
 Wed, 28 Apr 2021 07:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619594450;
 bh=hj7LHzq35NS14XVvUmoBorUTi57+snt04nyX+mFSnxM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JRnEBUtcIFPUnNIwZD51/4+WmD6FX6YRXkQQ8RVyiUS+NIg2OHbUp1RRJ5nszgfB9
 XImoUbge/fhE+v+5u3hi8D7kiWDojgsTHZlyCytq2BPG6XgE1IdjFIiRGM/ByhQAqR
 z79MgsmPLRt0eQAy7r9fAYMX6zhWWZV7mZ8+TStWdRNbe/LkGVRYk+89qiJMlCeAs5
 ibSQmKbn+Hi1nTbW013iPP8vBKrxisB//QKYS5i7bisTCjZk8JIVli/GlaM9hHF5NK
 xeGbBB746UfNJayI0oIeQAqpcIgpZqfJEXSVu/mwa3SJ6VAycE6beNoChlJxqS++Cv
 5E2MD4FMXJkCw==
Date: Wed, 28 Apr 2021 09:20:43 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v3 25/79] staging: media: vde: use
 pm_runtime_resume_and_get()
Message-ID: <20210428092043.380c9d4c@coco.lan>
In-Reply-To: <2e8bdea5-b2a7-df95-9d93-7c1f2df6158d@gmail.com>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
 <d7fb2d00224d37ba1c6c6e9b73609af95c886844.1619519080.git.mchehab+huawei@kernel.org>
 <2e8bdea5-b2a7-df95-9d93-7c1f2df6158d@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linuxarm@huawei.com, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RW0gVHVlLCAyNyBBcHIgMjAyMSAxNDo0NzowMSArMDMwMApEbWl0cnkgT3NpcGVua28gPGRpZ2V0
eEBnbWFpbC5jb20+IGVzY3JldmV1OgoKPiAyNy4wNC4yMDIxIDEzOjI2LCBNYXVybyBDYXJ2YWxo
byBDaGVoYWIg0L/QuNGI0LXRgjoKPiA+IEBAIC0xMDg4LDggKzEwOTAsOSBAQCBzdGF0aWMgaW50
IHRlZ3JhX3ZkZV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICB7Cj4g
PiAgCXN0cnVjdCB0ZWdyYV92ZGUgKnZkZSA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwo+
ID4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ID4gKwlpbnQgcmV0Owo+ID4g
IAo+ID4gLQlwbV9ydW50aW1lX2dldF9zeW5jKGRldik7Cj4gPiArCXJldCA9IHBtX3J1bnRpbWVf
cmVzdW1lX2FuZF9nZXQoZGV2KTsgIAo+IAo+IFNob3VsZCBiZSBjbGVhbmVyIHRvIHJldHVybiBl
cnJvciBkaXJlY3RseSBoZXJlLCBJTU8uCgpJIGRvdWJsZS1jaGVja2VkIGhvdyBkcml2ZXJzL2Jh
c2UvcGxhdGZvcm0uYyBkZWFscyB3aXRoIG5vbi16ZXJvCnJldHVybnMgYXQgdGhlIC5yZW1vdmUg
bWV0aG9kOgoKCXN0YXRpYyBpbnQgcGxhdGZvcm1fcmVtb3ZlKHN0cnVjdCBkZXZpY2UgKl9kZXYp
Cgl7CgkgICAgICAgIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgKmRydiA9IHRvX3BsYXRmb3JtX2Ry
aXZlcihfZGV2LT5kcml2ZXIpOwoJICAgICAgICBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpkZXYg
PSB0b19wbGF0Zm9ybV9kZXZpY2UoX2Rldik7CgkKCSAgICAgICAgaWYgKGRydi0+cmVtb3ZlKSB7
CgkgICAgICAgICAgICAgICAgaW50IHJldCA9IGRydi0+cmVtb3ZlKGRldik7CgkKCSAgICAgICAg
ICAgICAgICBpZiAocmV0KQoJICAgICAgICAgICAgICAgICAgICAgICAgZGV2X3dhcm4oX2Rldiwg
InJlbW92ZSBjYWxsYmFjayByZXR1cm5lZCBhIG5vbi16ZXJvIHZhbHVlLiBUaGlzIHdpbGwgYmUg
aWdub3JlZC5cbiIpOwoJICAgICAgICB9CgkgICAgICAgIGRldl9wbV9kb21haW5fZGV0YWNoKF9k
ZXYsIHRydWUpOwoJCgkgICAgICAgIHJldHVybiAwOwoJfQoKQmFzaWNhbGx5LCBpdCB3aWxsIHBy
aW50IGEgbWVzc2FnZSBidXQgd2lsbCBpZ25vcmUgd2hhdGV2ZXIgaGFwcGVucwphZnRlcndhcmRz
LgoKU28sIGlmIHRoZSBkcml2ZXIgaXMgY2hhbmdlZCB0byByZXR1cm4gYW4gZXJyb3IgdGhlcmUs
IGl0IHdpbGwgbGVhawpyZXNvdXJjZXMuCgpUaGFua3MsCk1hdXJvCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
