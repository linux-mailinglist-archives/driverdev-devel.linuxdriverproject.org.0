Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0073226BF
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 13:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF92085B78;
	Sun, 19 May 2019 11:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AwHKD8SjPMsj; Sun, 19 May 2019 11:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4ACBD8513B;
	Sun, 19 May 2019 11:19:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 827BD1BF616
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F4488522B
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mmT5cChs5a2e for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 11:19:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8DDD8513B
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 11:19:40 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE7D8217D9;
 Sun, 19 May 2019 11:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558264780;
 bh=IU3z1lGeIXgWy+wPKVyg2cUICOUubab/isnFfeXG9XU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xkV07FOOaPmLt2IaWxZVVagvoCZ0zikunT4WzmMbDo9xzy15VXmHCEXzvGGdumDlz
 vOMofUuC1QLHUW6W7N16CmDsGOH1H3tDlcbEGmJwD36d5D8gJevDWm/yvZ6/hfGkvB
 9XoYoIAChIwFyKeIn97QB35zD1xgBY0jZ3zZnI7M=
Date: Sun, 19 May 2019 12:19:35 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: =?UTF-8?B?Sm/Do28=?= Seckler <joaoseckler@gmail.com>
Subject: Re: [PATCH] staging: iio: ad9832: Add device tree support
Message-ID: <20190519121935.341fd173@archlinux>
In-Reply-To: <20190518204825.4kh5qkqo2e5q2se6@smtp.gmail.com>
References: <20190518204825.4kh5qkqo2e5q2se6@smtp.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCAxOCBNYXkgMjAxOSAxNzo0ODoyNSAtMDMwMApKb8OjbyBTZWNrbGVyIDxqb2Fvc2Vj
a2xlckBnbWFpbC5jb20+IHdyb3RlOgoKPiBBZGQgYSBvZl9kZXZpY2VfaWQgc3RydWN0IHZhcmlh
YmxlIGFuZCBzdWJzZXF1ZW50IGNhbGwgdG8KPiBNT0RVTEVfREVWSUNFX1RBQkxFIG1hY3JvIHRv
IHN1cHBvcnQgZGV2aWNlIHRyZWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm/Do28gU2Vja2xlciA8
am9hb3NlY2tsZXJAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFuZGVyc29uIFJlaXMgPGFu
ZGVyc29ucmVpc3Jvc2FAZ21haWwuY29tPgo+IENvLWRldmVsb3BlZC1ieTogQW5kZXJzb24gUmVp
cyAgPGFuZGVyc29ucmVpc3Jvc2FAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlIFRh
ZGV1IGRlIENhcnZhbGhvIDxhbmRyZS50YWRldS5kZS5jYXJ2YWxob0BnbWFpbC5jb20+Cj4gQ28t
ZGV2ZWxvcGVkLWJ5OiBBbmRyZSBUYWRldSBkZSBDYXJ2YWxobyA8YW5kcmUudGFkZXUuZGUuY2Fy
dmFsaG9AZ21haWwuY29tPgpIaSBBbGwsCgpNaXNzaW5nIHRoZSBzZXR0aW5nIG9mIHRoZSByZWxl
dmFudCBlbnRyeSBpbiB0aGUgc3BpX2RyaXZlciBzdHJ1Y3R1cmUuCk90aGVyd2lzZSBsb29rcyBm
aW5lLAoKVGhhbmtzLAoKSm9uYXRoYW4KPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL2lpby9mcmVx
dWVuY3kvYWQ5ODMyLmMgfCA3ICsrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2ZyZXF1ZW5jeS9hZDk4
MzIuYyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vZnJlcXVlbmN5L2FkOTgzMi5jCj4gaW5kZXggNzQz
MDhhMmU3MmRiLi41MWU5N2M3NGM2YjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2lp
by9mcmVxdWVuY3kvYWQ5ODMyLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvaWlvL2ZyZXF1ZW5j
eS9hZDk4MzIuYwo+IEBAIC00NTEsNiArNDUxLDEzIEBAIHN0YXRpYyBpbnQgYWQ5ODMyX3JlbW92
ZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFkOTgzMl9vZl9tYXRjaFtdID0gewo+ICsJeyAu
Y29tcGF0aWJsZSA9ICJhZGksYWQ5ODMyIiwgfSwKPiArCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFk
OTgzNSIsIH0sCj4gKwl7IC8qIHNlbnRpbmVsICovIH0sCj4gK307Cj4gK01PRFVMRV9ERVZJQ0Vf
VEFCTEUob2YsIGFkOTgzMl9vZl9tYXRjaCk7Cj4gKwo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHNw
aV9kZXZpY2VfaWQgYWQ5ODMyX2lkW10gPSB7Cj4gIAl7ImFkOTgzMiIsIDB9LAo+ICAJeyJhZDk4
MzUiLCAwfSwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
