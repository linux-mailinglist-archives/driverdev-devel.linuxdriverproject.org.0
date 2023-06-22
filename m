Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F68C739466
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Jun 2023 03:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7B9F61431;
	Thu, 22 Jun 2023 01:22:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7B9F61431
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t-fXwFecsjw6; Thu, 22 Jun 2023 01:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB44C608A6;
	Thu, 22 Jun 2023 01:22:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB44C608A6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D1DD1BF47D
 for <devel@linuxdriverproject.org>; Thu, 22 Jun 2023 01:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16A05403A2
 for <devel@linuxdriverproject.org>; Thu, 22 Jun 2023 01:22:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16A05403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Is8AEx2pXK9M for <devel@linuxdriverproject.org>;
 Thu, 22 Jun 2023 01:22:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4354E40377
Received: from hosted-4-client-dedicated-live-server.livegpstrack.com
 (hosted-4-client-dedicated-live-server.livegpstrack.com [103.102.239.59])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4354E40377
 for <devel@linuxdriverproject.org>; Thu, 22 Jun 2023 01:22:40 +0000 (UTC)
From: =?ISO-8859-1?B?Q2FyVHJhY2sgR1BT?=<noreply@livegpstrack.com>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?T2ZmaWNpYWwgRGVhbGVyIGZvciBDYXJUcmFjaw==?=
Date: 21 Jun 2023 22:22:52 -0300
Message-ID: <20230621222251.9BF4F50C1ABAE0B9@livegpstrack.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 b=JNufr4dna8PjqzMk+okqPZD3pHNHuCz5l/uhpE33BDAdTO9mkgAxPTRd2NhkUWFTRsgu42lVNPzm
 QkuE6I6R5yYBwTBBtl+hi8CluUTUQFOIob99FMWYH7f6FQy3ZWmnVQcH4fIITewfkQO17mV0TVN4
 FHqYCy3yyrnOMpEO4bg=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=noreply@livegpstrack.com; 
 bh=6HRFUFNucM46HkiaE2BNILQu8ws=;
 b=p1jfAquD5uoWyy1FU5Odr0qBIvCvuMk55X4o+4m0M4ppMEWl53WHRtFedHMdJ0rEc0bbTqIJsrfY
 q8973dMXsjohtB/0uvYS5MZVorhmHrwdh3/eNs7ZzHbY7o7wSkh1VyB4+2Tot3v7VUMRJHcLjNOw
 vZruf91LdYMNcF2mQ1o=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=livegpstrack.com
 header.i=noreply@livegpstrack.com header.a=rsa-sha1
 header.s=1665719670.livegpstrack header.b=p1jfAquD
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
ID: 871197

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
