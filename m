Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A9B2E0C69
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 16:08:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 92D90872D3;
	Tue, 22 Dec 2020 15:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LXk1Ye7fUD41; Tue, 22 Dec 2020 15:08:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8525872C8;
	Tue, 22 Dec 2020 15:08:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 059F41BF370
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0207A87277
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:08:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ppj5YLrHRuyb for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 15:08:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from so254-31.mailgun.net (so254-31.mailgun.net [198.61.254.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB3D58729A
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 15:08:03 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1608649683; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=ZlCng/8clulWrjBwm8L11jZK1Evn1oWxnBMS0ZVA4DU=;
 b=gz/W9ri5B+c+lfIkD3InUH/ycsecMPiBrrM3L46OO6KHUH5t/nMehrPW8wJQgMwNIbDc9uJj
 G4cXrI8HsuwqMoAT+NhFj5BnWov9d29lpmsfknKgTnkwaYfD6i+/mZu8IeuakexZICPR6ooc
 qQwOxTWANTvhmlAQIAYMG37pES0=
X-Mailgun-Sending-Ip: 198.61.254.31
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5fe20bd2120d248bb52a0167 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 22 Dec 2020 15:08:02
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 90772C433CA; Tue, 22 Dec 2020 15:08:01 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 587E1C433C6;
 Tue, 22 Dec 2020 15:07:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 587E1C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v3 05/24] wfx: add main.c/main.h
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-6-Jerome.Pouiller@silabs.com>
Date: Tue, 22 Dec 2020 17:07:56 +0200
In-Reply-To: <20201104155207.128076-6-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Wed, 4 Nov 2020 16:51:48 +0100")
Message-ID: <87pn3198vn.fsf@codeaurora.org>
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
b20+CgpbLi4uXQoKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpZWVlODAyMTFfc3VwcG9ydGVkX2Jh
bmQgd2Z4X2JhbmRfMmdoeiA9IHsKPiArCS5jaGFubmVscyA9IHdmeF8yZ2h6X2NoYW50YWJsZSwK
PiArCS5uX2NoYW5uZWxzID0gQVJSQVlfU0laRSh3ZnhfMmdoel9jaGFudGFibGUpLAo+ICsJLmJp
dHJhdGVzID0gd2Z4X3JhdGVzLAo+ICsJLm5fYml0cmF0ZXMgPSBBUlJBWV9TSVpFKHdmeF9yYXRl
cyksCj4gKwkuaHRfY2FwID0gewo+ICsJCS8vIFJlY2VpdmUgY2FwcwoKVGhpcyBkcml2ZXIgaXMg
ZnVsbCBvZiBDKysgY29tbWVudHMsIHBsZWFzZSBjb252ZXJ0IHRoZW0gdG8gbmV0d29yawpzdHls
ZSBjb21tZW50cy4gTW9yZSBpbmZvIGluIHRoZSBjb2Rpbmcgc3R5bGUgZG9jLgoKLS0gCmh0dHBz
Oi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoKaHR0
cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9u
L3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
