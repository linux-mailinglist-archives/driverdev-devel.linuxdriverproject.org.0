Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A94E41EC6A
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 13:42:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BCE361466;
	Fri,  1 Oct 2021 11:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kg6twVj0aTOU; Fri,  1 Oct 2021 11:42:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F35F6060F;
	Fri,  1 Oct 2021 11:42:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E519F1BF5A7
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTP id D30A34040B
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id tLof5NGX09IA for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 11:42:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp2.osuosl.org (Postfix) with UTF8SMTPS id 7493940218
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 11:42:05 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633088530; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=dIrdlju3fVWX1YgwfatLNksAWCETMoXVhNoE8IO4bXc=;
 b=pQgtAlTPz0CeDLIfv9UdcdUD+YY3Mh9OCkaM8UncE6TBrBlpdQ+OwC2RmwgAbVo3g4UG8kyt
 PHzOszT6yr8CwX9NrjIvKGgcQPUSb8JVieDwAHMnkRPM7NL0c5/gR9ALKgbEE7hT9o8AfS8G
 VWjn9+3qLUmn5fDWOCUXyXBvBio=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 6156f40afc6e34f8cdb52c63 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 11:42:02
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E756BC43616; Fri,  1 Oct 2021 11:42:01 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A33EDC4338F;
 Fri,  1 Oct 2021 11:41:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org A33EDC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 12/24] wfx: add hif_api_*.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-13-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 14:41:55 +0300
In-Reply-To: <20210920161136.2398632-13-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:24 +0200")
Message-ID: <875yuhkm4c.fsf@codeaurora.org>
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
c2lsYWJzL3dmeC9oaWZfYXBpX2NtZC5oCj4gQEAgLTAsMCArMSw1NTUgQEAKPiArLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEFwYWNoZS0yLjAgKi8KCkkgZG9uJ3QgaG93IEkgbWlzc2VkIHRo
aXMgZWFybGllcjoKCmhpZl9hcGlfY21kLmg6LyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEFw
YWNoZS0yLjAgKi8KaGlmX2FwaV9nZW5lcmFsLmg6LyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEFwYWNoZS0yLjAgKi8KaGlmX2FwaV9taWIuaDovKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
QXBhY2hlLTIuMCAqLwoKQXBhY2hlLTIuMCBsaWNlbnNlIGlzIGEgYmxvY2tlciBmb3IgbWUsIHNl
ZSBMSUNFTlNFUy9kdWFsL0FwYWNoZS0yLjAuCgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2ku
a2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
