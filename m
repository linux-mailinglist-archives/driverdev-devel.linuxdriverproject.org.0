Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3316985D81A
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Feb 2024 13:44:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D973D606C8;
	Wed, 21 Feb 2024 12:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxT-R7GR3qoJ; Wed, 21 Feb 2024 12:44:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E49A60E47
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E49A60E47;
	Wed, 21 Feb 2024 12:44:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 272521BF8B4;
 Wed, 21 Feb 2024 12:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 146824173B;
 Wed, 21 Feb 2024 12:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aeDVaPSGH8fu; Wed, 21 Feb 2024 12:44:27 +0000 (UTC)
X-Greylist: delayed 1115 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 21 Feb 2024 12:44:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 774A441732
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 774A441732
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.249.118.119;
 helo=server.gdci.com.sa; envelope-from=sharon5051@gdci.com.sa;
 receiver=<UNKNOWN> 
Received: from server.gdci.com.sa (server.gdci.com.sa [192.249.118.119])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 774A441732;
 Wed, 21 Feb 2024 12:44:27 +0000 (UTC)
Received: from [::1] (port=40534 helo=server.gdci.com.sa)
 by server.gdci.com.sa with esmtpa (Exim 4.96.2)
 (envelope-from <sharon5051@gdci.com.sa>) id 1rclfA-00Aiw7-1R;
 Wed, 21 Feb 2024 04:25:23 -0800
MIME-Version: 1.0
Date: Wed, 21 Feb 2024 04:25:18 -0800
From: sharon5051@gdci.com.sa
To: undisclosed-recipients:;
Subject: Re: Reminder
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <6d5ec674dc913bece72593f6b761ccf1@gdci.com.sa>
X-Sender: sharon5051@gdci.com.sa
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.gdci.com.sa
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - gdci.com.sa
X-Get-Message-Sender-Via: server.gdci.com.sa: authenticated_id:
 sharon5051@gdci.com.sa
X-Authenticated-Sender: server.gdci.com.sa: sharon5051@gdci.com.sa
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=gdci.com.sa
 ; s=default; h=Content-Transfer-Encoding:Content-Type:Message-ID:Subject:To:
 From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pe5npcwHW+ufZS27JRpd2ghpXGM4Tn/VCEs0saVCqMo=; b=YFonN9Z9Kyp5YEdoaP/0cND1MF
 51fjHQDgrvtuP6KXWOSHnEMw0AUvcFqPMuSACqmNSufMTMD1GWJrnuzuyIQrHoMGHlIXUIrjz2eR6
 DjhZOhYxzr2EaidOfqvMR3thxV+Ct1TNTXRx68axByygdGY7SZ+rpGTrW7FVEJ792b3hCJGQSxFeP
 1m3j6+Tt5frOuLBsTcj/B/QfQGPhXcr0qpRx93GxuxkxBsazteBMMAvOJk8jeRKHqBghLPzd4V3Gl
 8/qe2nLZEox7x7ZHbVazq/ow/kACSaxZmmATXOnh9OOK8QDiWIBGlidVG8mABkUt1aEbv8LXeSNR+
 ZmzSxp8A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=gdci.com.sa
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gdci.com.sa header.i=@gdci.com.sa
 header.a=rsa-sha256 header.s=default header.b=YFonN9Z9
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

Greetings

I represent Gulf Region Base Investment loan Company, we are currently  
expanding our Loan Funding portfolio outside of the gulf Region, in the 
following sectors, Oil/Gas, construction, Real Estate, Stock Speculation 
and Mining, Transportation, Health Sector and Tobacco, Communication 
Services, Agriculture Forestry & Fishing, thus any sector, mainly 
interested in debt finance {pure loan}.

Let me know your position on this briefing as soon as possible for more 
details, write me on my private email(sushilkedia754@gmail.com)

Regards,
Mr. Sushil Kedia
Investment accredited broker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
