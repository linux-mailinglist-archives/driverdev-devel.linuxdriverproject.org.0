Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964C35F2345
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Oct 2022 15:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B91A4018F;
	Sun,  2 Oct 2022 13:05:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B91A4018F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MCUewjmI8ZVf; Sun,  2 Oct 2022 13:05:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15906403A5;
	Sun,  2 Oct 2022 13:05:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15906403A5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 649EA1BF344
 for <devel@linuxdriverproject.org>; Sun,  2 Oct 2022 13:05:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F6AB82894
 for <devel@linuxdriverproject.org>; Sun,  2 Oct 2022 13:05:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F6AB82894
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VvhH0TB06JVs for <devel@linuxdriverproject.org>;
 Sun,  2 Oct 2022 13:05:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C58A82865
Received: from hosted-4-client-dedicated-live-server2.livegpstrack.com
 (hosted-4-client-dedicated-live-server2.livegpstrack.com [103.102.239.60])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C58A82865
 for <devel@linuxdriverproject.org>; Sun,  2 Oct 2022 13:05:51 +0000 (UTC)
From: =?ISO-8859-1?B?UGFibG8=?=<info@livegpstrack.com>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?RGlzdHJpYnV0b3JzaGlwIGZvciBkZXZlbA==?=
Date: 02 Oct 2022 10:05:45 -0300
Message-ID: <20221002100545.215852C0545950DF@livegpstrack.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1661974160.livegpstrack; d=livegpstrack.com; 
 b=mFcatF4uBAOhyz3D4MpQpVu1A8P46umn304G6RWEqU+u/9kNgl5k1/6n2hwcVU1GW79DgdwI2cIP
 qVyJCegQUsvxT+F9f1SCxhiXGw8ctTRYFNUAfrzTygZTMp4XMBPwZ4RecZohryLoxdoBQyJErjYa
 sQ9psMc+oB3xMxccmCk=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1661974160.livegpstrack; d=livegpstrack.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=info@livegpstrack.com; 
 bh=b7kw5l/4WPtri+zBwEfHrT0vpsk=;
 b=yLAvR/SqZTAitXSwybrs8BXhZa5V5diuJCoI1xNAjaz9qVQzuwQ0loqnU8mpbvUmjNwq3/wz4Al2
 SMV8L4ECZhFA8nt/NuRYdiyptGFFjoR+y+T3D4aj0SsJIoVThGHYGngxBKMrwEt5u+T7AdjWVjtE
 Ybbn6YLP++CwJmIbijM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=livegpstrack.com
 header.i=info@livegpstrack.com header.a=rsa-sha1
 header.s=1661974160.livegpstrack header.b=yLAvR/Sq
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
ID: 215156

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
