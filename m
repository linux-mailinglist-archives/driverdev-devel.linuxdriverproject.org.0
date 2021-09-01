Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 799703FE51C
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Sep 2021 23:59:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96B2980E32;
	Wed,  1 Sep 2021 21:59:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VZhkty5sgSP9; Wed,  1 Sep 2021 21:59:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A550F80C5A;
	Wed,  1 Sep 2021 21:59:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32CCB1BF255
 for <devel@linuxdriverproject.org>; Wed,  1 Sep 2021 21:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 233E080C37
 for <devel@linuxdriverproject.org>; Wed,  1 Sep 2021 21:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G5ESxXggu2uz for <devel@linuxdriverproject.org>;
 Wed,  1 Sep 2021 21:59:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from cloud.burjgold.com (unknown [204.93.174.125])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F146280C2B
 for <devel@driverdev.osuosl.org>; Wed,  1 Sep 2021 21:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crms.predire.in; s=default; h=Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Message-ID:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s1xjoh78wTqUinsXA8MK0j3vC2wV0Rc5RO2dRfFycAc=; b=Zyiu4F6x5/gFlzWbp9BnkRpMw
 5Rb3SPE9L8ifoxGNkQuAB0FS9V/PYnZpH+vfhLL/B91nzSOVf3fQOCrwjOSfjqVLY3QX2kFwL5AxD
 6XYQYOPaK9C88SMyzqI14FCXeljmwF0ee+3SBO2A3QXhIdl+Ym4EiTJf17Ih1GFlRngHVEBQrC6m2
 4qsD/u266tCBivNGzcGOhE3yWCx8AwpFJ5aKDwT+gVsohTQQxIWnU3fogMRMsm9R8H+QVkN9iWalN
 6qVaH3FO52htLHNYiWv0osUQP2OasrtYT0EU4Kp4vVZEVOeqGswxVhNFNbBhvYVTpzvpBpF/+1Jxg
 pYlGRSHOQ==;
Received: from [77.234.40.132] (port=52040 helo=[100.120.94.239])
 by cloud.wealtharchitects.club with esmtpsa (TLS1) tls
 TLS_DHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <infops@crms.predire.in>)
 id 1mLOdG-00006l-Ak; Wed, 01 Sep 2021 07:42:18 -0400
MIME-Version: 1.0
Content-Description: Mail message body
Subject: I have a donation for you!!
To: Recipients <infops@crms.predire.in>
From: "Mrs. Lerynne West"<infops@crms.predire.in>
Date: Wed, 01 Sep 2021 13:42:02 +0200
X-Antivirus: Avast (VPS 210901-0, 9/1/2021), Outbound message
X-Antivirus-Status: Clean
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cloud.wealtharchitects.club
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crms.predire.in
X-Get-Message-Sender-Via: cloud.wealtharchitects.club: authenticated_id:
 smtpfox-72qav@crms.predire.in
X-Authenticated-Sender: cloud.wealtharchitects.club: smtpfox-72qav@crms.predire.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Message-Id: <20210901215916.233E080C37@smtp1.osuosl.org>
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
Reply-To: lynnewes67@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8sCgpZb3UgaGF2ZSBjaG9zZW4gYnkgTXJzLiBMZXJ5bm5lIFdlc3QgZm9yIGEgZG9uYXRp
b24gZnVuZHMgb2Yg4oKsNyw4MDAsMDAwLjAwIGV1cm8sIFJlcGx5IGZvciBtb3JlIGRldGFpbHMu
CgotLSAKVGhpcyBlbWFpbCBoYXMgYmVlbiBjaGVja2VkIGZvciB2aXJ1c2VzIGJ5IEF2YXN0IGFu
dGl2aXJ1cyBzb2Z0d2FyZS4KaHR0cHM6Ly93d3cuYXZhc3QuY29tL2FudGl2aXJ1cwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
