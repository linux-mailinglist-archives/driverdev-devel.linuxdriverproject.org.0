Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B98BA423305
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 23:47:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAA2983EC9;
	Tue,  5 Oct 2021 21:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 04fit6jaNDju; Tue,  5 Oct 2021 21:47:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3B9C83E47;
	Tue,  5 Oct 2021 21:47:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A636A1BF32B
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 21:47:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A25AB60D6F
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 21:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=cartrackgps.net
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xqgj3OMAcX2e for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 21:47:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from cpvds521.sideink.com (cpvds521.sideink.com [209.95.54.60])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D86360D6D
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 21:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cartrackgps.net; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TjGQKY8SJ03oNEwHxMV2cWqdrlQ3D9JDSnAtOxH7owA=; b=Hgygtrb0HTLpRMi1bpS8jSYiI2
 droB8WdM+MKvAa6bXIEgBv1RWPi8TWm8XyikUjfVzCjuYGaPKKtaf0JPVd9Ktb2m+R6TfdyZxJDUa
 otYHF3/23Dh2Qqy4TpHWuygsuRqUZFzbX68hMtob8ig7NiovLfETho6omLr2F4zbVs+p9Qe+WfBwo
 r0WRa0wbjH3gFrqVChrBytypwF3q1RI9WePgmtriNrbWf06q6jtfG+M18klftFBAbSCp4r/7eS0YY
 nvF1OQ3nEJ6NHOyireGKPzWceWR33XKNc+vekC7ercxK1/IrEwKAsWwKUB1yrFG5kgAbm3b2/UNaB
 I6BozFxw==;
Received: from r167-61-19-90.dialup.adsl.anteldata.net.uy
 ([167.61.19.90]:57568 helo=cartrackgps.net)
 by cpvds521.sideink.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.94.2)
 (envelope-from <salesctg@cartrackgps.net>) id 1mXsHQ-0003nk-O3
 for devel@linuxdriverproject.org; Tue, 05 Oct 2021 23:47:21 +0200
From: =?ISO-8859-1?B?UGFibG8=?=<salesctg@cartrackgps.net>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?RGlzdHJpYnV0b3IgZm9yIGRldmVs?=
Date: 05 Oct 2021 18:48:05 -0300
Message-ID: <20211005184804.01F804540741DA64@cartrackgps.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpvds521.sideink.com
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cartrackgps.net
X-Get-Message-Sender-Via: cpvds521.sideink.com: authenticated_id:
 infoctg@cartrackgps.net
X-Authenticated-Sender: cpvds521.sideink.com: infoctg@cartrackgps.net
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
Reply-To: =?ISO-8859-1?B?UGFibG8=?= <salesctg@cartrackgps.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

I trust you're doing fine. My name is Pablo from Car Track GPS and we're looking for distributors for our tracking products.
We design innovative software and hardware location technologies.

Our innovative web based software allows owners to track fleets in realtime by iOS or Android Apps.
If a vehicle is stolen you can stop the engine and recover it.

With our Professional Kit you can start your own tracking business or just resell the software and hardware.

Our products are ideal for fleet tracking and recovery of stolen vehicles. Insurance companies, trucking companies and car dealers have been our clients for over 20 years.
This could be a good choice If you want to start a new business or diversify your investment.

The business consists in offering location services to end customers through a web site.
This is accomplished through a Web platform that we provide as a turnkey server installed at your end.

This service will allow customers to track their fleets from any web browser - even from Tablets and Smartphones - with a username and password.
We have Professional Kits available which include full Software licenses, so once you get the KIT and start testing you will not need to invest again in the Software or have to pay any monthly fee.

If you're interested I can send you the proposal for your consideration.

Best regards,
Pablo Zacheo
CEO Car Track GPS
Miami: +1 786 352 8766
=> Search "Car Track GPS" in Google for our official  website

We have clients in over 100 countries and 20 years of experience in GPS tracking systems.
ID: 59713

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
