Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 287C930E7FC
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 00:56:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4CFE8639F;
	Wed,  3 Feb 2021 23:56:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uCfkOzAW4u9K; Wed,  3 Feb 2021 23:56:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F753860D5;
	Wed,  3 Feb 2021 23:56:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75A931BF578
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 23:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7001086BD3
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 23:56:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qHKGdKIqDRmy for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 23:56:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from 198-20-226-115.unifiedlayer.com (unknown [198.20.226.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D749486BC8
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 23:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=carnivalassure.com.bd; s=default; h=Content-Transfer-Encoding:Content-Type:
 Message-ID:Reply-To:Subject:To:From:Date:MIME-Version:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=miRpAdBSO5eDo01VDX+EK9bqGCmqMjXHS3kO16T6iWw=; b=rgk1ikauAU1hvTn54IcRsZV7jN
 7ew7UnoHYswDbiAn0BwsDPvi1y7NYnu6spVFzd7wuCzuSXaeHSKXCbOKsfovgDS9G8VDov60T9hnO
 az+ZrAdd9l4q7KVCSxwWKCfCVJbfHTSf42W46YnBkpxHquHw5LLqdFj5EdNb7huiQ1YCWmqOknYH9
 SyIGPObfTFO7iFaqVfyi8Xbiiafcx4hzvN/iZIY/q1CFEZM+hVR0h+YPMSL3k9qRCiHtO0Ucth7ip
 RJzG/T6UUDEki2hIinuZoSZa3/L4hnnytmaQT+A2HqKGkNS4nukEOez1R6NMYmAg56m6DyuuzrLgl
 lDuKQ5eg==;
Received: from [127.0.0.1] (port=45986 helo=dot.dotlines.com.sg)
 by dot.dotlines.com.sg with esmtpa (Exim 4.93)
 (envelope-from <noreply@carnivalassure.com.bd>)
 id 1l7CVc-0005Wr-DK; Wed, 03 Feb 2021 01:23:28 -0600
MIME-Version: 1.0
Date: Wed, 03 Feb 2021 01:23:26 -0600
From: Francois Pinault <noreply@carnivalassure.com.bd>
To: undisclosed-recipients:;
Subject: Hello/Hallo
Organization: Donation
Mail-Reply-To: francoispinault1936@outlook.com
Message-ID: <1a89ab2763fcfd9504c577b99b1b1baa@carnivalassure.com.bd>
X-Sender: noreply@carnivalassure.com.bd
User-Agent: Roundcube Webmail/1.3.15
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - dot.dotlines.com.sg
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - carnivalassure.com.bd
X-Get-Message-Sender-Via: dot.dotlines.com.sg: authenticated_id:
 noreply@carnivalassure.com.bd
X-Authenticated-Sender: dot.dotlines.com.sg: noreply@carnivalassure.com.bd
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Reply-To: francoispinault1936@outlook.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgotLSAKSGFsbG8sIGljaCBiaW4gSGVyciBGcmFuY29pcyBQaW5hdWx0LCBpY2ggaGFiZSBJaG5l
biBnZXNwZW5kZXQuIFNpZSAKa8O2bm5lbiBtZWluIFByb2ZpbCBhdWYgV2lraXBlZGlhLCBHb29n
bGUgb2RlciBGb3JiZXMgw7xiZXJwcsO8ZmVuLgoKRsO8ciBJaHJlbiBTcGVuZGVuYW5zcHJ1Y2gg
dW5kIHdlaXRlcmUgSW5mb3JtYXRpb25lbiBrb250YWt0aWVyZW4gU2llIAptaWNoIHVtZ2VoZW5k
IHVudGVyIGZyYW5jb2lzcGluYXVsdDE5MzZAb3V0bG9vay5jb20KCk1pdCBmcmV1bmRsaWNoZW4g
R3LDvMOfZW4sCkhlcnIgRnJhbmNvaXMgUGluYXVsdApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
