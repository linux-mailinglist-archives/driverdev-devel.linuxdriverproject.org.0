Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 638AF35B6DE
	for <lists+driverdev-devel@lfdr.de>; Sun, 11 Apr 2021 22:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A82B36062E;
	Sun, 11 Apr 2021 20:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0pteOOPb3EkR; Sun, 11 Apr 2021 20:35:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49CCC605C6;
	Sun, 11 Apr 2021 20:35:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4255F1BF41B
 for <devel@linuxdriverproject.org>; Sun, 11 Apr 2021 20:35:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E02D605D4
 for <devel@linuxdriverproject.org>; Sun, 11 Apr 2021 20:35:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8NezCiw5PNRX for <devel@linuxdriverproject.org>;
 Sun, 11 Apr 2021 20:35:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from cpvds521.sideink.com (cpvds521.sideink.com [209.95.54.60])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E1C0605C6
 for <devel@linuxdriverproject.org>; Sun, 11 Apr 2021 20:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cartrackgps.net; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o+/W7q1WSm3lezguBs8Hubsh1heRHWnbhEWv9lUC9qg=; b=LMTeetdy3Rw0uRqMzYxIUWlbg+
 FkZ63ENAJBGJyviOWxbiUUwBOFkmE7PDFiiDBNpGNX5s16wu+6w0HcCwNLhWYz5yBY7SUF3OQAV2B
 l3yeGQwFmrIUVP3QcNCiNwQIDRzS1t8hViBcRPmQFsTB8eJ2pUjcNRcYwk7ryQ5yn9/1d5q5mW53Y
 YFgNQZf0aEpZTISmvqpQJYPfbpOkjIJlgiRLOb2XPvc1xsZYNnhZ07ncEkjmf+vfPLABlz33fKPdP
 W0Sbayw8EmImDGCUDLPAvnH8wN06FBRbhj5CmBX/5OSdi9aauK0I9noLiWcN2tq1gvLhgpR96IJXO
 MLTfS1XQ==;
Received: from r167-61-136-212.dialup.adsl.anteldata.net.uy
 ([167.61.136.212]:32886 helo=cartrackgps.net)
 by cpvds521.sideink.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.94)
 (envelope-from <salesctg@cartrackgps.net>) id 1lVgnb-00046k-UW
 for devel@linuxdriverproject.org; Sun, 11 Apr 2021 22:35:16 +0200
From: =?ISO-8859-1?B?U21hcnQgR1BT?=<salesctg@cartrackgps.net>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?RGlzdHJpYnV0b3IgZm9yIGRldmVs?=
Date: 11 Apr 2021 17:35:28 -0300
Message-ID: <20210411173528.C1B35D4D532F279A@cartrackgps.net>
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
Reply-To: =?ISO-8859-1?B?U21hcnQgR1BT?= <salesctg@cartrackgps.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello devel,

My name is Pablo and we're looking for distributors for our vehicle tracking products.
We design innovative GPS technologies and are looking for distributors in your country.

Our innovative web based software allows owners to track fleets in realtime by iOS or Android Apps. If a vehicle is stolen you can stop the engine and recover it.
With our professional kit you can start your own tracking business or just resell the software to others for up to fifty percent commission.

Our product is ideal  for fleet tracking and recovery of stolen vehicles. Insurance companies, trucking companies and car dealers have been our clients for over 20 years.
This could be a good choice If you want to start a new business or diversify your investment.

The business consists in offering location services to end customers through a web site. This is accomplished through a Web platform that we provide as a turnkey server installed at your end.

This service will allow customers to track their fleets from any web browser - even from Tablets and Smartphones - with a username and password.
We have Professional Kits available which include full Software licenses, so once you get the KIT and start testing you will not need to invest again in the Software or have to pay any monthly fee.

If you're interested I can send you the proposal for your consideration.

Best regards,
Car Track GPS
Phone: +1 786 352 8766

We have clients in over 100 countries and 20 years of experience in GPS tracking systems.

ID: 17419

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
