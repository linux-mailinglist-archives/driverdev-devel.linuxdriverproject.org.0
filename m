Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C83941E969
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 11:07:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B77B614B9;
	Fri,  1 Oct 2021 09:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OxGqtIYsuvuX; Fri,  1 Oct 2021 09:06:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8E326149F;
	Fri,  1 Oct 2021 09:06:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 007D61BF473
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 09:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id EFC3F40641
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 09:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id 7I6toXR-brvv for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 09:06:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id 0A1AF40511
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 09:06:46 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633079207; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=6bQDWcDi7avoxUXWzlznZhXymgDiWCWV7nuIi3PdecU=;
 b=wW1osLwQpMTZC35tKpWVBjmtrSruyxUUOaeVYmnfy0NoX2ZJdnzO+rG8RoyJfuNsBCvBY/eF
 wJaknFAKJe8oBtbU79zRBH2nJt3JK8Bg0orVJ9gVO4t2EBx6z7u/8Hk52705dMnfGODk5ZHV
 rRcJI8xZ+tZ13IUep7SLmmwrx9Q=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 6156cfa6605ecf100b1de3bf (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 09:06:46
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 88543C43619; Fri,  1 Oct 2021 09:06:46 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 32F95C4338F;
 Fri,  1 Oct 2021 09:06:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 32F95C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 03/24] wfx: add Makefile/Kconfig
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-4-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 12:06:40 +0300
In-Reply-To: <20210920161136.2398632-4-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:15 +0200")
Message-ID: <8735plm7vj.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
b20+CgpbLi4uXQoKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mv
c2lsYWJzL3dmeC9NYWtlZmlsZQo+IEBAIC0wLDAgKzEsMjYgQEAKPiArIyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMAoKQWxsIG90aGVyIGZpbGVzIHVzZSBHUEwtMi4wLW9ubHk6Cgpi
aC5jOi8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKYmguaDovKiBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCmJ1cy5oOi8qIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KYnVzX3NkaW8uYzovLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CmJ1c19zcGkuYzovLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vbmx5CmRhdGFfcnguYzovLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMC1vbmx5CgpJIGRvbid0IHJlbWVtYmVyIHdoYXQncyB0aGUgZGlmZmVyZW5jZSwgaWYg
YW55LCBidXQgaGF2aW5nIGNvbnNpc3RlbnQKU1BEWCB0YWdzIHdvdWxkIGJlIG5pY2UuCgotLSAK
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3Qv
CgpodHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50
YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
