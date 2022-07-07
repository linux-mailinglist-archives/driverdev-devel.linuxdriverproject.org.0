Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4569156A9D8
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Jul 2022 19:40:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB58041BA6;
	Thu,  7 Jul 2022 17:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB58041BA6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LNMZCULoBJZW; Thu,  7 Jul 2022 17:40:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACBCF41B73;
	Thu,  7 Jul 2022 17:40:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACBCF41B73
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 78CF91BF33C
 for <devel@linuxdriverproject.org>; Thu,  7 Jul 2022 17:40:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 53A40840BF
 for <devel@linuxdriverproject.org>; Thu,  7 Jul 2022 17:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53A40840BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1-x7hkMPLxha for <devel@linuxdriverproject.org>;
 Thu,  7 Jul 2022 17:40:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BBC584097
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BBC584097
 for <devel@driverdev.osuosl.org>; Thu,  7 Jul 2022 17:40:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7E461B80DEA
 for <devel@driverdev.osuosl.org>; Thu,  7 Jul 2022 17:40:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 358EFC341CF
 for <devel@driverdev.osuosl.org>; Thu,  7 Jul 2022 17:40:39 +0000 (UTC)
Received: by mail-il1-f180.google.com with SMTP id a12so6324701ilp.13
 for <devel@driverdev.osuosl.org>; Thu, 07 Jul 2022 10:40:39 -0700 (PDT)
X-Gm-Message-State: AJIora9kwLRHBFJ0SZ0oukbFoVxS5I4bnfYudKgJrSwz/7sZX7EX/10O
 wk4AOVIm4rfif3UrSBxCoZTyYLPdVOWqbn2XYhQ=
X-Google-Smtp-Source: AGRyM1s7nq6cQEa0iTdmAfWgf5pwnXQEUhv8xYn3//CX4Oao0L/tYBc2qN4I2LyHaVpofYmj6eR/gZ3kfqZt2UWEyfM=
X-Received: by 2002:a05:6e02:1b8c:b0:2dc:557c:5fbb with SMTP id
 h12-20020a056e021b8c00b002dc557c5fbbmr105631ili.218.1657215638325; Thu, 07
 Jul 2022 10:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220221163754.150011-1-Jerome.Pouiller@silabs.com>
 <20220221163754.150011-3-Jerome.Pouiller@silabs.com>
 <cb49da01-584a-bb71-eecb-c54e40bce062@demerara.io>
In-Reply-To: <cb49da01-584a-bb71-eecb-c54e40bce062@demerara.io>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 7 Jul 2022 13:40:27 -0400
X-Gmail-Original-Message-ID: <CA+5PVA7F7-5GY=YE9rSL0ZYkAtiG+mi-gGyq6=65fpvBiqpe6Q@mail.gmail.com>
Message-ID: <CA+5PVA7F7-5GY=YE9rSL0ZYkAtiG+mi-gGyq6=65fpvBiqpe6Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] wfx: add antenna configuration files
To: ben@demerara.io
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1657215639;
 bh=uTBsp+nZRmEC10umshDOaUzA0yEQMiqZCnaP4V6mJeQ=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=THVZGjSTn4Yg2eTetUBiKQ7hRw3peA4qpkSoofgFub+vHJMmSpVtf/HG2SOM1NTQN
 ZyMp+s+JmZq4yU15VaGjeV0n+7N3wSd9PHFzujojYpLJHLnQRT1xfauvFJHba2vCt5
 VCKpmwDgjBsLdeL+j5OVo6Rgfc79fCIKLMjzfG0v8k35IAqCfaO95hF4Pe20Pp8lLH
 jqzZDPzPhxwUBKG+F+EBJmirwcQqtXgj4Arla+mfA7bLo5jtunUpWFhYP94ZG759GB
 gxUyfYNPw3UkgjZdnw9gYyKFmD4tVYbtXo6dIgWrr2PPv2Ty+E1dZzd5f63zPyUC2K
 n18Rswr9UIXmA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=THVZGjST
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
Cc: devel@driverdev.osuosl.org, jerome.pouiller@gmail.com,
 Jerome Pouiller <Jerome.Pouiller@silabs.com>, netdev <netdev@vger.kernel.org>,
 Linux Wireless <linux-wireless@vger.kernel.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Linux Firmware <linux-firmware@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBKdWwgNywgMjAyMiBhdCAxOjA0IFBNIEJlbiBCcm93biA8YmVuQGRlbWVyYXJhLmlv
PiB3cm90ZToKPgo+IE9uIDIxLzAyLzIwMjIgMTY6MzcsIEplcm9tZSBQb3VpbGxlciB3cm90ZToK
PiA+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4K
PiA8c25pcD4KPiA+IGRpZmYgLS1naXQgYS9XSEVOQ0UgYi9XSEVOQ0UKPiA+IGluZGV4IDBhNmNi
MTUuLjk2ZjY3ZjcgMTAwNjQ0Cj4gPiAtLS0gYS9XSEVOQ0UKPiA+ICsrKyBiL1dIRU5DRQo+ID4g
QEAgLTU4NDUsOCArNTg0NSwxOCBAQCBEcml2ZXI6IHdmeCAtIFNpbGljb24gTGFicyBXaS1GaSBU
cmFuc2NlaXZlcgo+ID4gIEZpbGU6IHdmeC93Zm1fd2YyMDBfQzAuc2VjCj4gPiAgVmVyc2lvbjog
My4xMi4xCj4gPgo+ID4gK0ZpbGU6IHdmeC9icmQ0MDAxYS5wZHMgbm90IGxpc3RlZCBpbiBXSEVO
Q0UKPiA+ICtGaWxlOiB3ZngvYnJkODAyMmEucGRzIG5vdCBsaXN0ZWQgaW4gV0hFTkNFCj4gPiAr
RmlsZTogd2Z4L2JyZDgwMjNhLnBkcyBub3QgbGlzdGVkIGluIFdIRU5DRQo+Cj4gVGhpcyBmb3Jt
YXQgZG9lcyBub3QgYXBwZWFyIHRvIGJlIGNvcnJlY3QuIFdoaWxlIHRoaXMgd2lsbCBzZWVtaW5n
bHkKPiBwYXNzIHRoZSBgY2hlY2tfd2hlbmNlLnB5YCBjaGVjaywgaXQgd2lsbCBiZSBjb21wbGV0
ZWx5IGlnbm9yZWQgYnkKPiBgY29weS1maXJtd2FyZS5zaGAsIGFzIHRoYXQgdGFrZXMgdGhlIGZ1
bGwgbGluZSBhZnRlciAnRmlsZTogJyAoZS5nLgo+ICd3ZngvYnJkNDAwMWEucGRzIG5vdCBsaXN0
ZWQgaW4gV0hFTkNFJywgd2hpY2ggb2YgY291cnNlIGRvZXMgbm90IGV4aXN0KS4KCk9oLCBpbmRl
ZWQuCgo+IEknbSBhc3N1bWluZyB0aGUgdHJhaWxpbmcgJyBub3QgbGlzdGVkIGluIFdIRU5DRScg
bmVlZHMgdG8gYmUgcmVtb3ZlZAo+IGZyb20gZWFjaCBvZiB0aGVzZSBsaW5lcy4gT3RoZXJ3aXNl
IHRoZXNlIGFyZSBsaWtlbHkgbm90IGJlaW5nIHBpY2tlZCB1cAo+IGJ5IGRpc3Ryb3MgKHRoZXkg
YXJlIG1pc3NpbmcgZnJvbSBBcmNoLCBmb3IgZXhhbXBsZSkuIFRoaXMgbWF5IGhhdmUgYmVlbgo+
IHRoZSBpbnRlbnRpb24sIGJ1dCB0aGF0IHNlZW1zIG9kZCAoYW5kIHVuY2xlYXIgaWYgc28pLgoK
SSBkb3VidCB0aGF0IHdhcyB0aGUgaW50ZW50aW9uLiAgSSdsbCBjb3JyZWN0IFdIRU5DRSBpbiBh
IHNlcGFyYXRlCmNvbW1pdC4gIFRoYW5rIHlvdSBmb3IgcmVwb3J0aW5nIHRoZSBpc3N1ZS4KCmpv
c2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
