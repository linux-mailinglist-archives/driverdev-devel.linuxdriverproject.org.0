Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AF26D5D65
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Apr 2023 12:23:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00AF160ADE;
	Tue,  4 Apr 2023 10:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00AF160ADE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U_RDb3vE00pC; Tue,  4 Apr 2023 10:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E04E760A6A;
	Tue,  4 Apr 2023 10:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E04E760A6A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 642961BF2A6
 for <devel@linuxdriverproject.org>; Tue,  4 Apr 2023 10:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C90E60ADE
 for <devel@linuxdriverproject.org>; Tue,  4 Apr 2023 10:23:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C90E60ADE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FdZQE8eFPOf4 for <devel@linuxdriverproject.org>;
 Tue,  4 Apr 2023 10:23:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67FEE60A6A
Received: from hosted-4-client-dedicated-live-server.livegpstrack.com
 (hosted-4-client-dedicated-live-server.livegpstrack.com [103.102.239.59])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67FEE60A6A
 for <devel@linuxdriverproject.org>; Tue,  4 Apr 2023 10:23:35 +0000 (UTC)
From: =?ISO-8859-1?B?TGl2ZSBHUFM=?=<noreply@livegpstrack.com>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?TG9va2luZyBmb3IgRGlzdHJpYnV0b3I=?=
Date: 04 Apr 2023 07:23:36 -0300
Message-ID: <20230404072335.D879E8BEDB647570@livegpstrack.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 b=dVn13Hpm5sOEPmivpDD73wiKNLPk7cFVLK25b4Cv0W7fkdBE2L9I+av007n9DfI57CeS//8YjME+
 Bg9lpEt0OQG4rwL5IDjMq3BoAc/kUEHrZNmD++3px4DBxcJ+cEsbZRqN07mu71uqrrgiCaT5l+zi
 L9UbqcZhE+cS0XlCAQ4=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=noreply@livegpstrack.com; 
 bh=M5lX3Ie8iQLORCfUsos7Ej9/FhY=;
 b=PmXMqFglezWDQ007UvzWs+A8mahxZ2yS6/5X9e0wH+JFX+PyF5/Fp2v5Yblx6/5y65Y9K4m7f+M1
 o2vcAMRD87/ZIZfwOorhWQ6cIgLbnYT3mIiV4bXVhiYF5jyKSbviFyX5fn9rv/gsmSZrJPN60gBL
 shUrK1e9CDP4uMx4fDs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=livegpstrack.com
 header.i=noreply@livegpstrack.com header.a=rsa-sha1
 header.s=1665719670.livegpstrack header.b=PmXMqFgl
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
Reply-To: =?ISO-8859-1?B?Q2FyVHJhY2sgR1BT?= <salesctg@cartrackgps.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Looking for distributors

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
Paul Novak
Car Track GPS
Miami: +1 786 352 8766
cartrack gps .com

We have clients in over 100 countries and 20 years of experience in GPS tracking systems.
ID: 869294

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
