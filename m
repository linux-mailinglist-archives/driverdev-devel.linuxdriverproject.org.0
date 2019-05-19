Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B53072269F
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 12:46:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1A435230FB;
	Sun, 19 May 2019 10:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0wyLv6qpsq90; Sun, 19 May 2019 10:46:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 496BA22794;
	Sun, 19 May 2019 10:46:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B4EC1BF616
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:46:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4826987766
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hKXox9p1F7OW for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 10:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE588876F2
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:46:39 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A480B2173C;
 Sun, 19 May 2019 10:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558262799;
 bh=6Lga5+qclP2sw4nWQGZpibGDqbeXADq87If2cmO73Ec=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aXLqKfSVLtysUxZFN6QFWMsZXVZui8ZCTidRNkvAfyD+6SEhmAp+3q5PbJ22nr9/8
 P8ukThxwV0lMxaJITTdf3RHXAIU15zYTUSurczupwVkg+YfPukbb1jU70tqHg9zGJa
 BakT02RTGjfHpxerUDxNK8K2m3ZNzx3LDoUDbGdg=
Date: Sun, 19 May 2019 11:46:34 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: =?UTF-8?B?QsOhcmJhcmE=?= Fernandes <barbara.fernandes@usp.br>
Subject: Re: [RESEND PATCH] staging: iio: ad7192: create of_device_id array
Message-ID: <20190519114634.0e2a9389@archlinux>
In-Reply-To: <20190518224435.18266-1-barbara.fernandes@usp.br>
References: <20190518224435.18266-1-barbara.fernandes@usp.br>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Wilson Sales <spoonm@spoonm.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCAxOCBNYXkgMjAxOSAxOTo0NDozNSAtMDMwMApCw6FyYmFyYSBGZXJuYW5kZXMgPGJh
cmJhcmEuZmVybmFuZGVzQHVzcC5icj4gd3JvdGU6Cgo+IENyZWF0ZSBsaXN0IG9mIGNvbXBhdGli
bGUgZGV2aWNlIGlkcyB0byBiZSBtYXRjaGVkIHdpdGggdGhvc2Ugc3RhdGVkIGluCj4gdGhlIGRl
dmljZSB0cmVlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IELDoXJiYXJhIEZlcm5hbmRlcyA8YmFyYmFy
YS5mZXJuYW5kZXNAdXNwLmJyPgo+IFNpZ25lZC1vZmYtYnk6IFdpbHNvbiBTYWxlcyA8c3Bvb25t
QHNwb29ubS5vcmc+Cj4gQ28tZGV2ZWxvcGVkIGJ5OiBXaWxzb24gU2FsZXMgPHNwb29ubUBzcG9v
bm0ub3JnPgpIaSBCw6FyYmFyYSwgV2lsc29uLAoKT25lIG1pbm9yIGlzc3VlIGlubGluZSBhYm91
dCBjb2RlIG9yZGVyaW5nLgpBY3R1YWwgY29udGVudCBpcyBmaW5lLgoKVGhhbmtzLAoKSm9uYXRo
YW4KCj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9paW8vYWRjL2FkNzE5Mi5jIHwgMTIgKysrKysr
KysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRjL2FkNzE5Mi5jIGIvZHJpdmVycy9zdGFnaW5nL2lp
by9hZGMvYWQ3MTkyLmMKPiBpbmRleCAzZDc0ZGE5ZDM3ZTcuLmNjODg2Zjk0NGRiZiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2FkYy9hZDcxOTIuYwo+ICsrKyBiL2RyaXZlcnMv
c3RhZ2luZy9paW8vYWRjL2FkNzE5Mi5jCj4gQEAgLTgxMCwxMSArODEwLDIzIEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgc3BpX2RldmljZV9pZCBhZDcxOTJfaWRbXSA9IHsKPiAgCXsiYWQ3MTk1Iiwg
SURfQUQ3MTk1fSwKPiAgCXt9Cj4gIH07Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZCBhZDcxOTJfb2Zfc3BpX21hdGNoW10gPSB7Cj4gKwl7IC5jb21wYXRpYmxlID0gImFk
aSxhZDcxOTAiIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gImFkaSxhZDcxOTIiIH0sCj4gKwl7IC5j
b21wYXRpYmxlID0gImFkaSxhZDcxOTMiIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gImFkaSxhZDcx
OTUiIH0sCj4gKwl7fQo+ICt9Owo+ICsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgYWQ3MTky
X29mX3NwaV9tYXRjaCk7Cj4gKwpQbGVhc2Uga2VlcCB0aGUgZGVjbGFyYXRpb24gb2YgdGhlIHRh
YmxlIGFsb25nc2lkZSB0aGUgcmVsZXZhbnQKTU9EVUxFX0RFVklDRV9UQUJMRS4KCkluIHNob3J0
LCBiZXR0ZXIgdG8gaGF2ZSB5b3VyIGFkZGl0aW9ucyBhZnRlciB0aGlzIG5leHQgbGluZS4KPiAg
TU9EVUxFX0RFVklDRV9UQUJMRShzcGksIGFkNzE5Ml9pZCk7Cj4gIAo+ICBzdGF0aWMgc3RydWN0
IHNwaV9kcml2ZXIgYWQ3MTkyX2RyaXZlciA9IHsKPiAgCS5kcml2ZXIgPSB7Cj4gIAkJLm5hbWUJ
PSAiYWQ3MTkyIiwKPiArCQkub2ZfbWF0Y2hfdGFibGUgPSBhZDcxOTJfb2Zfc3BpX21hdGNoLAo+
ICAJfSwKPiAgCS5wcm9iZQkJPSBhZDcxOTJfcHJvYmUsCj4gIAkucmVtb3ZlCQk9IGFkNzE5Ml9y
ZW1vdmUsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
