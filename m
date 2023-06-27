Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D0D73F666
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Jun 2023 10:04:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A88782138;
	Tue, 27 Jun 2023 08:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A88782138
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zE-mxN2DIWo9; Tue, 27 Jun 2023 08:04:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BDBA81336;
	Tue, 27 Jun 2023 08:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BDBA81336
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 849E01BF2B8
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 08:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A8CC60797
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 08:04:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A8CC60797
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3YVJUbm_5yom for <devel@linuxdriverproject.org>;
 Tue, 27 Jun 2023 08:04:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F6C16076C
Received: from hosted-4-client-dedicated-live-server2.livegpstrack.com
 (hosted-4-client-dedicated-live-server2.livegpstrack.com [103.102.239.60])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F6C16076C
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 08:04:18 +0000 (UTC)
From: =?ISO-8859-1?B?Q2FyVHJhY2sgR1BT?=<noreply@livegpstrack.com>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?T2ZmaWNpYWwgRGVhbGVyIGZvciBDYXJUcmFjaw==?=
Date: 27 Jun 2023 05:05:00 -0300
Message-ID: <20230627050500.B0C48468281F5C46@livegpstrack.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 b=gSRekP9zVcEqKDmGCbSoDwIHQzihsMCfLB94tQHRvBYHVlB4G+6YZbQBNFKzTEsOc01OAWWpFwgH
 zsjwNAC/ycVWxyMTg6CO7eOhUs5aK7iqhf3XIeMTeIx3wgvqjEg+5Pfgc0W5SpBhPWw5XS/PFozG
 /ywLvZY9S81o0DVfEfI=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=noreply@livegpstrack.com; 
 bh=u0Q2yr7MNpmdxWhOKgt5zAaU+Dc=;
 b=OTyU98Zwv2/CZGiufRS6RO6Qv1oB/iQmSauO0co+6QU7gx08ciSl15KdNK0YLeazwFPVg7GvpSWq
 0FqU+0B+eokXYaHBoRqGOLZasFB2OWoOvJTlmkPj5LAJ9/NTexHqkB/N4lT94OoSFLgLtB4n0670
 1OJZiRevWe5+UMPsszQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=livegpstrack.com
 header.i=noreply@livegpstrack.com header.a=rsa-sha1
 header.s=1665719670.livegpstrack header.b=OTyU98Zw
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
ID: 213281

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
