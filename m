Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE3477662D
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Aug 2023 19:12:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6DDE60FD8;
	Wed,  9 Aug 2023 17:12:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6DDE60FD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2t2Y-N8FdXvI; Wed,  9 Aug 2023 17:12:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A28860746;
	Wed,  9 Aug 2023 17:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A28860746
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A6821BF3B9
 for <devel@linuxdriverproject.org>; Wed,  9 Aug 2023 17:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E772418DB
 for <devel@linuxdriverproject.org>; Wed,  9 Aug 2023 17:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E772418DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SjkHPzP1tco0 for <devel@linuxdriverproject.org>;
 Wed,  9 Aug 2023 17:12:50 +0000 (UTC)
X-Greylist: delayed 982 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 09 Aug 2023 17:12:50 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B0C8418C9
Received: from hosted-4-client-dedicated-live-server4.livegpstrack.com
 (hosted-4-client-dedicated-live-server4.livegpstrack.com [103.102.239.62])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B0C8418C9
 for <devel@linuxdriverproject.org>; Wed,  9 Aug 2023 17:12:50 +0000 (UTC)
From: =?ISO-8859-1?B?Q2FyVHJhY2sgR1BT?=<noreply@livegpstrack.com>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?T2ZmaWNpYWwgRGVhbGVyIGZvciBDYXJUcmFjaw==?=
Date: 09 Aug 2023 13:56:20 -0300
Message-ID: <20230809135620.EE0ED0A3E9924F3F@livegpstrack.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 b=O62ctoihelIvriOfAaC4SdZau47a3TtlLl9lD0P2+2V1YGNF1m2DXVLDWg89SvY7Y0+Eauqsc8jj
 2dxAjIRRNZc+E/I64oM233jpa6JJ+4G673WwCj9ygZMP/m0iCM7VApQY2VPg1Jjy6YKUnmcJAk5o
 DQT5AL1WRCfQ5Jd2AF0=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=noreply@livegpstrack.com; 
 bh=lpQcGtBz8zXEnEvBg+M7ANQSfcg=;
 b=Ks01oygOR+JJOsmgWk2wZ2/TMXkXi11v5t2mUuqHo3c1xxe7bi88z/AUqJScYkZgfzY4NLhN6iiS
 70x2Mu5oZX7bJEvuWuq/A01dhFPBtgmyQZx1Q/fWya20SjwDWUhzDEJ/DUcBFLoDP6KNP2p23tM8
 FAfToWZOgBVvdBxqd2A=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=livegpstrack.com
 header.i=noreply@livegpstrack.com header.a=rsa-sha1
 header.s=1665719670.livegpstrack header.b=Ks01oygO
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
ID: 213230

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
