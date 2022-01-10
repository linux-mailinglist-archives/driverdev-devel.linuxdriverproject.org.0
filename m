Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F22148A3D1
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jan 2022 00:41:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3119460E65;
	Mon, 10 Jan 2022 23:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ab2gaLxqM3o4; Mon, 10 Jan 2022 23:41:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A69BE60D65;
	Mon, 10 Jan 2022 23:41:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6035B1BF21A
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 10 Jan 2022 23:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4892C409D3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 10 Jan 2022 23:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=doublejackmediaworks.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NoCf55JvdqtD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 10 Jan 2022 23:40:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from server.dyf.wja.mybluehostin.me (server.dyf.wja.mybluehostin.me
 [162.214.55.177])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A4FA409C6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 10 Jan 2022 23:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=doublejackmediaworks.com; s=default; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BgnyLwSYyPmBsHH5Ialx/iqAjBMONIC4lZoM51/3Ayw=; b=DBe+5SXQ1ZMydWfoWpt8U4KFJ8
 Wfy8ux84Za8LYZmUH/8kWnBqzutMKyNVWW582bmAFnxSV2LWx1Fa0lTPQKIEHcHsHnQgNht/U3ujE
 hpsNItU1S9AheBYFzPb6IvW81rmT3qJVXAEsJelDyExtco2n5NQGx5b+qUgm/aeNpFhEIAkqq6jkv
 +LOqDwBaEbw0Va3zV/csx947KXwVk92vJWLNI1/4XdLnv8Qhh0YRvyJep4Dbj56xcqjG6hx/X+mga
 023jKwh5+USxHekDRhvx44bOFxzBNmtjaFQ+zmkwFOPJEZwByqDwdF0yb2Esq1uZRrwHfd1gtyj/K
 HMb4QqsA==;
Received: from [46.183.221.108] (port=54308 helo=siskiyouartists.org)
 by server.dyf.wja.mybluehostin.me with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <smtpfox-pvnym@siskiyouartists.org>)
 id 1n6jZ9-0005fe-UR
 for driverdev-devel@linuxdriverproject.org; Sun, 09 Jan 2022 18:33:44 -0700
From: MB & ASSOCIADOS ABG<smtpfox-pvnym@siskiyouartists.org>
To: driverdev-devel@linuxdriverproject.org
Subject: COOPRATION/TRANSFER
Date: 10 Jan 2022 03:33:42 +0200
Message-ID: <20220110033341.B2A6B84BFA2EE05B@siskiyouartists.org>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.dyf.wja.mybluehostin.me
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - siskiyouartists.org
X-Get-Message-Sender-Via: server.dyf.wja.mybluehostin.me: authenticated_id:
 smtpfox-61wkh@doublejackmediaworks.com
X-Authenticated-Sender: server.dyf.wja.mybluehostin.me: smtpfox-61wkh@doublejackmediaworks.com
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
Reply-To: Mb.realabogados@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello, Peace be unto you!

I am pleased to introduce myself to you though it may surprise
you receiving this letter from me since there has been no
previous correspondence between us. Nevertheless, I am Barrister
Martin Barreno. an attorney at law / solicitor with MB &
Associates which is one of the reliable law firms here in Spain.
A client of mine died and he left behind the sum of 8,500,000.00
EURO, as the personal attorney to my late client, the bank has
asked me to provide them my client's next of kin whom they will
return the fund, I need your consent to present you to the bank
and they will transfer the 8,500,000 Euro to you.
Let me know if you are interested in my proposal for further
explanation and details. Please contact me through my private
Email: mb.realabogados@outlook.com

Thanks & Best regards,
MARTIN BARENO ESQ.
MB & ASSOCIADOS ABG
Email: mb.realabogados@outlook.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
