Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 733E42E0C55
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 16:04:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A0FA869F2;
	Tue, 22 Dec 2020 15:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GnqX0eGM4-GS; Tue, 22 Dec 2020 15:04:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2BC2C868CC;
	Tue, 22 Dec 2020 15:04:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A7BA51BF370
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A298B87277
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0X6jMj-VlHkO for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 15:04:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m43-15.mailgun.net (m43-15.mailgun.net [69.72.43.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B170E87271
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 15:04:43 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1608649483; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=vcMEeUoT3Z3kdKnMW2V1gjPTTxkC2TxawohiRxsx5k8=;
 b=ivI2e9/3pkWuKhqYf6ip7z+WH5juxVYyRcCTzIhbruwMlxFRlHrCLdE1KDONmFS3Qzl2xZ9P
 O4Vn73n9/J21r6FokEUX7OsrqWJL2XHhnVRy4U4N3t4Wt+Wd1a5pxXawEvFKe+5i53FyyDcJ
 mbVsCbo+S/8PfHJNN8Rxc8lLHbM=
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 5fe20b0b7036173f4f8285f1 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 22 Dec 2020 15:04:43
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 27A6EC433CA; Tue, 22 Dec 2020 15:04:42 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1A3F9C433CA;
 Tue, 22 Dec 2020 15:04:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1A3F9C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v3 01/24] mmc: sdio: add SDIO IDs for Silabs WF200 chip
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-2-Jerome.Pouiller@silabs.com>
Date: Tue, 22 Dec 2020 17:04:35 +0200
In-Reply-To: <20201104155207.128076-2-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Wed, 4 Nov 2020 16:51:44 +0100")
Message-ID: <87y2hp9918.fsf@codeaurora.org>
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
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBB
ZGQgU2lsYWJzIFNESU8gSUQgdG8gc2Rpb19pZHMuaC4KPgo+IE5vdGUgdGhhdCB0aGUgdmFsdWVz
IHVzZWQgYnkgU2lsYWJzIGFyZSB1bmNvbW1vbi4gQSBkcml2ZXIgY2Fubm90IGZ1bGx5Cj4gcmVs
eSBvbiB0aGUgU0RJTyBQblAuIEl0IHNob3VsZCBhbHNvIGNoZWNrIGlmIHRoZSBkZXZpY2UgaXMg
ZGVjbGFyZWQgaW4KPiB0aGUgRFQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxl
ciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4gLS0tCj4gIGluY2x1ZGUvbGludXgvbW1j
L3NkaW9faWRzLmggfCA1ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykK
Pgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oIGIvaW5jbHVkZS9s
aW51eC9tbWMvc2Rpb19pZHMuaAo+IGluZGV4IDEyMDM2NjE5MzQ2Yy4uMjBhNDgxNjJmN2ZjIDEw
MDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKPiArKysgYi9pbmNsdWRl
L2xpbnV4L21tYy9zZGlvX2lkcy5oCj4gQEAgLTI1LDYgKzI1LDExIEBACj4gICAqIFZlbmRvcnMg
YW5kIGRldmljZXMuICBTb3J0IGtleTogdmVuZG9yIGZpcnN0LCBkZXZpY2UgbmV4dC4KPiAgICov
Cj4gIAo+ICsvLyBTaWxhYnMgZG9lcyBub3QgdXNlIGEgcmVsaWFibGUgdmVuZG9yIElELiBUbyBh
dm9pZCBjb25mbGljdHMsIHRoZSBkcml2ZXIKPiArLy8gd29uJ3QgcHJvYmUgdGhlIGRldmljZSBp
ZiBpdCBpcyBub3QgYWxzbyBkZWNsYXJlZCBpbiB0aGUgRFQuCgpDKysgY29tbWVudHM/CgotLSAK
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3Qv
CgpodHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50
YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
