Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 986C7101575
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Nov 2019 06:44:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0573B86203;
	Tue, 19 Nov 2019 05:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZawXh59aWr4O; Tue, 19 Nov 2019 05:44:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE1B486422;
	Tue, 19 Nov 2019 05:44:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E8B581BF2BD
 for <devel@linuxdriverproject.org>; Tue, 19 Nov 2019 05:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E5B6686203
 for <devel@linuxdriverproject.org>; Tue, 19 Nov 2019 05:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hxBuYRZGXgHn for <devel@linuxdriverproject.org>;
 Tue, 19 Nov 2019 05:44:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 35351860C9
 for <devel@driverdev.osuosl.org>; Tue, 19 Nov 2019 05:44:27 +0000 (UTC)
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B201D21939;
 Tue, 19 Nov 2019 05:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574142267;
 bh=UwBJZoz9GrgalpPxw28oDcIL0daCumvlEcO2T7STbEs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0FVUZTd4avgbrAMuNCS1RvWbmrPLVm430fPw6jrJTMwXh7Mhzvx3lFj6EYWkNOFV3
 EhJTOw1z7fSvtDvvHvlfRIZFvJSX94aTuKrTkuphj/KsKCdi3XXzGHTZe+tZQmrO1l
 g908XS9+zNWTs1gmM2q+w+zXmTAbmRrFZEjg2DC8=
Date: Mon, 18 Nov 2019 21:44:25 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: syzbot <syzbot+787bcbef9b5fec61944b@syzkaller.appspotmail.com>
Subject: Re: WARNING in bdev_read
Message-ID: <20191119054425.GO163020@sol.localdomain>
References: <00000000000073309e05951e2dc1@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00000000000073309e05951e2dc1@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 gregkh@linuxfoundation.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 mchehab+samsung@kernel.org, paulmck@linux.ibm.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBPY3QgMTcsIDIwMTkgYXQgMTA6MDI6MDdBTSAtMDcwMCwgc3l6Ym90IHdyb3RlOgo+
IEhlbGxvLAo+IAo+IHN5emJvdCBmb3VuZCB0aGUgZm9sbG93aW5nIGNyYXNoIG9uOgo+IAo+IEhF
QUQgY29tbWl0OiAgICBiYzg4Zjg1YyBrdGhyZWFkOiBtYWtlIF9fa3RocmVhZF9xdWV1ZV9kZWxh
eWVkX3dvcmsgc3RhdGljCj4gZ2l0IHRyZWU6ICAgICAgIHVwc3RyZWFtCj4gY29uc29sZSBvdXRw
dXQ6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvbG9nLnR4dD94PTE0ZTI1NjA4ZTAw
MDAwCj4ga2VybmVsIGNvbmZpZzogIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvLmNv
bmZpZz94PWUwYWM0ZDliMzUwNDYzNDMKPiBkYXNoYm9hcmQgbGluazogaHR0cHM6Ly9zeXprYWxs
ZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlkPTc4N2JjYmVmOWI1ZmVjNjE5NDRiCj4gY29tcGlsZXI6
ICAgICAgIGdjYyAoR0NDKSA5LjAuMCAyMDE4MTIzMSAoZXhwZXJpbWVudGFsKQo+IHN5eiByZXBy
bzogICAgICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L3JlcHJvLnN5ej94PTE1OWZk
MzUzNjAwMDAwCj4gQyByZXByb2R1Y2VyOiAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29t
L3gvcmVwcm8uYz94PTE3ZTgyMTczNjAwMDAwCj4gCj4gVGhlIGJ1ZyB3YXMgYmlzZWN0ZWQgdG86
Cj4gCj4gY29tbWl0IGM0OGM5ZjdmZjMyYjhiMzk2NWEwOGU0MGViNjc2MzY4MmQ5MDViNWQKPiBB
dXRob3I6IFZhbGRpcyBLbMSTdG5pZWtzIDx2YWxkaXMua2xldG5pZWtzQHZ0LmVkdT4KPiBEYXRl
OiAgIFdlZCBBdWcgMjggMTY6MDg6MTcgMjAxOSArMDAwMAo+IAo+ICAgICBzdGFnaW5nOiBleGZh
dDogYWRkIGV4ZmF0IGZpbGVzeXN0ZW0gY29kZSB0byBzdGFnaW5nCgpUaGlzIGJpc2VjdGlvbiBs
b29rcyBjb3JyZWN0LgoKT24gYSByZWxhdGVkIHRvcGljOiBpdCBzZWVtcyB0aGUgZXhmYXQgZmls
ZXN5c3RlbSBpcyBtaXNzaW5nIGEgbWFpbGluZyBsaXN0LgoKLSBFcmljCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
