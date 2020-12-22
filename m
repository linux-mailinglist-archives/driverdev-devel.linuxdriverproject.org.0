Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 622B82E0C58
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 16:05:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C0B5860FE;
	Tue, 22 Dec 2020 15:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQSXujSfuy9F; Tue, 22 Dec 2020 15:05:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 204B48615E;
	Tue, 22 Dec 2020 15:05:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 186E21BF370
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0B48787290
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RRd4WuXni9VG for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 15:05:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m43-15.mailgun.net (m43-15.mailgun.net [69.72.43.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 00E8E87271
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 15:05:48 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1608649548; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=nBdti4p145SybWnCMKjk232I8BcskhOJcfGH3EeiP68=;
 b=ubKs81oUUUAxIq+R8TMmvz11KLpdfgQV4Wt5nk+1/RMFiL4OKqpN9vRSTMq4WbqO99F285qs
 WeOb1UI0wy2beGkw65TgyJFG7a1Heq7lyClw6xCBgRhOmi8/CPa+PkROA/VfS+hs6ltnFrE6
 cmkhlD6cexZOOndYHtyQmdpKbbg=
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n09.prod.us-east-1.postgun.com with SMTP id
 5fe20b4be61d77c971a7d1d4 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 22 Dec 2020 15:05:47
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 27216C43462; Tue, 22 Dec 2020 15:05:47 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 94631C433C6;
 Tue, 22 Dec 2020 15:05:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 94631C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v3 03/24] wfx: add Makefile/Kconfig
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-4-Jerome.Pouiller@silabs.com>
Date: Tue, 22 Dec 2020 17:05:41 +0200
In-Reply-To: <20201104155207.128076-4-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Wed, 4 Nov 2020 16:51:46 +0100")
Message-ID: <87tusd98ze.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgoKPiBG
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBT
aWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvS2NvbmZpZyAgfCAg
OCArKysrKysrKwo+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L01ha2VmaWxlIHwg
MjUgKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0
aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJz
L3dmeC9LY29uZmlnCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9z
aWxhYnMvd2Z4L01ha2VmaWxlCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mv
c2lsYWJzL3dmeC9LY29uZmlnCj4gYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L0tj
b25maWcKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uODNlZTRk
MGNhOGM2Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFi
cy93ZngvS2NvbmZpZwo+IEBAIC0wLDAgKzEsOCBAQAo+ICtjb25maWcgV0ZYCj4gKwl0cmlzdGF0
ZSAiU2lsaWNvbiBMYWJzIHdpcmVsZXNzIGNoaXBzIFdGMjAwIGFuZCBmdXJ0aGVyIgo+ICsJZGVw
ZW5kcyBvbiBNQUM4MDIxMQo+ICsJZGVwZW5kcyBvbiBNTUMgfHwgIU1NQyAjIGRvIG5vdCBhbGxv
dyBXRlg9eSBpZiBNTUM9bQo+ICsJZGVwZW5kcyBvbiAoU1BJIHx8IE1NQykKPiArCWhlbHAKPiAr
CSAgVGhpcyBpcyBhIGRyaXZlciBmb3IgU2lsaWNvbnMgTGFicyBXRnh4eCBzZXJpZXMgKFdGMjAw
IGFuZCBmdXJ0aGVyKQo+ICsJICBjaGlwc2V0cy4gVGhpcyBjaGlwIGNhbiBiZSBmb3VuZCBvbiBT
UEkgb3IgU0RJTyBidXNlcy4KCktjb25maWcgc2hvdWxkIG1lbnRpb24gYWJvdXQgdGhlIFNESU8g
aWQgc25hZnUgYW5kIHRoYXQgRGV2aWNlIFRyZWUgaXMKcmVxdWlyZWQuCgotLSAKaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczov
L3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3Vi
bWl0dGluZ3BhdGNoZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
