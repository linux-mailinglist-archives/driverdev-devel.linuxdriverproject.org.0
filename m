Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A83770D99
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Aug 2023 05:53:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E87B4403ED;
	Sat,  5 Aug 2023 03:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E87B4403ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g5U1AeUS7Puj; Sat,  5 Aug 2023 03:53:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 800A840624;
	Sat,  5 Aug 2023 03:53:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 800A840624
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74D4B1BF86B
 for <devel@linuxdriverproject.org>; Sat,  5 Aug 2023 03:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 283AC60FF2
 for <devel@linuxdriverproject.org>; Sat,  5 Aug 2023 03:52:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 283AC60FF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jrg4Yvu0wLmV for <devel@linuxdriverproject.org>;
 Sat,  5 Aug 2023 03:52:36 +0000 (UTC)
X-Greylist: delayed 359 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 05 Aug 2023 03:52:36 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A62960AC2
Received: from hosted-4-client-dedicated-live-server2.livegpstrack.com
 (hosted-4-client-dedicated-live-server2.livegpstrack.com [103.102.239.60])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A62960AC2
 for <devel@driverdev.osuosl.org>; Sat,  5 Aug 2023 03:52:36 +0000 (UTC)
From: =?ISO-8859-1?B?Q2FyVHJhY2sgR1BT?=<noreply@livegpstrack.com>
To: devel@driverdev.osuosl.org
Subject: =?ISO-8859-1?B?T2ZmaWNpYWwgRGVhbGVyIGZvciBDYXJUcmFjaw==?=
Date: 05 Aug 2023 00:46:31 -0300
Message-ID: <20230805004631.6E885AC8503903E2@livegpstrack.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 b=d9bBlmx7ppG82OLX94+sixgyuCiacfjeJpymrC2dsjTJQ4Hn+HtP9odJNFvvfInKOl8yz7xIHR2P
 /CmUiqFQTyY0Id2d32/LxVL0+u4VXgTcTY9UwiizkL8pJbWzRzBuDBe8Vg97dd27hxP4/oaBzajU
 g1BBsumSC4X3Wyr1Sbw=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=noreply@livegpstrack.com; 
 bh=fx+NgF/YQBgLYxRDYimRw2Ivbhc=;
 b=K1cxHhOMuXhArWmZVH8+5cSHB3HdSn+GFwsLKx+GBkftMGFYkb4xwTAd1uoXg8GNdOXfTffxMEJV
 +RT7y9VWjGJfH1sEBSHiWpTTqAHdf9G17VKtsHpEE12ThYMhGhHtMNDjCKv298BhP2t1RnHzgNiv
 wsoSETx8DnA0yEkVqoY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=livegpstrack.com
 header.i=noreply@livegpstrack.com header.a=rsa-sha1
 header.s=1665719670.livegpstrack header.b=K1cxHhOM
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
Reply-To: =?ISO-8859-1?B?Q2FyVHJhY2sgR1BT?= <salesgps@cartrackgps.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Looking for distributors

My name is Paul Novak from Car Track GPS and we're looking for distributors for our tracking products.
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
Paul Novak
Car Track GPS
Miami: +1 786 352 8766
cartrack gps .com

We have clients in over 100 countries and 20 years of experience in GPS tracking systems.
ID: 1241338

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
