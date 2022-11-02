Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 358E1615B4D
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Nov 2022 05:11:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95E2C405C1;
	Wed,  2 Nov 2022 04:11:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95E2C405C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H4XGCwjI8AUn; Wed,  2 Nov 2022 04:11:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4DA3840643;
	Wed,  2 Nov 2022 04:11:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DA3840643
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2DF441BF35C
 for <devel@linuxdriverproject.org>; Wed,  2 Nov 2022 04:11:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A914410B7
 for <devel@linuxdriverproject.org>; Wed,  2 Nov 2022 04:11:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A914410B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JhQRvKINJ5yK for <devel@linuxdriverproject.org>;
 Wed,  2 Nov 2022 04:11:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FB29410A4
Received: from hosted-4-client-dedicated-live-server2.livegpstrack.com
 (hosted-4-client-dedicated-live-server2.livegpstrack.com [103.102.239.60])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FB29410A4
 for <devel@linuxdriverproject.org>; Wed,  2 Nov 2022 04:11:00 +0000 (UTC)
From: =?ISO-8859-1?B?UGFibG8gQ1RH?=<salesctg@cartrackgps.net>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?R1BTIHRyYWNraW5nIGJ1c2luZXNzIGZvciBkZXZlbA==?=
Date: 02 Nov 2022 01:11:27 -0300
Message-ID: <20221102011127.3AECF2564EAACBBF@cartrackgps.net>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1665719670.livegpstrack; d=cartrackgps.net; 
 b=S5K3Gf6LIHx/ruYCj5vXt3BmcXS8LFJc+3POw+p9KUk8cLqEyjA6YcPNhYohD6Vb/uVy7JLfaYOK
 Xzbcmarte9WvI2C+bvykrYLHO/s5YDaBOcq/bwlz/Oaw21lUrvSamI+KRFheEAiv4TUSoSwJvbzJ
 tWXGnoQcybmRgBwHDCs=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1665719670.livegpstrack; d=cartrackgps.net; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=salesctg@cartrackgps.net; 
 bh=sN/TIi6hdKQAP4JLrG1K40C0hV8=;
 b=anBzIs2+pvHXrgSsuTOzXUDUFTgbjkkrDR/YudHsc1AnjnQsDFiT0FOcEZBTzGRUZna0buOtJFTt
 cpK2seV+dzS9OOHEZws1151bfDFVUX9u4XfKs4rtmDpYnwkHAXo23+W5cufH2dYJ6J8443wbb6Bw
 Ch2kBDWf3MOzW7LDG3A=
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
Reply-To: =?ISO-8859-1?B?UGFibG8gQ1RH?= <salesctg@cartrackgps.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello devel,

My name is Pablo from Car Track GPS and we're looking for distributors for our tracking products.
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
Car Track GPS in Google for our official .com website

We have clients in over 100 countries and 20 years of experience in GPS tracking systems.
ID: 693289

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
